import CellBiologyCytoskeletonActinLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ActinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse