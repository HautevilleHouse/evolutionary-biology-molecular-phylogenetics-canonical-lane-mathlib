import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PopulationGeneticsPackage where
  populationName : String
  sampleSize : ℕ
  alleleFrequencies : List ℝ
  heterozygosity : ℝ
  fixationIndex : ℝ
  hardyWeinbergDeviation : Prop
  populationStructureAssumption : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergDeviationClosed : P.hardyWeinbergDeviation
  populationStructureAssumptionClosed : P.populationStructureAssumption

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergDeviation ∧ P.populationStructureAssumption

theorem population_genetics_closed_from_evidence
    (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.hardyWeinbergDeviationClosed E.populationStructureAssumptionClosed

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse