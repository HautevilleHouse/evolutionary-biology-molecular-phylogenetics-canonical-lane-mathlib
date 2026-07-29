import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesList : List String
  sequenceData : List (String × String)
  substitutionModel : Type u
  treeTopology : Type v
  branchLengths : List ℝ
  likelihood : ℝ
  treeInferred : Prop

structure PhylogeneticTreeEvidence (T : PhylogeneticTreePackage) where
  likelihoodClosed : T.likelihood > 0
  treeInferredClosed : T.treeInferred

def PhylogeneticTreeClosed (T : PhylogeneticTreePackage) : Prop :=
  T.likelihood > 0 ∧ T.treeInferred

theorem phylogenetic_tree_closed_from_evidence
    (T : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence T) :
    PhylogeneticTreeClosed T := by
  exact And.intro E.likelihoodClosed E.treeInferredClosed

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse