import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinFilamentPackage where
  filamentType : Type u
  polymerizationRate : Prop
  depolymerizationRate : Prop
  treadmillingSteadyState : Prop
  nucleationMechanism : Prop

structure ActinFilamentEvidence (A : ActinFilamentPackage) where
  polymerizationRateClosed : A.polymerizationRate
  depolymerizationRateClosed : A.depolymerizationRate
  treadmillingSteadyStateClosed : A.treadmillingSteadyState
  nucleationMechanismClosed : A.nucleationMechanism

def ActinFilamentClosed (A : ActinFilamentPackage) : Prop :=
  A.polymerizationRate ∧ A.depolymerizationRate ∧
  A.treadmillingSteadyState ∧ A.nucleationMechanism

theorem actin_filament_closed_from_evidence
    (A : ActinFilamentPackage) (E : ActinFilamentEvidence A) :
    ActinFilamentClosed A := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.depolymerizationRateClosed
      (And.intro E.treadmillingSteadyStateClosed E.nucleationMechanismClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse