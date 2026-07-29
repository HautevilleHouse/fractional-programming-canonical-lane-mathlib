import canonicalLaneMathlib.AdmissibleClass

/-!
# Fractional Duality Package
-/

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure FractionalDualityPackage where
  primalFractionalProgram : Prop
  dualFractionalProgram : Prop
  weakDualityHolds : Prop
  strongDualityUnderConditions : Prop
  optimalityConditionsDefined : Prop
  saddlePointCharacterization : Prop
  weakDualityHoldsTerm : weakDualityHolds
  strongDualityUnderConditionsTerm : strongDualityUnderConditions
  optimalityConditionsDefinedTerm : optimalityConditionsDefined
  saddlePointCharacterizationTerm : saddlePointCharacterization

structure FractionalDualityEvidence (F : FractionalDualityPackage) where
  weakDualityHoldsClosed : F.weakDualityHolds
  strongDualityUnderConditionsClosed : F.strongDualityUnderConditions
  optimalityConditionsDefinedClosed : F.optimalityConditionsDefined
  saddlePointCharacterizationClosed : F.saddlePointCharacterization

def FractionalDualityClosed (F : FractionalDualityPackage) : Prop :=
  F.weakDualityHolds ∧ F.strongDualityUnderConditions ∧
  F.optimalityConditionsDefined ∧ F.saddlePointCharacterization

theorem fractional_duality_closed_from_evidence (F : FractionalDualityPackage)
    (E : FractionalDualityEvidence F) : FractionalDualityClosed F := by
  exact And.intro E.weakDualityHoldsClosed
    (And.intro E.strongDualityUnderConditionsClosed
      (And.intro E.optimalityConditionsDefinedClosed E.saddlePointCharacterizationClosed))

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse