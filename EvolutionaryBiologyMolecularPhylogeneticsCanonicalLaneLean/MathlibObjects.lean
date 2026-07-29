import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PhylogeneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhylogeneticAdmittedObject where
  space : PhylogeneticSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure PhylogeneticEndgameState where
  object : PhylogeneticAdmittedObject

def PhylogeneticWitnessClosed (O : PhylogeneticAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end EvolutionaryBiologyMolecularPhylogeneticsCanonicalLaneLean
end HautevilleHouse
