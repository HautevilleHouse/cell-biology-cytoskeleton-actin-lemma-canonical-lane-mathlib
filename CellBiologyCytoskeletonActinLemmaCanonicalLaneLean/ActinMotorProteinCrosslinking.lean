import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinMotorProteinPackage where
  myosinType : Type u
  stepSize : ℝ
  atpaseRate : ℝ
  forceVelocityRelation : ℝ
  processivity : ℝ
  stepSizeClosed : stepSize > 0
  atpaseRateClosed : atpaseRate > 0
  forceVelocityRelationClosed : forceVelocityRelation ≤ 1
  processivityClosed : processivity ≥ 0

structure ActinMotorProteinEvidence (M : ActinMotorProteinPackage) where
  stepSizeClosed : M.stepSizeClosed
  atpaseRateClosed : M.atpaseRateClosed
  forceVelocityRelationClosed : M.forceVelocityRelationClosed
  processivityClosed : M.processivityClosed

def ActinMotorProteinClosed (M : ActinMotorProteinPackage) : Prop :=
  M.stepSizeClosed ∧ M.atpaseRateClosed ∧
  M.forceVelocityRelationClosed ∧ M.processivityClosed

theorem actin_motor_protein_closed_from_evidence (M : ActinMotorProteinPackage)
    (E : ActinMotorProteinEvidence M) : ActinMotorProteinClosed M := by
  exact And.intro E.stepSizeClosed
    (And.intro E.atpaseRateClosed
      (And.intro E.forceVelocityRelationClosed E.processivityClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse