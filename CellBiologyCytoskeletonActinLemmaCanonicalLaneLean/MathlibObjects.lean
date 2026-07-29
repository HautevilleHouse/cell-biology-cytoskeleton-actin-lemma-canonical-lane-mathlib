import CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ActinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ActinAdmittedObject where
  space : ActinSpace
  actinFilamentStructure : Prop
  polymerizationDynamics : Prop
  treadmilling : Prop
  lamellipodiumModel : Type
  lamellipodiumTopology : TopologicalSpace lamellipodiumModel
  actinDynamicsClosed : Prop
  conclusion : actinDynamicsClosed

structure ActinEndgameState where
  object : ActinAdmittedObject

def ActinWitnessClosed (O : ActinAdmittedObject) : Prop :=
  O.actinDynamicsClosed

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse