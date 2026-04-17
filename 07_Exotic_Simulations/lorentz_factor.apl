⍝ APL (A Programming Language) - Relativistic Kinetic Matrix
⍝ --------------------------------------------------------
⍝ This script performs a vector-based simulation of relativistic
⍝ dynamics at CERN. APL handles arrays as first-class citizens,
⍝ making it ideal for simulating bunched proton bunches.

⍝ 1. Setup Constants (Proton rest mass in GeV)
m ← 0.938

⍝ 2. Define Velocities (Approaching light speed: 0.9c to 0.99999999c)
V ← 0.9 0.99 0.999 0.9999 0.99999 0.999999 0.9999999 0.999999991

⍝ 3. Vectorized Lorentz Factor: γ = 1 / √(1 - v²)
G ← ÷ (1 - V × V) * 0.5

⍝ 4. Relativistic Kinetic Energy: K = (γ - 1)mc²
K ← (G - 1) × m

⍝ 5. Relativistic Momentum: p = γmv
P ← G × m × V

⍝ 6. Esoteric Display Logic
⎕ ← '--- CERN VECTORIZED KINETIC MATRIX ---'
⎕ ← 'Velocities (v/c):  ', ⍕V
⎕ ← 'Lorentz Factors:   ', ⍕G
⎕ ← 'Kinetic Energy(GeV): ', ⍕K
⎕ ← 'Relat. Momentum:   ', ⍕P

⍝ 7. Status Check
⎕ ← 'DIAGNOSTIC: ', (G[⍴G] > 7000) ⌽ 'NOMINAL ENERGY' 'EXCESSIVE COLLISION ENERGY'
⎕ ← '--- SEQUENCE TERMINATED ---'
