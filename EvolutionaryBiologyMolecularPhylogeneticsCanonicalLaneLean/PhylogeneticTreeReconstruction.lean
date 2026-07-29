import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure MolecularSequenceData where
  taxa : List String
  alignment : Prop
  sequenceLength : Nat
  substitutionModel : Prop

structure PhylogeneticTreeReconstructionPackage (D : MolecularSequenceData) where
  treeTopology : Type u
  branchLengths : Type v
  likelihoodScore : Prop
  bootstrapSupport : Prop
  tree_is_phylogenetic : Prop

structure PhylogeneticTreeReconstructionEvidence {D : MolecularSequenceData} (P : PhylogeneticTreeReconstructionPackage D) where
  alignmentClosed : D.alignment
  substitutionModelClosed : D.substitutionModel
  likelihoodScoreClosed : P.likelihoodScore
  bootstrapSupportClosed : P.bootstrapSupport
  tree_is_phylogeneticClosed : P.tree_is_phylogenetic

def PhylogeneticTreeReconstructionClosed {D : MolecularSequenceData} (P : PhylogeneticTreeReconstructionPackage D) : Prop :=
  D.alignment ∧ D.substitutionModel ∧ P.likelihoodScore ∧ P.bootstrapSupport ∧ P.tree_is_phylogenetic

theorem phylogenetic_tree_reconstruction_closed_from_evidence
    {D : MolecularSequenceData} (P : PhylogeneticTreeReconstructionPackage D)
    (E : PhylogeneticTreeReconstructionEvidence P) : PhylogeneticTreeReconstructionClosed P := by
  exact And.intro E.alignmentClosed (And.intro E.substitutionModelClosed (And.intro E.likelihoodScoreClosed (And.intro E.bootstrapSupportClosed E.tree_is_phylogeneticClosed)))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse