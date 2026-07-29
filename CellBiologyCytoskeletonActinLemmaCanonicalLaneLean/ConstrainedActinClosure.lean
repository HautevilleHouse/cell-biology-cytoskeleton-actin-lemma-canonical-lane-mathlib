import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

def ConstrainedActinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_actin_endgame (A : AdmissibleClass) : ConstrainedActinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse