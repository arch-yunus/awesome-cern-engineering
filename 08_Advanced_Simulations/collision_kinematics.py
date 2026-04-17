"""
collision_kinematics.py - LHC Particle Collision Momentum Simulator 🌌
-------------------------------------------------------------------
Calculates 4-vector kinematics for proton-proton collisions in the 
Large Hadron Collider (LHC) frame.
"""

import numpy as np

class FourVector:
    def __init__(self, e, px, py, pz):
        self.e = e
        self.px = px
        self.py = py
        self.pz = pz
        self.data = np.array([e, px, py, pz])

    def invariant_mass(self):
        """Calculate the invariant mass (m^2 = E^2 - p^2)"""
        m_sq = self.e**2 - (self.px**2 + self.py**2 + self.pz**2)
        return np.sqrt(max(0, m_sq))

    def __add__(self, other):
        return FourVector(*(self.data + other.data))

    def __repr__(self):
        return f"FourVector(E={self.e:.3f}, px={self.px:.3f}, py={self.py:.3f}, pz={self.pz:.3f}, M={self.invariant_mass():.3f})"

def simulate_collision(beam_energy_gev=6800):
    """
    Simulate a simplified collision of two protons at LHC energies.
    Two beams moving in opposite directions along z-axis.
    """
    m_p = 0.938  # Proton mass in GeV/c^2
    p_beam = np.sqrt(beam_energy_gev**2 - m_p**2)
    
    # Proton A (moving +z)
    p_a = FourVector(beam_energy_gev, 0, 0, p_beam)
    # Proton B (moving -z)
    p_b = FourVector(beam_energy_gev, 0, 0, -p_beam)
    
    # System before collision
    s_system = p_a + p_b
    sqrt_s = s_system.invariant_mass()
    
    print(f"--- LHC Collision Simulation ({beam_energy_gev} GeV Beam) ---")
    print(f"Proton A: {p_a}")
    print(f"Proton B: {p_b}")
    print(f"Center-of-Mass Energy (√s): {sqrt_s:.3f} GeV")
    
    # Simplified decay into Higgs Boson (125 GeV) + X
    m_h = 125.1
    print(f"\nSearching for Higgs Boson signature (Mass: {m_h} GeV)...")
    if sqrt_s > m_h:
        print("Status: ENERGY THRESHOLD REACHED. Production possible.")
    else:
        print("Status: INSUFFICIENT ENERGY.")

if __name__ == "__main__":
    simulate_collision(6800) # Run at current nominal beam energy
