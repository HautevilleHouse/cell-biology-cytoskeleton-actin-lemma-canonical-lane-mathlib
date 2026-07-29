import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure MechanosensingPackage where
  stressFiberFormation : ℝ
  focalAdhesionKinetics : ℝ
  substrateStiffness : ℝ
  tractionForce : ℝ
  stressFiberFormationClosed : stressFiberFormation > 0
  focalAdhesionKineticsClosed : focalAdhesionKinetics > 0
  substrateStiffnessClosed : substrateStiffness > 0
  tractionForceClosed : tractionForce > 0

structure MechanosensingEvidence (M : MechanosensingPackage) where
  stressFiberFormationClosed : M.stressFiberFormationClosed
  focalAdhesionKineticsClosed : M.focalAdhesionKineticsClosed
  substrateStiffnessClosed : M.substrateStiffnessClosed
  tractionForceClosed : M.tractionForceClosed

def MechanosensingClosed (M : MechanosensingPackage) : Prop :=
  M.stressFiberFormationClosed ∧ M.focalAdhesionKineticsClosed ∧
  M.substrateStiffnessClosed ∧ M.tractionForceClosed

theorem mechanosensing_closed_from_evidence (M : MechanosensingPackage)
    (E : MechanosensingEvidence M) : MechanosensingClosed M := by
  exact And.intro E.stressFiberFormationClosed
    (And.intro E.focalAdhesionKineticsClosed
      (And.intro E.substrateStiffnessClosed E.tractionForceClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse