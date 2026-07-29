import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Treadmilling where
  plusEndGrowthRate : ℝ
  minusEndShrinkageRate : ℝ
  netFilamentDisplacement : ℝ
  steadyStateMaintained : Prop

structure TreadmillingEvidence (T : Treadmilling) where
  plusEndGrowthRateClosed : T.plusEndGrowthRate > 0
  minusEndShrinkageRateClosed : T.minusEndShrinkageRate > 0
  netFilamentDisplacementClosed : T.netFilamentDisplacement = T.plusEndGrowthRate - T.minusEndShrinkageRate
  steadyStateMaintainedClosed : T.steadyStateMaintained

def TreadmillingClosed (T : Treadmilling) : Prop :=
  T.plusEndGrowthRate > 0 ∧ T.minusEndShrinkageRate > 0 ∧ T.netFilamentDisplacement = T.plusEndGrowthRate - T.minusEndShrinkageRate ∧ T.steadyStateMaintained

theorem treadmilling_closed_from_evidence (T : Treadmilling) (E : TreadmillingEvidence T) : TreadmillingClosed T := by
  exact And.intro E.plusEndGrowthRateClosed (And.intro E.minusEndShrinkageRateClosed (And.intro E.netFilamentDisplacementClosed E.steadyStateMaintainedClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse