import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinMonomer where
  atpBound : Prop
  conformation : Type

structure ActinFilament where
  monomers : List ActinMonomer
  plusEnd : ActinMonomer
  minusEnd : ActinMonomer

structure ActinPolymerization where
  criticalConcentration : ℝ
  nucleationRate : ℝ
  elongationRate : ℝ
  depolymerizationRate : ℝ
  atpHydrolysis : Prop

structure ActinPolymerizationEvidence (A : ActinPolymerization) where
  criticalConcentrationClosed : A.criticalConcentration > 0
  nucleationRateClosed : A.nucleationRate > 0
  elongationRateClosed : A.elongationRate > 0
  depolymerizationRateClosed : A.depolymerizationRate > 0
  atpHydrolysisClosed : A.atpHydrolysis

def ActinPolymerizationClosed (A : ActinPolymerization) : Prop :=
  A.criticalConcentration > 0 ∧ A.nucleationRate > 0 ∧ A.elongationRate > 0 ∧ A.depolymerizationRate > 0 ∧ A.atpHydrolysis

theorem actin_polymerization_closed_from_evidence (A : ActinPolymerization) (E : ActinPolymerizationEvidence A) : ActinPolymerizationClosed A := by
  exact And.intro E.criticalConcentrationClosed (And.intro E.nucleationRateClosed (And.intro E.elongationRateClosed (And.intro E.depolymerizationRateClosed E.atpHydrolysisClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse