import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

def ConstrainedPhylogeneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_phylogenetic_endgame (A : AdmissibleClass) :
    ConstrainedPhylogeneticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse