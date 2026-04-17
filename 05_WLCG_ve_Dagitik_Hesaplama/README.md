<div align="center">

# 🌍 WLCG: Küresel Dağıtık Hesaplama Ağı (Grid Computing)

</div>

Parçacık çarpışmaları sonucu yılda üretilen analiz edilebilir net veri miktarı **yaklaşık 100 PetaBayt'ı (PB)** bulur. CERN, elinde dünyanın ne kadar süperbilgisayarı olursa olsun, bu veriyi "tek bir merkezde" saklayıp analiz edecek güce sahip değildir. Bunun yerine veriyi parçalara ayırarak ve dünyanın dört bir yanındaki üniversitelerin, veri merkezlerinin işlem gücünden ortaklaşa pay (grid architecture) alarak koca bir gezegen bilgisayarı inşa edilmiştir.

Bu projeye **Worldwide LHC Computing Grid (WLCG)** adı verilir.

## 🏛️ WLCG Hiyerarşik Dağıtım Modeli (Tier Sistemi)

Verinin üretimi, saklanması ve paylaşılması tıpkı bir ağacın dallanması gibi çok sistematik olarak kurgulanmıştır:

### Yüzyılın Kalbi: Tier-0 (CERN, Meyrin ve Budapeşte, Wigner RCP)
*   Dedektörlerden çıkıp High Level Trigger'ı atlatan ilk raw (ham) veri doğrudan **Tier-0**'a gelir.
*   Görevleri: Ham veriyi manyetik teyplere (tape) yazarak ilk "sonsuz" güvenliği sağlamak (Kalıcı yedek - Cold Storage).
*   Tier-0 verinin ön rekonstrüksiyon sürecini (ön işlemesini) yapar ve tüm verinin %20'lik donanım yükünü üstlenir. İşi biten paketler fiber optik omurgalar üzerinden "Tier-1" merkezlerine dağıtılır.

### Bölge Merkezleri: Tier-1 (Dünya Çapında ~14 Merkez)
*   Fermilab (A.B.D), INFN (İtalya), KIT (Almanya) gibi dev merkezler.
*   Kendi bölgelerinden sorumludurlar. Tier-0'ın kalıcı yedeklerinden pay alarak veriyi ikinci kez emniyet altına alırlar (Redundancy). 
*   Analiz algoritmalarının koşulabileceği özel büyük hesaplamaları (re-processing) yürütürler.

### Analiz Kovanları: Tier-2 (160+ Üniversite Modülü)
*   Genellikle sadece "disk" ve CPU gücüne sahiptirler, manyetik kaset gibi ağır yedekleme (tape storage) yapmazlar.
*   Dünyanın dört bir yanındaki fizikçiler algoritmalarını hazırlayıp doğrudan Tier-2 havuzuna analiz (job) emri gönderir. Veri nerede yatıyorsa (Avustralya'da veya İngiltere'de), algoritma kodları oraya uçar ve veri lokal olarak analiz edildikten sonra sonuç (örneğin ufak bir histrolojik grafik) bilim insanının bilgisayarına geri döner.

## 🛠️ Temel Bilgisayar Mühendisliği Çözümleri

*   **FTS (File Transfer Service):** İki devasa veri merkezi (örneğin CERN'den Fermilab'a) arasındaki optik aktarımları planlayan, ağı çöktürmeden (bottleneck) PB seviyesinde data rotası kuran yazılım aracıdır.
*   **HTCondor & SLURM:** Milyonlarca "Job"u (görevi) sunucular üzerindeki CPU thread'lerine adaletli (fair-share) bir şekilde tahsis eden muazzam görev zamanlama (Scheduler) mimarileri.
*   **EOS:** CERN tarafından geliştirilen açık kaynaklı PetaBayt ölçekli disk/storage yazılım projesi. Binlerce diski tek bir mantıksal (logical) klasör yapısı gibi okutur.

> **Mühendislik Perspektifi:** Bulut mimarileri (AWS, Azure) kavramı henüz ortada yokken, devasa verilerin fiber hatlarla kıtalararası dağıtılması ve milyonlarca çekirdeğin (CPU core) ahenkle çalıştırılmasının temel metodolojisini WLCG mühendisleri inşa etmiştir.

## 🔭 Gelecek Perspektifi: Kuantum Grid ve Hibrit Bulut
HL-LHC ile beklenen veri patlaması, klasik silikon tabanlı işlemcilerin limitlerini zorlammaktadır. Gelecek nesil WLCG, **Kuantum Hesaplama (Quantum Computing)** ünitelerini grid sistemine entegre ederek, karmaşık parçacık rekonstrüksiyonlarını kuantum hızlandırıcılarda yapmayı hedeflemektedir. Veri merkezleri artık sadece depolama alanları değil, "AI-Ready" akıllı analiz düğümlerine dönüşecektir.
