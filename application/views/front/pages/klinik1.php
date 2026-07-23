<!--================ Home Banner Area =================-->

<div class="carousel-inner">
   <?php $no = 0;?>
   <?php foreach($featured as $f) : ?>
      <?php $no++;  ?>
      <div class="carousel-item <?php if($no <= 1) { echo "active"; } ?> ">
         <div class="row align-items-center my-5">
            <div class="col-lg-4">
               <div class="container">
                  <div class="date text-center">
                     <a href=""><i class="fa fa-calendar" aria-hidden="true"></i><?php echo date(' D - M / Y'); ?></a>
                  </div>
                  <h1 class="font-weight-light"><b>Rebban Praktek Dokter Hewan dan Petshop</b></h1><br/>
                  <b>Contact Info</b>
                  <p>(+62) 81241061434<p/>
                     <b>Alamat</b>
                     <p>Komplek, Ruko Grand Galaxy City, Jl. Pulo Sirih Bar. Raya Blk. N No.003, RT.001/RW.020, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17147</p>
                     <div class="col text-center">
                        <a href="klinik" class="genric-btn danger circle arrow"><br><span class="fa fa-2x fa-arrow-circle-left"></span></a>
                        <a href="https://www.google.com/maps/dir//Komplek,+Ruko+Grand+Galaxy+City,+Jl.+Pulo+Sirih+Bar.+Raya+No.003+Blok+N,+RT.001%2FRW.020,+Jaka+Setia,+Kec.+Bekasi+Sel.,+Kota+Bks,+Jawa+Barat+17147/@-6.2651958,106.8885654,12z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x2e698da5369c9b0b:0x77c6c69af18fa3c5!2m2!1d106.9709673!2d-6.2652022?entry=ttu" class="genric-btn danger circle arrow">Rute<span class="fa fa-2x fa-car"></span></a>
                     </div>
                  </div>
               </div>

               <div class="col-lg-8">
                  <hr>
                  <div id="map" class="" style="width:100%;height:400px"></div>
                  <script>
                     function myMap() {
                        var mapCanvas = document.getElementById("map");
                        var myCenter = new google.maps.LatLng(-6.265187538000334, 106.97096629717299);
                        var mapOptions = {center: myCenter, zoom: 19};
                        var map = new google.maps.Map(mapCanvas,mapOptions);
                        var marker = new google.maps.Marker({
                           position: myCenter,
                           animation: google.maps.Animation.BOUNCE
                        });
                        marker.setMap(map);
                     }
                  </script>
                  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXyK9sf3rI0EKVupuALaOAzq1NKlUES98&callback=myMap"></script>
               </div>

            </div>
         <?php endforeach ?>
      </div>


      <!--================ End Home Banner Area =================-->

