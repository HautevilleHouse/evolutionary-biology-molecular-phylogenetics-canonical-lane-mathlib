import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  molecularSequences : Type v
  evolutionaryModel : Type w
  treeBuildingMethod : Prop
  treeTopology : Prop
  branchLengths : Prop
  bootstrapSupport : Prop
  treeRooting : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeBuildingMethodClosed : P.treeBuildingMethod
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  bootstrapSupportClosed : P.bootstrapSupport
  treeRootingClosed : P.treeRooting

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeBuildingMethod ∧ P.treeTopology ∧
  P.branchLengths ∧ P.bootstrapSupport ∧
  P.treeRooting

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeBuildingMethodClosed
    (And.intro E.treeTopologyClosed
      (And.intro E.branchLengthsClosed
        (And.intro E.bootstrapSupportClosed E.treeRootingClosed)))

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse