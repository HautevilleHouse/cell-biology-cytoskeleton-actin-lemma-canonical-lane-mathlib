import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinBindingProteins

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Cofilin where
  bindingAffinity : ℝ
  severingActivity : ℝ
  prefersADPMonomers : Prop
  phDependent : Prop

structure CofilinEvidence (C : Cofilin) where
  bindingAffinityClosed : C.bindingAffinity > 0
  severingActivityClosed : C.severingActivity > 0
  prefersADPMonomersClosed : C.prefersADPMonomers
  phDependentClosed : C.phDependent

def CofilinClosed (C : Cofilin) : Prop :=
  C.bindingAffinity > 0 ∧ C.severingActivity > 0 ∧ C.prefersADPMonomers ∧ C.phDependent

theorem cofilin_closed_from_evidence (C : Cofilin) (E : CofilinEvidence C) : CofilinClosed C := by
  exact And.intro E.bindingAffinityClosed (And.intro E.severingActivityClosed (And.intro E.prefersADPMonomersClosed E.phDependentClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse