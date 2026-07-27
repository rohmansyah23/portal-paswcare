<?php

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('My_model'); // Load My_model in constructor
    }
	
    public function index()
    {
        if ($this->session->userdata('email')) {
            redirect('admin');
        }

        $this->form_validation->set_rules('email', 'Alamat Email', 'required|trim|valid_email', [
            'required' => 'Email harus diisi!!',
            'valid_email' => 'Format email tidak valid!!'
        ]);
        $this->form_validation->set_rules('password', 'Password', 'required|trim', [
            'required' => 'Password harus diisi!!'
        ]);

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login';
            $this->load->view('auth/templates/header', $data);
            $this->load->view('auth/login');
            $this->load->view('auth/templates/footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
{
    $email = htmlspecialchars($this->input->post('email', true));
    $password = $this->input->post('password', true);

    $user = $this->My_model->cekData(['email' => $email])->row_array();

    if ($user) {
        if ($user['is_active'] == 1) {
            if (password_verify($password, $user['password'])) {

                $data = [
                    'email' => $user['email'],
                    'role_id' => $user['role_id']
                ];
                $this->session->set_userdata($data);

                if ($user['role_id'] == 1) {
                    redirect('admin'); 

                } elseif ($user['role_id'] == 2) {
                    $this->session->set_flashdata('login_member', 'Selamat!, anda berhasil login');
                    redirect('home'); 

                } elseif ($user['role_id'] == 3) {
                    redirect('dokter');

                } else {
                    redirect('auth');
                }

            } else {
                $this->session->set_flashdata('pesan', 'Password Salah!!');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-message" role="alert">User belum diaktifasi!!</div>');
            redirect('auth');
        }
    } else {
        $this->session->set_flashdata('pesan', 'Email Tidak Terdaftar');
        redirect('auth');
    }
}



    public function registrasi()
    {
        // Redirect if user is already logged in
        if ($this->session->userdata('email')) {
            redirect('user');
        }

        // Validation rules for registration form
        $this->form_validation->set_rules('nama', 'Nama Lengkap', 'required', [
            'required' => 'Nama lengkap harus diisi!!'
        ]);
        $this->form_validation->set_rules('email', 'Alamat Email', 'required|trim|valid_email|is_unique[user.email]', [
            'required' => 'Email harus diisi!!',
            'valid_email' => 'Format email tidak valid!!',
            'is_unique' => 'Email sudah terdaftar!!'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'required' => 'Password harus diisi!!',
            'min_length' => 'Password minimal 6 karakter!!',
            'matches' => 'Password tidak cocok!!'
        ]);
        $this->form_validation->set_rules('password2', 'Ulangi Password', 'required|trim|matches[password1]');

        // Run form validation
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Registrasi';
            $this->load->view('auth/templates/header', $data);
            $this->load->view('auth/registrasi');
            $this->load->view('auth/templates/footer');
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'alamat' => htmlspecialchars($this->input->post('alamat', true)),
                'image' => 'default.jpg',
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'role_id' => 2,
                'is_active' => 1,
                'tanggal_input' => time()
            ];

            $this->My_model->simpanData($data); 
            $this->session->set_flashdata('pesan', 'Pendaftaran Berhasil, Silahkan Login Untuk mengakses fitur yang ada');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('pesan', 'Anda telah Logout');
        redirect('auth');
    }

    public function logout_member()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('pesanlogout', 'Anda telah Logout.');
        redirect('home');
    }

    public function blok()
    {
        $this->load->view('auth/blok');
    }

    public function gagal()
    {
        $this->load->view('auth/gagal');
    }

    public function myProfil()
    {

        $user = $this->ModelUser->cekData(['email' => $this->session->userdata('email')])->row_array();
        foreach ($user as $a) {
            $data = [
                'image' => $user['image'],
                'user' => $user['nama'],
                'email' => $user['email'],
                'tanggal_input' => $user['tanggal_input'],
                'alamat' => $user['alamat'],
                'judul' => 'Profile Saya'
            ];
        }
        $this->load->view('template/header', $data);
        $this->load->view('member/index', $data);
        $this->load->view('template/modal');
        $this->load->view('template/footer', $data);
    }

    
}

?>
