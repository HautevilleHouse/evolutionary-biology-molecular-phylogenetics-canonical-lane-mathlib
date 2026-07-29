import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PhylogeneticInferencePackage where
  sequenceAlignment : Type u
  substitutionModel : Type v
  treeTopology : Type w
  likelihoodComputed : Prop
  treeReconstructed : Prop
  branchSupportAssessed : Prop

structure PhylogeneticInferenceEvidence (P : PhylogeneticInferencePackage) where
  likelihoodComputedClosed : P.likelihoodComputed
  treeReconstructedClosed : P.treeReconstructed
  branchSupportAssessedClosed : P.branchSupportAssessed

def PhylogeneticInferenceClosed (P : PhylogeneticInferencePackage) : Prop :=
  P.likelihoodComputed ∧ P.treeReconstructed ∧ P.branchSupportAssessed

theorem phylogenetic_inference_closed_from_evidence (P : PhylogeneticInferencePackage) (E : PhylogeneticInferenceEvidence P) :
    PhylogeneticInferenceClosed P := by
  exact And.intro E.likelihoodComputedClosed (And.intro E.treeReconstructedClosed E.branchSupportAssessedClosed)

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse