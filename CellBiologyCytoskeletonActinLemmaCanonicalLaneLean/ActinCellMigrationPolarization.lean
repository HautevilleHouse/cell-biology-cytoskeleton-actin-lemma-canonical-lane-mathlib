import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure CellMigrationPolarizationPackage where
  leadingEdgeProtrusion : Prop
  lamellipodialActinFlow : Prop
  cellFrontBackPolarization : Prop
  focalAdhesionTurnover : Prop
  trailingEdgeRetraction : Prop
  chemotacticGradientSensing : Prop

structure CellMigrationPolarizationEvidence (P : CellMigrationPolarizationPackage) where
  leadingEdgeProtrusionClosed : P.leadingEdgeProtrusion
  lamellipodialActinFlowClosed : P.lamellipodialActinFlow
  cellFrontBackPolarizationClosed : P.cellFrontBackPolarization
  focalAdhesionTurnoverClosed : P.focalAdhesionTurnover
  trailingEdgeRetractionClosed : P.trailingEdgeRetraction
  chemotacticGradientSensingClosed : P.chemotacticGradientSensing

def CellMigrationPolarizationClosed (P : CellMigrationPolarizationPackage) : Prop :=
  P.leadingEdgeProtrusion ∧ P.lamellipodialActinFlow ∧
  P.cellFrontBackPolarization ∧ P.focalAdhesionTurnover ∧
  P.trailingEdgeRetraction ∧ P.chemotacticGradientSensing

theorem cell_migration_polarization_closed_from_evidence
    (P : CellMigrationPolarizationPackage)
    (E : CellMigrationPolarizationEvidence P) : CellMigrationPolarizationClosed P := by
  exact And.intro E.leadingEdgeProtrusionClosed
    (And.intro E.lamellipodialActinFlowClosed
      (And.intro E.cellFrontBackPolarizationClosed
        (And.intro E.focalAdhesionTurnoverClosed
          (And.intro E.trailingEdgeRetractionClosed
            E.chemotacticGradientSensingClosed))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse