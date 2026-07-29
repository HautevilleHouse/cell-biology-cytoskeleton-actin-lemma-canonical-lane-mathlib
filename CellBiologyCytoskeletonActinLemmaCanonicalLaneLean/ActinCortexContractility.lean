import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinCortexPackage where
  myosinIIContractility : Prop
  actinNetworkMesh : Prop
  cortexThickness : Prop
  membraneAttachment : Prop
  tensionGeneration : Prop

structure ActinCortexEvidence (C : ActinCortexPackage) where
  myosinIIContractilityClosed : C.myosinIIContractility
  actinNetworkMeshClosed : C.actinNetworkMesh
  cortexThicknessClosed : C.cortexThickness
  membraneAttachmentClosed : C.membraneAttachment
  tensionGenerationClosed : C.tensionGeneration

def ActinCortexClosed (C : ActinCortexPackage) : Prop :=
  C.myosinIIContractility ∧ C.actinNetworkMesh ∧
  C.cortexThickness ∧ C.membraneAttachment ∧ C.tensionGeneration

theorem actin_cortex_closed_from_evidence
    (C : ActinCortexPackage) (E : ActinCortexEvidence C) :
    ActinCortexClosed C := by
  exact And.intro E.myosinIIContractilityClosed
    (And.intro E.actinNetworkMeshClosed
      (And.intro E.cortexThicknessClosed
        (And.intro E.membraneAttachmentClosed E.tensionGenerationClosed)))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse