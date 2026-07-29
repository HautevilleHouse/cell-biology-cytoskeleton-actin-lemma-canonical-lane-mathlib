import CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def actinProjection : Projection ActinEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem actin_projection_idempotent (x : ActinEndgameState) :
    actinProjection.toFun (actinProjection.toFun x) = actinProjection.toFun x := by
  exact actinProjection.idempotent x

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse