import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Arp23BranchingPackage where
  motherFilamentPresent : Prop
  arp23ComplexActivated : Prop
  actinMonomerBound : Prop
  branchingAngleDefined : Prop
  daughterFilamentElongation : Prop

structure Arp23BranchingEvidence (A : Arp23BranchingPackage) where
  motherFilamentPresentClosed : A.motherFilamentPresent
  arp23ComplexActivatedClosed : A.arp23ComplexActivated
  actinMonomerBoundClosed : A.actinMonomerBound
  branchingAngleDefinedClosed : A.branchingAngleDefined
  daughterFilamentElongationClosed : A.daughterFilamentElongation

def Arp23BranchingClosed (A : Arp23BranchingPackage) : Prop :=
  A.motherFilamentPresent ∧ A.arp23ComplexActivated ∧ A.actinMonomerBound ∧
  A.branchingAngleDefined ∧ A.daughterFilamentElongation

theorem arp23_branching_closed_from_evidence (A : Arp23BranchingPackage)
    (E : Arp23BranchingEvidence A) : Arp23BranchingClosed A := by
  exact And.intro E.motherFilamentPresentClosed
    (And.intro E.arp23ComplexActivatedClosed
      (And.intro E.actinMonomerBoundClosed
        (And.intro E.branchingAngleDefinedClosed E.daughterFilamentElongationClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse