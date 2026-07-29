import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure SelectionDetectionPackage where
  nucleotideDiversity : Type u
  polymorphismData : Type v
  divergenceData : Type w
  neutralModel : Prop
  selectionSignal : Prop
  dNdSRatio : Prop

structure SelectionDetectionEvidence (S : SelectionDetectionPackage) where
  neutralModelClosed : S.neutralModel
  selectionSignalClosed : S.selectionSignal
  dNdSRatioClosed : S.dNdSRatio

def SelectionDetectionClosed (S : SelectionDetectionPackage) : Prop :=
  S.neutralModel ∧ S.selectionSignal ∧ S.dNdSRatio

theorem selection_detection_closed_from_evidence (S : SelectionDetectionPackage) (E : SelectionDetectionEvidence S) :
    SelectionDetectionClosed S := by
  exact And.intro E.neutralModelClosed (And.intro E.selectionSignalClosed E.dNdSRatioClosed)

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse