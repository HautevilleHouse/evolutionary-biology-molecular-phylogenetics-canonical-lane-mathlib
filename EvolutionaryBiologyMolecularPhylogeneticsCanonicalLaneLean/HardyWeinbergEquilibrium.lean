import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  alleleFrequencies : Type v
  genotypeFrequencies : Type w
  randomMatingAssumption : Prop
  infinitePopulationAssumption : Prop
  noMutationAssumption : Prop
  noSelectionAssumption : Prop
  noMigrationAssumption : Prop
  hardyWeinbergEquation : Prop
  equilibriumReached : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  randomMatingAssumptionClosed : H.randomMatingAssumption
  infinitePopulationAssumptionClosed : H.infinitePopulationAssumption
  noMutationAssumptionClosed : H.noMutationAssumption
  noSelectionAssumptionClosed : H.noSelectionAssumption
  noMigrationAssumptionClosed : H.noMigrationAssumption
  hardyWeinbergEquationClosed : H.hardyWeinbergEquation
  equilibriumReachedClosed : H.equilibriumReached

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.randomMatingAssumption ∧ H.infinitePopulationAssumption ∧
  H.noMutationAssumption ∧ H.noSelectionAssumption ∧
  H.noMigrationAssumption ∧ H.hardyWeinbergEquation ∧
  H.equilibriumReached

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.randomMatingAssumptionClosed
    (And.intro E.infinitePopulationAssumptionClosed
      (And.intro E.noMutationAssumptionClosed
        (And.intro E.noSelectionAssumptionClosed
          (And.intro E.noMigrationAssumptionClosed
            (And.intro E.hardyWeinbergEquationClosed
              E.equilibriumReachedClosed)))))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse