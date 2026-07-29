import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure MolecularClockPackage where
  lineage : String
  substitutionRate : ℝ
  divergenceTime : ℝ
  geneticDistance : ℝ
  clockAssumption : Prop
  rateConstancyTest : Prop

structure MolecularClockEvidence (M : MolecularClockPackage) where
  clockAssumptionClosed : M.clockAssumption
  rateConstancyTestClosed : M.rateConstancyTest

def MolecularClockClosed (M : MolecularClockPackage) : Prop :=
  M.clockAssumption ∧ M.rateConstancyTest

theorem molecular_clock_closed_from_evidence
    (M : MolecularClockPackage) (E : MolecularClockEvidence M) :
    MolecularClockClosed M := by
  exact And.intro E.clockAssumptionClosed E.rateConstancyTestClosed

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse