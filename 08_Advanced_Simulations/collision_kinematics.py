import math

class FourVector:
    """A minimal 4-vector class using metric signature (+,-,-,-) for Particle Kinematics.
    This is deeply used inside CERN's ROOT physics frameworks."""
    def __init__(self, e, px, py, pz):
        self.e = e
        self.px = px
        self.py = py
        self.pz = pz

    def invariant_mass(self):
        """Invariant mass squared formula: m^2 = E^2 - p^2"""
        p2 = self.px**2 + self.py**2 + self.pz**2
        m2 = self.e**2 - p2
        return math.sqrt(m2) if m2 > 0 else 0

    def __add__(self, other):
        return FourVector(
            self.e + other.e,
            self.px + other.px,
            self.py + other.py,
            self.pz + other.pz
        )

    def print_vector(self, name="Particle"):
        print(f"[{name}] E: {self.e:.2f} GeV, Px: {self.px:.2f}, Py: {self.py:.2f}, Pz: {self.pz:.2f} | Invariant Mass: {self.invariant_mass():.4f} GeV")


def simulate_lhc_collision():
    print("=" * 60)
    print(" 🚀 LHC COLLISION KINEMATICS SIMULATOR 🚀 ".center(60))
    print("=" * 60)

    # Proton mass in GeV/c^2
    mp = 0.938 
    
    # Beam energy at LHC in 2024 is roughly 6.8 TeV per beam (13.6 TeV total)
    beam_energy = 6800.0 # GeV

    # Pz is derived since E^2 = P^2 + m^2 => P = sqrt(E^2 - m^2)
    p_momentum = math.sqrt(beam_energy**2 - mp**2)

    # Beam 1 going purely in +Z direction
    p1 = FourVector(beam_energy, 0.0, 0.0, p_momentum)
    
    # Beam 2 going purely in -Z direction
    p2 = FourVector(beam_energy, 0.0, 0.0, -p_momentum)

    print("\n--- PRE-COLLISION STATE ---")
    p1.print_vector("Proton 1 (Beam 1)")
    p2.print_vector("Proton 2 (Beam 2)")

    # Collision! The total system state.
    print("\n--- CENTER OF MASS SYSTEM (COLLISION EVENT) ---")
    system = p1 + p2
    
    system.print_vector("Collision System")
    
    print("-" * 60)
    print("Notice the Invariant Mass of the collision system.")
    print("We started with two protons weighting ~0.938 GeV each.")
    print(f"Yet from their kinetic energy, {system.invariant_mass():.0f} GeV of pure energy is available!")
    print("This is exactly how massive particles (like the Higgs Boson at 125 GeV) are created.")
    print("E = mc^2 in pure action.")


if __name__ == "__main__":
    simulate_lhc_collision()
