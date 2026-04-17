<div align="center">

# 🌌 Karanlık Madde Araştırmaları ve Mühendisliği

</div>

Evrenin yaklaşık %27'sini oluşturan ancak ışıkla etkileşime girmediği için doğrudan görülemeyen **Karanlık Madde**, CERN'ün en temel araştırma konularından biridir. Görünmeyen bir maddeyi bulmak için CERN mühendisleri "görünen" her şeyi ölçüp, aradaki farkı analiz eden devasa sistemler geliştirmiştir.

## 🕵️ Görünmeyeni Bulma Stratejisi

CERN, karanlık madde arayışını üç ana mühendislik ve fizik stratejisi üzerine kurar:

### 1. "Make It" (LHC - Çarpıştırıcı Deneyleri)
**Strateji:** İki yüksek enerjili proton çarpıştığında, enerjinin bir kısmının karanlık madde parçacıklarına dönüştüğü varsayılır. 
*   **Missing Transverse Momentum (Kayıp Transvers Momentum):** Karanlık madde parçacıkları dedektörün içinden hiç iz bırakmadan geçer. Ancak mühendisler, çarpışmadan çıkan tüm görünür parçacıkların momentumlarını topladıklarında, eğer **toplam momentum sıfır değilse**, aradaki farkın (kayıp enerjinin) görünmeyen bir karanlık madde parçacığı tarafından götürüldüğü anlaşılır.
*   **Hermetik Dedektör Tasarımı:** ATLAS ve CMS dedektörleri, hüzme hattı hariç tüm alanı (4π steradyan) kaplayacak şekilde inşa edilmiştir. Bir sızıntı (leak) olmaması, "kayıp enerji" hesabının doğruluğu için kritiktir.

### 2. "Break It" (Fixed-Target - NA64 Deneyi)
**Strateji:** Yüksek enerjili bir elektron veya müon demetini sabit bir hedefe çarptırarak, karanlık sektör parçacıklarının (karanlık fotonlar gibi) izlerini sürmek.
*   **NA64:** Bu deneyde, elektron demetinin hedefe çarpmadan önceki enerjisi ile çarptıktan sonra kalorimetrelerde ölçülen toplam enerjisi karşılaştırılır. Eğer büyük bir enerji açığı varsa, bu "Karanlık Sektör"ün bir kanıtıdır.

### 3. "Shake It" (Güneş Gözlemi - CAST Deneyi)
**Strateji:** Güneş'in merkezinden gelen olası karanlık madde adayları olan **Aksiyonları (Axions)** yakalamak.
*   **CAST (CERN Axion Solar Telescope):** Bir süperiletken mıknatıs (LHC prototip mıknatısı) kullanılarak, güneşten gelen aksiyonların güçlü bir manyetik alan içinden geçerken X-ışınlarına dönüşmesi sağlanır. Mühendislik zorluğu, mıknatısın güneşin hareketini saniyelik hassasiyetle takip etmesini sağlamaktır.

## 🛠️ Teknik Ekipman ve Teknolojiler

Karanlık madde aramalarında kullanılan kilit mühendislik bileşenleri:

| Ekipman | Teknik Özellik | Rolü |
| :--- | :--- | :--- |
| **Hadronik Kalorimetre (HCAL)** | Yüksek yoğunluklu emiciler | Parçacık enerjisinin tam ölçümü (Kayıp enerji hesabı için). |
| **Zamanlama Detektörleri** | 30 Pikosaniye Hassasiyet | Ağır ve yavaş hareket eden karanlık madde adaylarını yakalamak. |
| **TPC (Zaman Projeksiyon Odası)** | Sıvı Argon/Ksenon | Çok zayıf etkileşimlerin (Shake) iyonizasyon takibi. |
| **Ultra-Güçlü Mıknatıslar** | 9 Tesla ve üzeri | Aksiyon transformasyonu (Primakoff Etkisi). |

---

> **Mühendislik Notu:** Karanlık madde tespiti, "gürültü" (noise) yönetimi sanatıdır. Standart modeldeki milyarlarca parçacık arasından o tek bir "kayıp" sinyali yakalamak; veri toplama (DAQ) hızının, zamanlama hassasiyetinin ve dedektör izolasyonunun uç noktasıdır.
