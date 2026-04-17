# 🧮 Gelişmiş Matematiksel Simülasyonlar

Bu klasör, CERN'de gerçekleşen fiziksel olayların arkasında dönen yazılım mimarisini daha pratik ve "uygulanabilir" (hands-on) hale getirmeyi amaçlamaktadır. C++ ve ROOT framework'lerine dalmadan önce, bir yazılımcı olarak sistematiği anlamanızı sağlar.

## 1. Dört-Vektör Çarpışma Kinematiği (`collision_kinematics.py`)

CERN'de (ve özel görelilikte) zaman ve uzay ayrı incelenmez. Objeler üç boyutlu uzay hızlarıyla ve bir de enerji bileşeniyle, yani **4-Vektör (Four-Vector)** formatında değerlendirilir:
$[E, P_x, P_y, P_z]$ 

Bu Python modülü, birbirine çok zıt iki yönde (Beam 1 ve Beam 2) yaklaşan, her biri **6.8 TeV** enerjiye sahip iki protonun kafa kafaya çarpışmasını simüle eder ve kinetik enerjinin nasıl yeni bir "invariant (değişmez) kütle" yarattığını terminal üzerinde çok şık ve temiz yazılmış bir Class (Nesneye Yönelimli) formunda hesaplar.

Eğer CERN analizlerine girecekseniz, göreceğiniz ilk C++ Class yapısı bu `FourVector` objesi olacaktır.

### Çalıştırmak İçin:
- **Python:** `python collision_kinematics.py`
- **APL:** `collision_kinematics.apl` (APL Interpreter gerektirir.)

## 2. Karşılaştırmalı Fizik (Python vs APL)

Bu klasördeki hesaplamalar hem **modern Python** (Daha okunaklı, nesne yönelimli) hem de **klasik APL** (Daha kompakt, matris odaklı) dillerinde sunulmuştur. Aynı fiziksel sonuçların, iki zıt yazılım felsefesiyle nasıl elde edildiğini gözlemleyebilirsiniz.

## 🔭 Gelecek Perspektifi: 100 TeV Enerji Simülasyonları
Gelecek nesil FCC çarpıştırıcısı, 100 TeV gibi hayal edilmesi güç enerji seviyelerine ulaşacaktır. Bu durum, simülasyon kütüphanelerinin çok daha yüksek hassasiyette (floating point precision) ve ultra-rölativistik etkileri (synchrotron radiation loss) çok daha detaylı hesaplayacak şekilde optimize edilmesini gerektirecektir.
