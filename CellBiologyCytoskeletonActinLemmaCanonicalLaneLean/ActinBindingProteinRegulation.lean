import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinBindingProteinPackage where
  cappingProteinBinding : Prop
  severingProteinDynamics : Prop
  crosslinkingProteinAffinity : Prop
  profilinActinExchange : Prop
  cofilinSeveringActivity : Prop
  forminNucleationProcessivity : Prop

structure ActinBindingProteinEvidence (P : ActinBindingProteinPackage) where
  cappingProteinBindingClosed : P.cappingProteinBinding
  severingProteinDynamicsClosed : P.severingProteinDynamics
  crosslinkingProteinAffinityClosed : P.crosslinkingProteinAffinity
  profilinActinExchangeClosed : P.profilinActinExchange
  cofilinSeveringActivityClosed : P.cofilinSeveringActivity
  forminNucleationProcessivityClosed : P.forminNucleationProcessivity

def ActinBindingProteinClosed (P : ActinBindingProteinPackage) : Prop :=
  P.cappingProteinBinding ∧ P.severingProteinDynamics ∧
  P.crosslinkingProteinAffinity ∧ P.profilinActinExchange ∧
  P.cofilinSeveringActivity ∧ P.forminNucleationProcessivity

theorem actin_binding_protein_closed_from_evidence (P : ActinBindingProteinPackage)
    (E : ActinBindingProteinEvidence P) : ActinBindingProteinClosed P := by
  exact And.intro E.cappingProteinBindingClosed
    (And.intro E.severingProteinDynamicsClosed
      (And.intro E.crosslinkingProteinAffinityClosed
        (And.intro E.profilinActinExchangeClosed
          (And.intro E.cofilinSeveringActivityClosed
            E.forminNucleationProcessivityClosed))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse