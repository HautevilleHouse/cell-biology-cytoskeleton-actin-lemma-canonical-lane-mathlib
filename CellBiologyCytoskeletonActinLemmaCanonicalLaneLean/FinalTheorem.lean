import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

def ConstrainedActinLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_actin_lemma_endgame (A : AdmissibleClass) :
    ConstrainedActinLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse