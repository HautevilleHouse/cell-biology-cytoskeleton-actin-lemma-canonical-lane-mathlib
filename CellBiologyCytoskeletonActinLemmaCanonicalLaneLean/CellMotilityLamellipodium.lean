import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure CellMotilityLamellipodiumPackage where
  actinPolymerization : ActinPolymerizationPackage
  arp23Branching : Arp23BranchingPackage
  actinTreadmilling : ActinTreadmillingPackage
  actinCrosslinking : ActinCrosslinkingPackage
  membraneProtrusion : Prop
  adhesionFormation : Prop
  retrogradeFlow : Prop
  leadingEdgeAdvancement : Prop

structure CellMotilityLamellipodiumEvidence
    (A : ActinPolymerizationPackage) (B : Arp23BranchingPackage)
    (T : ActinTreadmillingPackage) (C : ActinCrosslinkingPackage)
    (M : CellMotilityLamellipodiumPackage) where
  actinPolymerizationClosed : ActinPolymerizationClosed A
  arp23BranchingClosed : Arp23BranchingClosed B
  actinTreadmillingClosed : ActinTreadmillingClosed T
  actinCrosslinkingClosed : ActinCrosslinkingClosed C
  membraneProtrusionClosed : M.membraneProtrusion
  adhesionFormationClosed : M.adhesionFormation
  retrogradeFlowClosed : M.retrogradeFlow
  leadingEdgeAdvancementClosed : M.leadingEdgeAdvancement

def CellMotilityLamellipodiumClosed (M : CellMotilityLamellipodiumPackage) : Prop :=
  ActinPolymerizationClosed M.actinPolymerization ∧
  Arp23BranchingClosed M.arp23Branching ∧
  ActinTreadmillingClosed M.actinTreadmilling ∧
  ActinCrosslinkingClosed M.actinCrosslinking ∧
  M.membraneProtrusion ∧ M.adhesionFormation ∧ M.retrogradeFlow ∧ M.leadingEdgeAdvancement

theorem cell_motility_lamellipodium_closed_from_evidence
    (A : ActinPolymerizationPackage) (B : Arp23BranchingPackage)
    (T : ActinTreadmillingPackage) (C : ActinCrosslinkingPackage)
    (M : CellMotilityLamellipodiumPackage)
    (E : CellMotilityLamellipodiumEvidence A B T C M) :
    CellMotilityLamellipodiumClosed M := by
  refine And.intro E.actinPolymerizationClosed
    (And.intro E.arp23BranchingClosed
      (And.intro E.actinTreadmillingClosed
        (And.intro E.actinCrosslinkingClosed
          (And.intro E.membraneProtrusionClosed
            (And.intro E.adhesionFormationClosed
              (And.intro E.retrogradeFlowClosed E.leadingEdgeAdvancementClosed))))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse