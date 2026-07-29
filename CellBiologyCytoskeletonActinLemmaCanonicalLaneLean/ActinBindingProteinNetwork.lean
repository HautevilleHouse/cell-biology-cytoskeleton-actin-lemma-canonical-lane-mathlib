import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinBindingProteinPackage where
  crosslinkerType : Type u
  bundlingActivity : Prop
  severingActivity : Prop
  branchingActivity : Prop
  networkArchitecture : Prop

structure ActinBindingProteinEvidence (B : ActinBindingProteinPackage) where
  crosslinkerTypeClosed : B.crosslinkerType
  bundlingActivityClosed : B.bundlingActivity
  severingActivityClosed : B.severingActivity
  branchingActivityClosed : B.branchingActivity
  networkArchitectureClosed : B.networkArchitecture

def ActinBindingProteinClosed (B : ActinBindingProteinPackage) : Prop :=
  B.crosslinkerType ∧ B.bundlingActivity ∧
  B.severingActivity ∧ B.branchingActivity ∧ B.networkArchitecture

theorem actin_binding_protein_closed_from_evidence
    (B : ActinBindingProteinPackage) (E : ActinBindingProteinEvidence B) :
    ActinBindingProteinClosed B := by
  exact And.intro E.crosslinkerTypeClosed
    (And.intro E.bundlingActivityClosed
      (And.intro E.severingActivityClosed
        (And.intro E.branchingActivityClosed E.networkArchitectureClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse