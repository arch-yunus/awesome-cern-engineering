⍝ lorentz_factor.apl - Relativistic Kinematics for CERN Engineering 🌌
⍝ -------------------------------------------------------------
⍝ This script calculates the Lorentz Factor (gamma) and 
⍝ relativistic Doppler shifts for high-energy proton bunches.

⍝ 1. Lorentz Factor Calculation: gamma = 1 / sqrt(1 - v²/c²)
⍝ Assume c = 1 for normalized velocity (beta = v/c)
LorentzFactor ← { ÷ (1 - ⍵ * 2) * 0.5 }

⍝ Example: Calculating gamma for protons at 0.999999991c (LHC nominal)
beta ← 0.999999991
gamma ← LorentzFactor beta
⎕ ← 'Lorentz Factor (gamma) at LHC design energy:' gamma

⍝ 2. Relativistic Doppler Effect: f_obs = f_src * sqrt((1+beta)/(1-beta))
DopplerShift ← { ⍵ × ( (1 + ⍺) ÷ (1 - ⍺) ) * 0.5 }

sourceFreq ← 400.79 ⍝ 400 MHz RF cavity frequency
shiftedFreq ← beta DopplerShift sourceFreq
⎕ ← 'Relativistic Doppler Shift (MHz):' shiftedFreq

⍝ 3. Transverse Mass Calculation: m_t = m_0 * gamma
⍝ Proton rest mass ~ 938.272 MeV/c²
m0 ← 938.272
mt ← m0 × gamma
⎕ ← 'Relativistic Mass (MeV/c²):' mt
