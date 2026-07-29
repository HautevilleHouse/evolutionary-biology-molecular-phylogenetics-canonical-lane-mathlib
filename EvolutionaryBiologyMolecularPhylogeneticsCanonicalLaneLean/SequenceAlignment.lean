import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : Type u
  substitutionMatrix : Type v
  gapPenalty : Type w
  alignmentAlgorithm : Prop
  optimalAlignment : Prop
  alignmentScore : Prop
  homologyAssignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  optimalAlignmentClosed : S.optimalAlignment
  alignmentScoreClosed : S.alignmentScore
  homologyAssignmentClosed : S.homologyAssignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentAlgorithm ∧ S.optimalAlignment ∧
  S.alignmentScore ∧ S.homologyAssignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentAlgorithmClosed
    (And.intro E.optimalAlignmentClosed
      (And.intro E.alignmentScoreClosed E.homologyAssignmentClosed))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse