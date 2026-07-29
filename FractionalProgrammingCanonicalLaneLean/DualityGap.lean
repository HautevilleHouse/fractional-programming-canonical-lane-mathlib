import FractionalProgrammingCanonicalLaneLean.DinkelbachProcedure

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure DualityGapPackage {Q : QuadraticTransformPackage}
    {C : CharnesCooperTransformPackage Q} {D : DinkelbachProcedurePackage C} where
  primalOptimalValue : Prop
  dualOptimalValue : Prop
  zeroGapCondition : Prop
  strongDualityHolds : Prop

structure DualityGapEvidence {Q : QuadraticTransformPackage}
    {C : CharnesCooperTransformPackage Q} {D : DinkelbachProcedurePackage C}
    (G : DualityGapPackage D) where
  primalOptimalValueClosed : G.primalOptimalValue
  dualOptimalValueClosed : G.dualOptimalValue
  zeroGapConditionClosed : G.zeroGapCondition
  strongDualityHoldsClosed : G.strongDualityHolds

def DualityGapClosed {Q : QuadraticTransformPackage}
    {C : CharnesCooperTransformPackage Q} {D : DinkelbachProcedurePackage C}
    (G : DualityGapPackage D) : Prop :=
  G.primalOptimalValue ∧ G.dualOptimalValue ∧ G.zeroGapCondition ∧ G.strongDualityHolds

theorem duality_gap_closed_from_evidence
    {Q : QuadraticTransformPackage} {C : CharnesCooperTransformPackage Q}
    {D : DinkelbachProcedurePackage C} (G : DualityGapPackage D)
    (E : DualityGapEvidence G) : DualityGapClosed G := by
  exact And.intro E.primalOptimalValueClosed
    (And.intro E.dualOptimalValueClosed
      (And.intro E.zeroGapConditionClosed E.strongDualityHoldsClosed))

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse