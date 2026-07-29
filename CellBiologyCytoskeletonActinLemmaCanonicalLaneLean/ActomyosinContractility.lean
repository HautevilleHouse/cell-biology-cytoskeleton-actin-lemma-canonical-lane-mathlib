import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActinFilamentDynamics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActomyosinContractilityPackage {P : ActinFilamentDynamicsPackage} where
  myosinMotorActivity : Prop
  actinMyosinCrossBridge : Prop
  sarcomereOrganization : Prop
  forceLengthRelation : Prop
  tensionGeneration : Prop

structure ActomyosinContractilityEvidence {P : ActinFilamentDynamicsPackage}
    (C : ActomyosinContractilityPackage P) where
  myosinMotorActivityClosed : C.myosinMotorActivity
  actinMyosinCrossBridgeClosed : C.actinMyosinCrossBridge
  sarcomereOrganizationClosed : C.sarcomereOrganization
  forceLengthRelationClosed : C.forceLengthRelation
  tensionGenerationClosed : C.tensionGeneration

def ActomyosinContractilityClosed {P : ActinFilamentDynamicsPackage}
    (C : ActomyosinContractilityPackage P) : Prop :=
  C.myosinMotorActivity ∧ C.actinMyosinCrossBridge ∧ C.sarcomereOrganization ∧ C.forceLengthRelation ∧ C.tensionGeneration

theorem actomyosin_contractility_closed_from_evidence
    {P : ActinFilamentDynamicsPackage} (C : ActomyosinContractilityPackage P)
    (E : ActomyosinContractilityEvidence C) : ActomyosinContractilityClosed C := by
  exact And.intro E.myosinMotorActivityClosed
    (And.intro E.actinMyosinCrossBridgeClosed
      (And.intro E.sarcomereOrganizationClosed
        (And.intro E.forceLengthRelationClosed E.tensionGenerationClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse