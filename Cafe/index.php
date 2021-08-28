<?php
$sayfa = 'Ana Sayfa';
include('inc/vt.php');
include('inc/head.php');
include('inc/nav.php');

$sorgu = $baglanti->prepare("SELECT * FROM anasayfa");
$sorgu->execute();
$sonuc = $sorgu->fetch();//sorgu çalıştırılıp veriler alınıyor

?>

    <section class="page-section clearfix">
        <div class="container">
            <div class="intro">
                <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/<?= $sonuc['foto'] ?>" alt="">
                <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                    <h2 class="section-heading mb-4">

                        <span class="section-heading-lower"><?= $sonuc['ustBaslik'] ?></span>
                    </h2>
                    <p class="mb-3">
                        <?= $sonuc['ustIcerik'] ?>
                    </p>
                    <div class="intro-button mx-auto">
                        <a class="btn btn-primary btn-xl" href="https://onedio.com/haber/bildigimiz-kliselerden-uzakligiyla-okudugunuza-degecek-17-kisisel-gelisim-kitabi-732503"><?= $sonuc['link'] ?></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <br> 
<div class="container">
       <div class="resim-alan">
       <img src="img/111.jpeg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
                 <img src="img/222.jpeg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
                  <img src="img/333.jpeg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
                    <img src="img/444.jpeg" width="240" height="300"  >    &nbsp;    &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
      <br> 
         <img src="img/555.jpeg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
              <img src="img/666.jpeg" width="240" height="300" >    &nbsp;     &nbsp;  &nbsp; &nbsp;
               <img src="img/777.jpeg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
                <img src="img/888.jpg" width="240" height="300"  >     &nbsp;    &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                 <br> 
       <img src="img/999.jpg" width="240" height="300" >    &nbsp;    &nbsp;  &nbsp; &nbsp;
                  <img src="img/1111.jpg" width="240" height="300" >      &nbsp;    &nbsp;  &nbsp; &nbsp;
                   <img src="img/11111.jpg" width="240" height="300" >     &nbsp;    &nbsp;  &nbsp; &nbsp;
                   <img src="img/op.jpg" width="240" height="300" >     &nbsp;    &nbsp;  &nbsp; &nbsp;
             

       </div>
</div>

<span style="background-color: #F8F8FF;"></span>

    <section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4">

                            <span class="section-heading-lower"><?= $sonuc['altBaslik'] ?></span>
                        </h2>
                        <?= $sonuc['altIcerik'] ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

<?php
include('inc/footer.php');
?>