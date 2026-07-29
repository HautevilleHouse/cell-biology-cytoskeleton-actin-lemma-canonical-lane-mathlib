import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinBindingProtein where
  name : String
  bindingAffinity : ℝ
  functionCategory : String -- e.g. "capping", "crosslinking", "severing"

structure ActinBindingProteinRegulation where
  protein : ActinBindingProtein
  regulates : Type
  regulationMechanism : Prop

structure ActinBindingProteinEvidence (R : ActinBindingProteinRegulation) where
  bindingAffinityClosed : R.protein.bindingAffinity > 0
  regulationMechanismClosed : R.regulationMechanism
  functionalCategoryClosed : R.protein.functionCategory = "capping" ∨ R.protein.functionCategory = "crosslinking" ∨ R.protein.functionCategory = "severing"

def ActinBindingProteinClosed (R : ActinBindingProteinRegulation) : Prop :=
  R.protein.bindingAffinity > 0 ∧ R.regulationMechanism ∧ (R.protein.functionCategory = "capping" ∨ R.protein.functionCategory = "crosslinking" ∨ R.protein.functionCategory = "severing")

theorem actin_binding_protein_closed_from_evidence (R : ActinBindingProteinRegulation) (E : ActinBindingProteinEvidence R) : ActinBindingProteinClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.regulationMechanismClosed E.functionalCategoryClosed)

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse