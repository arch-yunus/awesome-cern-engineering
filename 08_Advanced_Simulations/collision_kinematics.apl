⍝ APL - Relativistic 4-Vector Collision Kinematics
⍝ --------------------------------------------------
⍝ This script replicates the 'collision_kinematics.py' logic 
⍝ using APL's native array processing. It calculates the 
⍝ invariant mass of a center-of-mass collision system.

⍝ 1. Setup Physical Constants
MP ← 0.938              ⍝ Proton Mass (GeV)
E  ← 6800               ⍝ Beam Energy (GeV)

⍝ 2. Calculate Momentum Pz (E² = P² + M² => P = √(E² - M²))
Pz ← ( (E*2) - (MP*2) ) * 0.5

⍝ 3. Define 4-Vectors [E, Px, Py, Pz]
P1 ← E, 0, 0, Pz        ⍝ Beam 1 (Moving in +Z)
P2 ← E, 0, 0, (-Pz)     ⍝ Beam 2 (Moving in -Z)

⍝ 4. Sum of 4-Vectors (The Collision System)
S ← P1 + P2

⍝ 5. Invariant Mass Function: M = √(E² - Σ(Pi²))
InvMass ← { ( (⍵[1]*2) - ( +/ (1 ↓ ⍵)*2 ) ) * 0.5 }

⍝ 6. Esoteric Display Output
⎕ ← '===[ LHC COLLISION SYSTEM: APL DIAGNOSTICS ]==='
⎕ ← 'Particle 1 (4-Vector): ', ⍕P1
⎕ ← 'Particle 2 (4-Vector): ', ⍕P2
⎕ ← 'System Total Energy:  ', ⍕S[1]
⎕ ← 'Available CM Energy:  ', ⍕InvMass S
⎕ ← '------------------------------------------------'
⎕ ← 'RESULT: ', ( (InvMass S) > 125 ) ⌽ 'NO HIGGS' 'HIGGS CREATION POSSIBLE'
⎕ ← '================================================'
