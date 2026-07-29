import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  treeTopology : Type
  branchLengths : List ℝ
  likelihood : ℝ
  optimalTree : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  optimalTreeClosed : P.optimalTree
  likelihoodComputed : P.likelihood > 0

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.optimalTree ∧ P.likelihood > 0

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.optimalTreeClosed E.likelihoodComputed

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse
