import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Arp23Complex where
  branchingAngle : ℝ
  nucleationEfficiency : ℝ
  activationRequired : Prop
  bindsExistingFilament : Prop

structure Arp23ComplexEvidence (A : Arp23Complex) where
  branchingAngleClosed : A.branchingAngle = 70.0 ∨ A.branchingAngle = 0.0
  nucleationEfficiencyClosed : A.nucleationEfficiency > 0
  activationRequiredClosed : A.activationRequired
  bindsExistingFilamentClosed : A.bindsExistingFilament

def Arp23ComplexClosed (A : Arp23Complex) : Prop :=
  (A.branchingAngle = 70.0 ∨ A.branchingAngle = 0.0) ∧ A.nucleationEfficiency > 0 ∧ A.activationRequired ∧ A.bindsExistingFilament

theorem arp23_complex_closed_from_evidence (A : Arp23Complex) (E : Arp23ComplexEvidence A) : Arp23ComplexClosed A := by
  exact And.intro E.branchingAngleClosed (And.intro E.nucleationEfficiencyClosed (And.intro E.activationRequiredClosed E.bindsExistingFilamentClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse