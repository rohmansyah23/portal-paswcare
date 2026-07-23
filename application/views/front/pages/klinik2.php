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
                  <h1 class="font-weight-light"><b>Klinik Hewan Drh. Husnul Hamdi</b></h1><br/>
                  <b>Contact Info</b>
                  <p>(+62) 81241061434<p/>
                     <b>Alamat</b>
                     <p>Jl. H. Naman No.10, RT.13/RW.3, Pd. Klp., Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450</p>
                     <div class="col text-center">
                        <a href="klinik" class="genric-btn danger circle arrow"><br><span class="fa fa-2x fa-arrow-circle-left"></span></a>
                        <a href="https://www.google.com/maps?gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIKCAEQABiABBiiBDIKCAIQABiABBiiBDIKCAMQABiABBiiBDIKCAQQABiABBiiBDIGCAUQRRg80gEIMTIwMGowajSoAgCwAgE&um=1&ie=UTF-8&fb=1&gl=id&sa=X&geocode=Kcemqe_ljGkuMXwChlXdTNoW&daddr=Jl.+H.+Naman+No.10,+RT.13/RW.3,+Pd.+Klp.,+Kec.+Duren+Sawit,+Kota+Jakarta+Timur,+Daerah+Khusus+Ibukota+Jakarta+13450" class="genric-btn danger circle arrow">Rute<span class="fa fa-2x fa-car"></span></a>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  <hr>
                  <div id="map" class="" style="width:100%;height:400px"></div>
                  <script>
                     function myMap() {
                        var mapCanvas = document.getElementById("map");
                        var myCenter = new google.maps.LatLng(-6.244919092992896, 106.9426766883422);
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
         </div>
      <?php endforeach ?>
   </div>


   <!--================ End Home Banner Area =================-->

