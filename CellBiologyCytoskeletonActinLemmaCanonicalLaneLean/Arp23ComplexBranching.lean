import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Arp23BranchingPackage where
  nucleationBranchingRate : Prop
  branchAngleDistribution : Prop
  motherFilamentRecognition : Prop
  capReplacement : Prop
  debranchingDynamics : Prop

structure Arp23BranchingEvidence (P : Arp23BranchingPackage) where
  nucleationBranchingRateClosed : P.nucleationBranchingRate
  branchAngleDistributionClosed : P.branchAngleDistribution
  motherFilamentRecognitionClosed : P.motherFilamentRecognition
  capReplacementClosed : P.capReplacement
  debranchingDynamicsClosed : P.debranchingDynamics

def Arp23BranchingClosed (P : Arp23BranchingPackage) : Prop :=
  P.nucleationBranchingRate ∧ P.branchAngleDistribution ∧
  P.motherFilamentRecognition ∧ P.capReplacement ∧ P.debranchingDynamics

theorem arp23_branching_closed_from_evidence (P : Arp23BranchingPackage)
    (E : Arp23BranchingEvidence P) : Arp23BranchingClosed P := by
  exact And.intro E.nucleationBranchingRateClosed
    (And.intro E.branchAngleDistributionClosed
      (And.intro E.motherFilamentRecognitionClosed
        (And.intro E.capReplacementClosed E.debranchingDynamicsClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse