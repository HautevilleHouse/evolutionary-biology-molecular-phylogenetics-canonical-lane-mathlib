import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure SubstitutionModel where
  rateMatrix : Type u
  stationaryFrequencies : Prop
  reversible : Prop

structure SubstitutionModelSelectionPackage (M : SubstitutionModel) where
  modelIsSelected : Prop
  aicScore : Prop
  bicScore : Prop
  modelComparisonPerformed : Prop

structure SubstitutionModelSelectionEvidence {M : SubstitutionModel} (S : SubstitutionModelSelectionPackage M) where
  modelIsSelectedClosed : S.modelIsSelected
  aicScoreClosed : S.aicScore
  bicScoreClosed : S.bicScore
  modelComparisonPerformedClosed : S.modelComparisonPerformed

def SubstitutionModelSelectionClosed {M : SubstitutionModel} (S : SubstitutionModelSelectionPackage M) : Prop :=
  S.modelIsSelected ∧ S.aicScore ∧ S.bicScore ∧ S.modelComparisonPerformed

theorem substitution_model_selection_closed_from_evidence
    {M : SubstitutionModel} (S : SubstitutionModelSelectionPackage M)
    (E : SubstitutionModelSelectionEvidence S) : SubstitutionModelSelectionClosed S := by
  exact And.intro E.modelIsSelectedClosed (And.intro E.aicScoreClosed (And.intro E.bicScoreClosed E.modelComparisonPerformedClosed))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse