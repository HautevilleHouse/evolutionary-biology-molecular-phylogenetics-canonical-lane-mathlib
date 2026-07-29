import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure MolecularClockPackage where
  geneSequence : Type u
  mutationRate : Type v
  timeSinceDivergence : Type w
  rateConstancy : Prop
  molecularClockHypothesis : Prop
  branchLengthProportional : Prop

structure MolecularClockEvidence (M : MolecularClockPackage) where
  rateConstancyClosed : M.rateConstancy
  molecularClockHypothesisClosed : M.molecularClockHypothesis
  branchLengthProportionalClosed : M.branchLengthProportional

def MolecularClockClosed (M : MolecularClockPackage) : Prop :=
  M.rateConstancy ∧ M.molecularClockHypothesis ∧ M.branchLengthProportional

theorem molecular_clock_closed_from_evidence (M : MolecularClockPackage) (E : MolecularClockEvidence M) :
    MolecularClockClosed M := by
  exact And.intro E.rateConstancyClosed (And.intro E.molecularClockHypothesisClosed E.branchLengthProportionalClosed)

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse