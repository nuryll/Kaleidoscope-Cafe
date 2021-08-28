<?php
$sayfa = 'Etkinlik';
include('inc/vt.php');
include('inc/head.php');
include('inc/nav.php');
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
                                <span class="section-heading-upper">Yaklaşan Etkinlikler</span>
                            </h2>

                           <?php
$aylar = Array("Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık");
if (!isset($_REQUEST["ay"])) $_REQUEST["ay"] = date("n");
 if (!isset($_REQUEST["yil"])) $_REQUEST["yil"] = date("Y");
 $ay = $_REQUEST["ay"];
 $yil = $_REQUEST["yil"];
 $onceki_yil = $yil;
 $sonraki_yil = $yil;
 $onceki_ay = $ay-1;
 $sonraki_ay = $ay+1;
 if ($onceki_ay == 0 ) {
 $onceki_ay = 12;
 $onceki_yil = $yil - 1;
 }
 if ($sonraki_ay == 13 ) {
 $sonraki_ay = 1;
 $sonraki_yil = $yil + 1;
 }
?>
<table width="200">
 <tr>
 <td align="center">
 <table width="100%" border="0" cellpadding="2" cellspacing="2">
 <tr align="center">
 <td colspan="7" bgcolor="#999999">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="20%" align="left">&nbsp;&nbsp;<a href="<?php echo $_SERVER["PHP_SELF"] . "?ay=". $onceki_ay . "&yil=" . $onceki_yil; ?>" style="color:#FFFFFF"><<</a></a></a></td>
 <td align="center" style="color:#FFFFFF"><strong><?php echo $aylar[$ay-1].' '.$yil; ?></strong></td>
 <td width="20%" align="right"><a href="<?php echo $_SERVER["PHP_SELF"] . "?ay=". $sonraki_ay . "&yil=" . $sonraki_yil; ?>" style="color:#FFFFFF">>></a>&nbsp;&nbsp;</td>
 </tr>
 </table>
 </td>
 </tr>
 <tr>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Pa</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Pt</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Sa</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Ça</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Pe</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Cu</strong></td>
 <td align="center" bgcolor="#999999" style="color:#FFFFFF"><strong>Ct</strong></td>
 </tr>
<?php
 $zaman = mktime(0,0,0,$ay,1,$yil);
 $maxgun    = date("t",$zaman);
 $buay = getdate ($zaman);
 $ilkgun  = $buay['wday'];
 
for ($i=0; $i<($maxgun+$ilkgun); $i++) {
 if(($i % 7) == 0 ) echo "<tr>\n";
 if($i < $ilkgun) echo "<td style=\"color:#FFFFFF\"></td>\n";
 else echo "<td align='center' valign='middle' height='20px' style=\"color:#000\">". ($i - $ilkgun + 1) . "</td>\n";
 if(($i % 7) == 6 ) echo "</tr>\n";
 }
?>
</table>
 </td>
 </tr>
 </table>

Kaleidoscope'ta bir etkinliğe ev sahipliği yapmak istiyorsanız, lütfen uygun tarihler için takvimi kontrol edin ve ilgilendiğiniz etkinlik türü hakkında kaleidoscope@gmail.com adresine e-posta gönderin!




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
                        <h2 class="section-heading mb-4">

                          Doğum Günleri
                
                        </h2>
                     <div class="container">
       <div class="resim-alan">
              <img src="img/eee.jpg" width="360" height="240" />
       </div>
</div>
                     Kaleidoscope Cafe, doğum gününü sevdikleriyle, keyifli bir ortamda kutlamak isteyen misafirlerinin de yanında. Farklı menü alternatifleriyle tamamen sizin tercihlerinize uygun bir kutlama için tek yapmanız gereken aklınızdan geçeni bizimle paylaşmak.
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
                        <h2 class="section-heading mb-4">

                         Çocuk Doğum Günleri
                
                        </h2>
                     <div class="container">
       <div class="resim-alan">
              <img src="img/bbb.jpg" width="360" height="240" />
       </div>
</div>
                    Çocuk doğum günlerini organize etmek her zaman daha zordur. Anne-babalar herşeyin mükemmel geçmesi için o kadar çok uğraşırlar ki nasıl geçtiğini anlayamadan gün biter. Kaleidoscope Cafe, anne-babaların bu özel günleri doyasıya kutlayabilmeleri için detaylarla uğraşma görevini üzerine alıyor. Farklı büyüklükteki gruplar ve değişik menü alternatifleri için istediğiniz şubemizin adresine e-posta gönderebilirsiniz.
                </div>
            </div>
        </div>
    </section>

  <section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4">

                         Düğün
                
                        </h2>
                     <div class="container">
       <div class="resim-alan">
              <img src="img/ccc.jpg" width="360" height="240" />
       </div>
</div>
                   Zemini gemi güvertesini andıran, etrafı yeşilliklerle çevrili muhteşem saklı bir bahçe içerisinde muhteşem bir görsel şölen eşliğinde evlenmek ister misiniz? Cevabınız evet ise o zaman Kaleidoscope Cafe’yi görmenizi öneririz. Kaleidoscope Cafe, geçtiğimiz senelerde gerçekleştirdiği başarılı organizasyonlarda adını bir hayli duyurur oldu. Mekanımızda 150 kişiye kadar yemekli 400 kişiye kadar kokteyl yada kokteyl prolonje gerçekleştirme imkanımız var. Akşamüstü güneşin son ışıklarıyla bahçede hoş bir atmosferde başlayan düğününüz gecenin ilerleyen saatlerinde yerini muhteşem yemeklere ve bir partiye bırakabilir. Etrafınızda yanan meşaleler, loş ışıklarla ışıklandırılmış ağaçlar ve harika bir atmosferde, makul fiyatlarla, , nişanlanmak istiyorsanız, hiç düşünmeden Kaleidoscope Cafe’yi hemen arayın!
                </div>
            </div>
        </div>
    </section>

<section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4">

                        Toplantı
                
                        </h2>
                     <div class="container">
       <div class="resim-alan">
              <img src="img/ddd.jpg" width="360" height="240" />
       </div>
</div>
                   Şirket toplantılarınız için Kaleidoscope Cafe Etiler hazır. Günün dilediğiniz saatinde farklı ikram seçenekleriyle sunumlarınızı etkileyici bir biçimde yapabilir, toplantılarınızı istediğiniz şubemizde organize edip, verimli bir biçimde geçirebilirsiniz.
                </div>
            </div>
        </div>
    </section>

    <section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4">

                        Özel Günler
                
                        </h2>
                     <div class="container">
       <div class="resim-alan">
              <img src="img/fff.jpg" width="360" height="240" />
       </div>
</div>
                  Kaleidoscope Cafe’de, Sevgililer Günü, Anneler Günü ve Babalar Günü gibi herkes için özel olan günlerin yanı sıra sizin için özel olan günlerde de yanınızda. Belki çok sevdiğiniz bir arkadaşınızla eşsiz güzellikte bir manzara eşliğinde küçük bir kutlama, belkide ilk randevunuzda da Kaleidoscope Cafe’de buluştuğunuz kız arkadaşınıza evlilik teklifi… Sizin için özel olan her gün bizim içinde özeldir. Çünkü; “Biz Sizinle Mutluyuz!”.
                </div>
            </div>
        </div>
    </section>


<?php


include('inc/footer.php');
?>