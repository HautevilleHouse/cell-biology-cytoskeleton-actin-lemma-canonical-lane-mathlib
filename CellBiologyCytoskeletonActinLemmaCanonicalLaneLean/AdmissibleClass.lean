import CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ActinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ActinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse