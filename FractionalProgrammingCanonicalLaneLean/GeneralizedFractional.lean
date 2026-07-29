import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure GeneralizedFractionalPackage {F : FractionalObjectivePackage} where
  multipleRatios : Type u
  maxOfRatios : Prop
  convexityProperties : Prop
  sublevelSetRepresentation : Prop

def generalizedFractionalEvidence {F : FractionalObjectivePackage} (G : GeneralizedFractionalPackage F) : Prop :=
  G.maxOfRatios ∧ G.convexityProperties ∧ G.sublevelSetRepresentation

theorem generalized_fractional_closed {F : FractionalObjectivePackage} (G : GeneralizedFractionalPackage F) : generalizedFractionalEvidence G := by
  exact And.intro G.maxOfRatios (And.intro G.convexityProperties G.sublevelSetRepresentation)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse
