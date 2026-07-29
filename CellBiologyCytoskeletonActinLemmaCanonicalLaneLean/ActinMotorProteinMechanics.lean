import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinMotorProteinPackage where
  motorHeadDomain : Type u
  atpHydrolysisCycle : Prop
  processiveWalking : Prop
  loadDependentStall : Prop
  cargoAttachment : Prop

structure ActinMotorProteinEvidence (M : ActinMotorProteinPackage) where
  motorHeadDomainClosed : M.motorHeadDomain
  atpHydrolysisCycleClosed : M.atpHydrolysisCycle
  processiveWalkingClosed : M.processiveWalking
  loadDependentStallClosed : M.loadDependentStall
  cargoAttachmentClosed : M.cargoAttachment

def ActinMotorProteinClosed (M : ActinMotorProteinPackage) : Prop :=
  M.motorHeadDomain ∧ M.atpHydrolysisCycle ∧
  M.processiveWalking ∧ M.loadDependentStall ∧ M.cargoAttachment

theorem actin_motor_protein_closed_from_evidence
    (M : ActinMotorProteinPackage) (E : ActinMotorProteinEvidence M) :
    ActinMotorProteinClosed M := by
  exact And.intro E.motorHeadDomainClosed
    (And.intro E.atpHydrolysisCycleClosed
      (And.intro E.processiveWalkingClosed
        (And.intro E.loadDependentStallClosed E.cargoAttachmentClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse