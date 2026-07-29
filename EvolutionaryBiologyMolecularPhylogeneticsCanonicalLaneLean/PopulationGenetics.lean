import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PopulationGeneticsPackage where
  population : Type u
  geneticVariation : Type v
  alleleFrequencies : Type w
  genotypeFrequencies : Type x
  populationStructure : Prop
  geneticDriftModel : Prop
  selectionModel : Prop
  mutationModel : Prop
  migrationModel : Prop
  effectivePopulationSize : Prop
  fixationIndex : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  populationStructureClosed : P.populationStructure
  geneticDriftModelClosed : P.geneticDriftModel
  selectionModelClosed : P.selectionModel
  mutationModelClosed : P.mutationModel
  migrationModelClosed : P.migrationModel
  effectivePopulationSizeClosed : P.effectivePopulationSize
  fixationIndexClosed : P.fixationIndex

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.populationStructure ∧ P.geneticDriftModel ∧
  P.selectionModel ∧ P.mutationModel ∧
  P.migrationModel ∧ P.effectivePopulationSize ∧
  P.fixationIndex

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.populationStructureClosed
    (And.intro E.geneticDriftModelClosed
      (And.intro E.selectionModelClosed
        (And.intro E.mutationModelClosed
          (And.intro E.migrationModelClosed
            (And.intro E.effectivePopulationSizeClosed
              E.fixationIndexClosed)))))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse