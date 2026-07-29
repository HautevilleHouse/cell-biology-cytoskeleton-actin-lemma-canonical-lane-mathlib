import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinPolymerizationThermodynamicsPackage where
  criticalConcentration : Prop
  nucleotideExchangeRate : Prop
  atpHydrolysisCoupling : Prop
  phosphateReleaseDynamics : Prop
  subunitAdditionRate : Prop
  subunitDissociationRate : Prop
  capFormationProbability : Prop

structure ActinPolymerizationThermodynamicsEvidence
    (P : ActinPolymerizationThermodynamicsPackage) where
  criticalConcentrationClosed : P.criticalConcentration
  nucleotideExchangeRateClosed : P.nucleotideExchangeRate
  atpHydrolysisCouplingClosed : P.atpHydrolysisCoupling
  phosphateReleaseDynamicsClosed : P.phosphateReleaseDynamics
  subunitAdditionRateClosed : P.subunitAdditionRate
  subunitDissociationRateClosed : P.subunitDissociationRate
  capFormationProbabilityClosed : P.capFormationProbability

def ActinPolymerizationThermodynamicsClosed
    (P : ActinPolymerizationThermodynamicsPackage) : Prop :=
  P.criticalConcentration ∧ P.nucleotideExchangeRate ∧
  P.atpHydrolysisCoupling ∧ P.phosphateReleaseDynamics ∧
  P.subunitAdditionRate ∧ P.subunitDissociationRate ∧
  P.capFormationProbability

theorem actin_polymerization_thermodynamics_closed_from_evidence
    (P : ActinPolymerizationThermodynamicsPackage)
    (E : ActinPolymerizationThermodynamicsEvidence P) :
    ActinPolymerizationThermodynamicsClosed P := by
  exact And.intro E.criticalConcentrationClosed
    (And.intro E.nucleotideExchangeRateClosed
      (And.intro E.atpHydrolysisCouplingClosed
        (And.intro E.phosphateReleaseDynamicsClosed
          (And.intro E.subunitAdditionRateClosed
            (And.intro E.subunitDissociationRateClosed
              E.capFormationProbabilityClosed)))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse