<div align="center">

# 📊 Veri Toplama (DAQ) ve Trigger (Tetikleyici) Sistemleri

</div>

ATLAS veya CMS gibi devasa bir LHC dedektörünün merkezinde, proton kümeleri saniyede **40 milyon kez (40 MHz)** birbiri içinden geçer. Her bir geçişte çok sayıda proton çarpışır ve her olayın (event) oluşturduğu veri hacmi ham halde saniyede PetaBaytları bulur. Bu kadar büyük bir veriyi optik kablolarla bile taşımak veya depolamak insanlık için imkansızdır.

CERN'in DAQ mimarisi verinin %99.99'unu "çöpe atma" ve sadece "enteresan" fiziğe sahip milyonda birliği saklama (Triggering) üzerine inşa edilmiştir.

## ⚡ Trigger Sistemleri: Bilgi Ayıklama Mimarisi

İki ya da üç kademeli (Level) sistemler çalışır:

### 1. Level-1 (L1) Trigger (Sıfırıncı ve Birinci Hat)
*   **Saf Donanım (ASIC & Custom FPGA):** Veriler daha dedektörün içindeyken (1-2 mikro saniye içinde) kaba enerji seviyelerine bakılarak filtrelenir.
*   **Mühendislik:** Çipler, radyasyona aşırı dayanıklı (Rad-Hard) üretilmiş olmak zorundadır. Yalnızca kalorimetrelerden gelen kaba enerji izlerine ve müon sinyallerine bakar. Eğer event sıradansa veri donanım seviyesinde anında yok edilir. 40 MHz'yi anında **100 kHz** civarına düşürür.

### 2. High Level Trigger (HLT)
*   L1'den başarıyla geçen (100,000 olay/saniye) paketler, yer altından çıkarılıp bildiğimiz CPU / GPU çiftliklerine (binlerce endüstriyel sunucuya) gönderilir.
*   **Ağ Yapısı:** Event Building ağı denilen sistemle farklı alt dedektörlerden okunan veriler toplanır. Özel ağ switchleri kullanılır (Terabit network).
*   **Yazılımsal Ayıklama:** Burada C++ ve Python tabanlı derin makine öğrenimi algoritmaları, parçacıkların kısa bir haritasını çıkarır (Track finding). "Bu olay gerçekten Higgs mi veya Dark Matter mı?" analizi saniyenin küçük bir kısmı kadar sürede yapılır.
*   **Sonuç:** Veri hızı depolamaya uygun olan **1 kHz (Saniyede 1000 olay, ~1-2 GB/s)** hızına düşer. Sadece bu kadarı WLCG'ye aktarılır.

## 🤖 Edge-AI (Sınır Bilişimde Yapay Zeka)

Son yıllarda FPGA ve dedektör çiplerini AI mimarilerine entegre eden projeler (örn. **hls4ml** - Machine Learning on FPGAs via High-Level Synthesis) CERN donanım mühendisliğinin uç noktasını temsil ediyor.

> **Mühendislik Perspektifi:** Bu altyapı telekomünikasyonun, donanım tasarımının (VHDL/Verilog), Ultra-Low Latency sistemlerin ve Real-time İşletim Sistemlerinin en rafine haline bir örnektir. Wall-Street'teki Yüksek Frekanslı Ticaret (HFT) donanımlarından bile daha hızlı bir pipeline'dır.

## 🔭 Gelecek Perspektifi: Saniyede Exabyte Seviyesi
HL-LHC ile birlikte veri hızları mevcut seviyenin 10 katına çıkacaktır. Bu durum, tetikleme (trigger) sistemlerinde CPU ve GPU'ların hibrid olarak çalıştığı, verinin doğrudan dedektör seviyesinde AI algoritmalarıyla elendiği "Heterojen Hesaplama" mimarilerini zorunlu kılmaktadır. WLCG Grid sistemi ise bu devasa yükü yönetmek için "Cloud-Native" yapılara ve Exabyte seviyesindeki akıllı depolama çözümlerine evrilecektir.
