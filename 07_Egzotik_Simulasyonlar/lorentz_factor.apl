⍝ lorentz_factor.apl - CERN Mühendisliği için Rölativistik Kinematik 🌌
⍝ -------------------------------------------------------------
⍝ Bu betik, yüksek enerjili proton kümeleri için Lorentz Faktörünü (gamma)
⍝ ve rölativistik Doppler kaymalarını hesaplar.

⍝ 1. Lorentz Faktörü Hesabı: gamma = 1 / sqrt(1 - v²/c²)
⍝ Normalize edilmiş hız için c = 1 varsayılır (beta = v/c)
LorentzFactor ← { ÷ (1 - ⍵ * 2) * 0.5 }

⍝ Örnek: LHC tasarım enerjisindeki protonlar için gamma hesabı (0.999999991c)
beta ← 0.999999991
gamma ← LorentzFactor beta
⎕ ← 'LHC Tasarım Enerjisindeki Lorentz Faktörü (gamma):' gamma

⍝ 2. Rölativistik Doppler Etkisi: f_obs = f_src * sqrt((1+beta)/(1-beta))
DopplerShift ← { ⍵ × ( (1 + ⍺) ÷ (1 - ⍺) ) * 0.5 }

sourceFreq ← 400.79 ⍝ 400 MHz RF kaviteleri frekansı
shiftedFreq ← beta DopplerShift sourceFreq
⎕ ← 'Rölativistik Doppler Kayması (MHz):' shiftedFreq

⍝ 3. Transvers Kütle Hesabı: m_t = m_0 * gamma
⍝ Proton durgun kütlesi ~ 938.272 MeV/c²
m0 ← 938.272
mt ← m0 × gamma
⎕ ← 'Rölativistik Kütle (MeV/c²):' mt
