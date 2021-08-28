<?php
$sayfa = 'Magaza';
include('inc/vt.php');
include('inc/head.php');
include('inc/nav.php');



$sorgu1 = $baglanti->prepare("SELECT * FROM magaza");
$sorgu1->execute();
$sonuc1 = $sorgu1->fetch();//sorgu çalıştırılıp veriler alınıyor

?>


    <br>
    <br>
    <br>
  
    <section class="page-section about-heading">
        <div class="container">
  
            <div class="about-heading-content">
            
                <div class="row">
               
                    <div class="col-xl-9 col-lg-10 mx-auto">
                        <div class="bg-faded rounded p-5">
                            
                            <h2 class="section-heading mb-4">
                         
                                <span class="section-heading-upper"> </a></span>
                             </h2>
                             <a "http://yemeksiparis.gq/"target="_blank"target="_blank">



</a>  
                            <br>
<div class="container">
       <div class="resim-alan">
              <img src="img/resim1.jpg" width="450" height="400" />      <strong>Tasarım Su Şisesi </strong> <a href="http://yemeksiparis.gq/product-details.php?pid=22"target="_blank">Sipariş Ver </a>

 <br> 
                <img src="img/22.jpg" width="450" height="400" />     <strong>Seyehat Termosu(Siyah)  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=23"target="_blank">Sipariş Ver </a>

                 <br> 
                <img src="img/33.jpg" width="450" height="400" />      <strong>Seyehat Termosu(Beyaz)  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=24"target="_blank">Sipariş Ver </a>

                 <br> 
                <img src="img/44.jpg" width="450" height="400" />      <strong>Kupa  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=25"target="_blank">Sipariş Ver </a>

                 <br> 
                <img src="img/55.jpg" width="450" height="400" />    <strong>Kaleidoscope Çıkartması  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=26"target="_blank">Sipariş Ver </a>

                 <br> 
                <img src="img/66.jpg" width="450" height="400" />      <strong>Fasulye Kahve  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=27"target="_blank">Sipariş Ver </a>

                  <br> 
                <img src="img/77.jpg" width="450" height="400" />    <strong>Old World Oyuncak </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=28"target="_blank">Sipariş Ver </a>

                   <br> 
                <img src="img/88.jpg" width="450" height="400" />      <strong>Takım  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=29"target="_blank">Sipariş Ver </a>

                   <br> 
                <img src="img/99.png" width="450" height="400" />      <strong>Kupa  </strong>  <a href="http://yemeksiparis.gq/product-details.php?pid=30"target="_blank">Sipariş Ver </a>


       </div>
</div>
     <br>    
         
                     




                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>




<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <h2 class="section-heading mb-5">
                        <span class="section-heading-upper"><?= $sonuc1['ustBaslik'] ?></span>
                        <span class="section-heading-lower"><?= $sonuc1['anaBaslik'] ?></span>
                    </h2>
                    <ul class="list-unstyled list-hours mb-5 text-left mx-auto">
                        <?php
                        $sorgu2 = $baglanti->prepare("SELECT * FROM magazasaat");
                        $sorgu2->execute();
                        while ($sonuc2 = $sorgu2->fetch()) {
                            ?>

                            <li class="list-unstyled-item list-hours-item d-flex">
                                <?= $sonuc2['gun'] ?>
                                <span class="ml-auto"><?= $sonuc2['saat'] ?></span>
                            </li>
                            <?php
                        } //while sonu
                        ?>

                    </ul>
                    <p class="address mb-5">
                        <?= $sonuc1['adres'] ?>
                    </p>
                    <p class="mb-0">
                        <small>
                            <em>Call Anytime</em>
                        </small>
                        <br>
                        <?= $sonuc1['telefon'] ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>





<?php
include('inc/footer.php');
?>
