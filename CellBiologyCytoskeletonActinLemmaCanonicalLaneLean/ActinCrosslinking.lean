import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinCrosslinkingPackage where
  crosslinkerProteinPresent : Prop
  bindingAffinity : ℝ
  filamentSpacingControlled : Prop
  bundleFormation : Prop
  networkRheology : Prop
  crosslinkerDensity : ℝ

structure ActinCrosslinkingEvidence (A : ActinCrosslinkingPackage) where
  crosslinkerProteinPresentClosed : A.crosslinkerProteinPresent
  bindingAffinityClosed : A.bindingAffinity > 0
  filamentSpacingControlledClosed : A.filamentSpacingControlled
  bundleFormationClosed : A.bundleFormation
  networkRheologyClosed : A.networkRheology
  crosslinkerDensityClosed : A.crosslinkerDensity ≥ 0

def ActinCrosslinkingClosed (A : ActinCrosslinkingPackage) : Prop :=
  A.crosslinkerProteinPresent ∧ A.bindingAffinity > 0 ∧ A.filamentSpacingControlled ∧
  A.bundleFormation ∧ A.networkRheology ∧ A.crosslinkerDensity ≥ 0

theorem actin_crosslinking_closed_from_evidence (A : ActinCrosslinkingPackage)
    (E : ActinCrosslinkingEvidence A) : ActinCrosslinkingClosed A := by
  exact And.intro E.crosslinkerProteinPresentClosed
    (And.intro E.bindingAffinityClosed
      (And.intro E.filamentSpacingControlledClosed
        (And.intro E.bundleFormationClosed
          (And.intro E.networkRheologyClosed E.crosslinkerDensityClosed))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse