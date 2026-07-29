import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinRegulationPackage where
  rhoGtpaseActivation : ℝ
  cofilinBinding : ℝ
  profilinBinding : ℝ
  gelsolinCapping : ℝ
  rhoGtpaseActivationClosed : rhoGtpaseActivation > 0
  cofilinBindingClosed : cofilinBinding > 0
  profilinBindingClosed : profilinBinding > 0
  gelsolinCappingClosed : gelsolinCapping > 0

structure ActinRegulationEvidence (R : ActinRegulationPackage) where
  rhoGtpaseActivationClosed : R.rhoGtpaseActivationClosed
  cofilinBindingClosed : R.cofilinBindingClosed
  profilinBindingClosed : R.profilinBindingClosed
  gelsolinCappingClosed : R.gelsolinCappingClosed

def ActinRegulationClosed (R : ActinRegulationPackage) : Prop :=
  R.rhoGtpaseActivationClosed ∧ R.cofilinBindingClosed ∧
  R.profilinBindingClosed ∧ R.gelsolinCappingClosed

theorem actin_regulation_closed_from_evidence (R : ActinRegulationPackage)
    (E : ActinRegulationEvidence R) : ActinRegulationClosed R := by
  exact And.intro E.rhoGtpaseActivationClosed
    (And.intro E.cofilinBindingClosed
      (And.intro E.profilinBindingClosed E.gelsolinCappingClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse