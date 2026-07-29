import HautevilleHouse.CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.ActomyosinContractility

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure RegulatorySignalingPackage {P : ActinFilamentDynamicsPackage}
    {C : ActomyosinContractilityPackage P} where
  rhoGtpaseActivity : Prop
  arp23Complex : Prop
  cofilinRegulation : Prop
  profilinBinding : Prop
  signalingFeedback : Prop

structure RegulatorySignalingEvidence {P : ActinFilamentDynamicsPackage}
    {C : ActomyosinContractilityPackage P} (R : RegulatorySignalingPackage P C) where
  rhoGtpaseActivityClosed : R.rhoGtpaseActivity
  arp23ComplexClosed : R.arp23Complex
  cofilinRegulationClosed : R.cofilinRegulation
  profilinBindingClosed : R.profilinBinding
  signalingFeedbackClosed : R.signalingFeedback

def RegulatorySignalingClosed {P : ActinFilamentDynamicsPackage}
    {C : ActomyosinContractilityPackage P} (R : RegulatorySignalingPackage P C) : Prop :=
  R.rhoGtpaseActivity ∧ R.arp23Complex ∧ R.cofilinRegulation ∧ R.profilinBinding ∧ R.signalingFeedback

theorem regulatory_signaling_closed_from_evidence
    {P : ActinFilamentDynamicsPackage} {C : ActomyosinContractilityPackage P}
    (R : RegulatorySignalingPackage P C) (E : RegulatorySignalingEvidence R) :
    RegulatorySignalingClosed R := by
  exact And.intro E.rhoGtpaseActivityClosed
    (And.intro E.arp23ComplexClosed
      (And.intro E.cofilinRegulationClosed
        (And.intro E.profilinBindingClosed E.signalingFeedbackClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse