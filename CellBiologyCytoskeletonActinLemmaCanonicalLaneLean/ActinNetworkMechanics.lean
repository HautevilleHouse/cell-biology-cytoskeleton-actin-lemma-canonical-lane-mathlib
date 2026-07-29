import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinLemmaCanonicalLaneLean

structure ActinNetworkPackage where
  meshSizeDistribution : Prop
  crosslinkDensity : Prop
  networkElasticity : Prop
  networkRheology : Prop
  contractileForceGeneration : Prop
  networkTurnoverRate : Prop

structure ActinNetworkEvidence (P : ActinNetworkPackage) where
  meshSizeDistributionClosed : P.meshSizeDistribution
  crosslinkDensityClosed : P.crosslinkDensity
  networkElasticityClosed : P.networkElasticity
  networkRheologyClosed : P.networkRheology
  contractileForceGenerationClosed : P.contractileForceGeneration
  networkTurnoverRateClosed : P.networkTurnoverRate

def ActinNetworkClosed (P : ActinNetworkPackage) : Prop :=
  P.meshSizeDistribution ∧ P.crosslinkDensity ∧
  P.networkElasticity ∧ P.networkRheology ∧
  P.contractileForceGeneration ∧ P.networkTurnoverRate

theorem actin_network_closed_from_evidence (P : ActinNetworkPackage)
    (E : ActinNetworkEvidence P) : ActinNetworkClosed P := by
  exact And.intro E.meshSizeDistributionClosed
    (And.intro E.crosslinkDensityClosed
      (And.intro E.networkElasticityClosed
        (And.intro E.networkRheologyClosed
          (And.intro E.contractileForceGenerationClosed
            E.networkTurnoverRateClosed))))

end CellBiologyCytoskeletonActinLemmaCanonicalLaneLean
end HautevilleHouse