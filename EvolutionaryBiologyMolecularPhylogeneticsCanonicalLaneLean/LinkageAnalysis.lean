import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure LinkageAnalysisPackage where
  chromosomePair : Type u
  loci : Type v
  recombinationFraction : Type w
  gameteFrequencies : Type x
  linkageEquilibriumAssumption : Prop
  recombinationModel : Prop
  linkageDisequilibriumMeasurement : Prop
  lodScore : Prop
  linkageMap : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEquilibriumAssumptionClosed : L.linkageEquilibriumAssumption
  recombinationModelClosed : L.recombinationModel
  linkageDisequilibriumMeasurementClosed : L.linkageDisequilibriumMeasurement
  lodScoreClosed : L.lodScore
  linkageMapClosed : L.linkageMap

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEquilibriumAssumption ∧ L.recombinationModel ∧
  L.linkageDisequilibriumMeasurement ∧ L.lodScore ∧
  L.linkageMap

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEquilibriumAssumptionClosed
    (And.intro E.recombinationModelClosed
      (And.intro E.linkageDisequilibriumMeasurementClosed
        (And.intro E.lodScoreClosed E.linkageMapClosed)))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse