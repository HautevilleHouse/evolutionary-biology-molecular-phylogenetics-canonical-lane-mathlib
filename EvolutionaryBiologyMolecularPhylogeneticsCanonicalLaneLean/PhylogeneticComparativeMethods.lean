import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreeWithTraits where
  tree : Type u
  traitData : Type v
  traitEvolutionModel : Prop

structure PhylogeneticComparativeMethodsPackage (D : PhylogeneticTreeWithTraits) where
  independentContrasts : Prop
  phylogeneticGeneralizedLeastSquares : Prop
  phylogeneticANOVA : Prop
  ancestralStateReconstruction : Prop

structure PhylogeneticComparativeMethodsEvidence {D : PhylogeneticTreeWithTraits} (P : PhylogeneticComparativeMethodsPackage D) where
  traitEvolutionModelClosed : D.traitEvolutionModel
  independentContrastsClosed : P.independentContrasts
  phylogeneticGeneralizedLeastSquaresClosed : P.phylogeneticGeneralizedLeastSquares
  phylogeneticANOVAClosed : P.phylogeneticANOVA
  ancestralStateReconstructionClosed : P.ancestralStateReconstruction

def PhylogeneticComparativeMethodsClosed {D : PhylogeneticTreeWithTraits} (P : PhylogeneticComparativeMethodsPackage D) : Prop :=
  D.traitEvolutionModel ∧ P.independentContrasts ∧ P.phylogeneticGeneralizedLeastSquares ∧ P.phylogeneticANOVA ∧ P.ancestralStateReconstruction

theorem phylogenetic_comparative_methods_closed_from_evidence
    {D : PhylogeneticTreeWithTraits} (P : PhylogeneticComparativeMethodsPackage D)
    (E : PhylogeneticComparativeMethodsEvidence P) : PhylogeneticComparativeMethodsClosed P := by
  exact And.intro E.traitEvolutionModelClosed (And.intro E.independentContrastsClosed (And.intro E.phylogeneticGeneralizedLeastSquaresClosed (And.intro E.phylogeneticANOVAClosed E.ancestralStateReconstructionClosed)))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse