import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure Arp2_3ComplexPackage where
  branchingRate : ℝ
  branchAngle : ℝ
  nucleationPromotion : ℝ
  cappingProteinInhibition : ℝ
  branchingRateClosed : branchingRate ≥ 0
  branchAngleClosed : branchAngle > 0
  nucleationPromotionClosed : nucleationPromotion > 0
  cappingProteinInhibitionClosed : cappingProteinInhibition ≥ 0

structure Arp2_3ComplexEvidence (A : Arp2_3ComplexPackage) where
  branchingRateClosed : A.branchingRateClosed
  branchAngleClosed : A.branchAngleClosed
  nucleationPromotionClosed : A.nucleationPromotionClosed
  cappingProteinInhibitionClosed : A.cappingProteinInhibitionClosed

def Arp2_3ComplexClosed (A : Arp2_3ComplexPackage) : Prop :=
  A.branchingRateClosed ∧ A.branchAngleClosed ∧
  A.nucleationPromotionClosed ∧ A.cappingProteinInhibitionClosed

theorem arp2_3_complex_closed_from_evidence (A : Arp2_3ComplexPackage)
    (E : Arp2_3ComplexEvidence A) : Arp2_3ComplexClosed A := by
  exact And.intro E.branchingRateClosed
    (And.intro E.branchAngleClosed
      (And.intro E.nucleationPromotionClosed E.cappingProteinInhibitionClosed))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse