import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActomyosinContractilityPackage where
  myosinMotorActivity : Prop
  actinMyosinCrossbridgeCycle : Prop
  stressFiberFormation : Prop
  contractileRingAssembly : Prop
  corticalTensionGeneration : Prop
  mechanosensingFeedback : Prop

structure ActomyosinContractilityEvidence (P : ActomyosinContractilityPackage) where
  myosinMotorActivityClosed : P.myosinMotorActivity
  actinMyosinCrossbridgeCycleClosed : P.actinMyosinCrossbridgeCycle
  stressFiberFormationClosed : P.stressFiberFormation
  contractileRingAssemblyClosed : P.contractileRingAssembly
  corticalTensionGenerationClosed : P.corticalTensionGeneration
  mechanosensingFeedbackClosed : P.mechanosensingFeedback

def ActomyosinContractilityClosed (P : ActomyosinContractilityPackage) : Prop :=
  P.myosinMotorActivity ∧ P.actinMyosinCrossbridgeCycle ∧
  P.stressFiberFormation ∧ P.contractileRingAssembly ∧
  P.corticalTensionGeneration ∧ P.mechanosensingFeedback

theorem actomyosin_contractility_closed_from_evidence
    (P : ActomyosinContractilityPackage)
    (E : ActomyosinContractilityEvidence P) : ActomyosinContractilityClosed P := by
  exact And.intro E.myosinMotorActivityClosed
    (And.intro E.actinMyosinCrossbridgeCycleClosed
      (And.intro E.stressFiberFormationClosed
        (And.intro E.contractileRingAssemblyClosed
          (And.intro E.corticalTensionGenerationClosed
            E.mechanosensingFeedbackClosed))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse