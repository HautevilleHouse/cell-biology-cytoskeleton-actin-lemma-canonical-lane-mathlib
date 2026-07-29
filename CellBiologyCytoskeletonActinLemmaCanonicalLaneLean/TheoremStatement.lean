import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  cytoskeletonStructure : Prop
  actinFilaments : Prop

structure ActinAdmittedObject where
  space : ActinSpace
  filamentNetwork : Prop
  polymerizationState : Prop
  contractility : Prop
  conclusion : filamentNetwork

structure ActinEndgameState where
  object : ActinAdmittedObject

def ActinWitnessClosed (O : ActinAdmittedObject) : Prop :=
  O.filamentNetwork

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse