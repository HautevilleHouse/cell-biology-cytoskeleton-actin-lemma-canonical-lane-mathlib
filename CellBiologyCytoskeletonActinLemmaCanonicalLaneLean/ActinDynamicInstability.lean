import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinDynamicInstability where
  catastropheFrequency : ℝ
  rescueFrequency : ℝ
  averageFilamentLifetime : ℝ
  gtpCapSize : ℝ

structure ActinDynamicInstabilityEvidence (D : ActinDynamicInstability) where
  catastropheFrequencyClosed : D.catastropheFrequency > 0
  rescueFrequencyClosed : D.rescueFrequency > 0
  averageFilamentLifetimeClosed : D.averageFilamentLifetime > 0
  gtpCapSizeClosed : D.gtpCapSize > 0
  catastropheGreaterThanRescueClosed : D.catastropheFrequency > D.rescueFrequency

def ActinDynamicInstabilityClosed (D : ActinDynamicInstability) : Prop :=
  D.catastropheFrequency > 0 ∧ D.rescueFrequency > 0 ∧ D.averageFilamentLifetime > 0 ∧ D.gtpCapSize > 0 ∧ D.catastropheFrequency > D.rescueFrequency

theorem actin_dynamic_instability_closed_from_evidence (D : ActinDynamicInstability) (E : ActinDynamicInstabilityEvidence D) : ActinDynamicInstabilityClosed D := by
  exact And.intro E.catastropheFrequencyClosed (And.intro E.rescueFrequencyClosed (And.intro E.averageFilamentLifetimeClosed (And.intro E.gtpCapSizeClosed E.catastropheGreaterThanRescueClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse