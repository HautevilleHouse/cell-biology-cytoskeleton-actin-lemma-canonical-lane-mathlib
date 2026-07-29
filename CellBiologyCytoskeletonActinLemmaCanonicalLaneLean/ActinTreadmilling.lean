import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinTreadmillingPackage where
  plusEndPolymerizationRate : ℝ
  minusEndDepolymerizationRate : ℝ
  netFilamentLengthDynamic : Prop
  monomerPoolMaintained : Prop
  atpHydrolysisCoupling : Prop
  criticalConcentrationPlus : ℝ
  criticalConcentrationMinus : ℝ

structure ActinTreadmillingEvidence (A : ActinTreadmillingPackage) where
  plusEndPolymerizationRateClosed : A.plusEndPolymerizationRate > 0
  minusEndDepolymerizationRateClosed : A.minusEndDepolymerizationRate > 0
  netFilamentLengthDynamicClosed : A.netFilamentLengthDynamic
  monomerPoolMaintainedClosed : A.monomerPoolMaintained
  atpHydrolysisCouplingClosed : A.atpHydrolysisCoupling
  criticalConcentrationPlusClosed : A.criticalConcentrationPlus > 0
  criticalConcentrationMinusClosed : A.criticalConcentrationMinus > 0

def ActinTreadmillingClosed (A : ActinTreadmillingPackage) : Prop :=
  A.plusEndPolymerizationRate > 0 ∧ A.minusEndDepolymerizationRate > 0 ∧
  A.netFilamentLengthDynamic ∧ A.monomerPoolMaintained ∧ A.atpHydrolysisCoupling ∧
  A.criticalConcentrationPlus > 0 ∧ A.criticalConcentrationMinus > 0

theorem actin_treadmilling_closed_from_evidence (A : ActinTreadmillingPackage)
    (E : ActinTreadmillingEvidence A) : ActinTreadmillingClosed A := by
  exact And.intro E.plusEndPolymerizationRateClosed
    (And.intro E.minusEndDepolymerizationRateClosed
      (And.intro E.netFilamentLengthDynamicClosed
        (And.intro E.monomerPoolMaintainedClosed
          (And.intro E.atpHydrolysisCouplingClosed
            (And.intro E.criticalConcentrationPlusClosed E.criticalConcentrationMinusClosed)))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse