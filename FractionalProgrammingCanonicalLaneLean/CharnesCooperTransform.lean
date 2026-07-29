import canonicalLaneMathlib.AdmissibleClass

/-!
# Charnes-Cooper Transform Package for Fractional Programming
-/

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure CharnesCooperTransformPackage where
  originalVariables : ℕ
  transformedVariables : ℕ
  homogenizationMapping : Prop
  linearizationStepsDefined : Prop
  equivalenceToLinearProgram : Prop
  objectiveConversionExact : Prop
  homogenizationMappingTerm : homogenizationMapping
  linearizationStepsDefinedTerm : linearizationStepsDefined
  equivalenceToLinearProgramTerm : equivalenceToLinearProgram
  objectiveConversionExactTerm : objectiveConversionExact

structure CharnesCooperTransformEvidence (C : CharnesCooperTransformPackage) where
  homogenizationMappingClosed : C.homogenizationMapping
  linearizationStepsDefinedClosed : C.linearizationStepsDefined
  equivalenceToLinearProgramClosed : C.equivalenceToLinearProgram
  objectiveConversionExactClosed : C.objectiveConversionExact

def CharnesCooperTransformClosed (C : CharnesCooperTransformPackage) : Prop :=
  C.homogenizationMapping ∧ C.linearizationStepsDefined ∧
  C.equivalenceToLinearProgram ∧ C.objectiveConversionExact

theorem charnes_cooper_transform_closed_from_evidence (C : CharnesCooperTransformPackage)
    (E : CharnesCooperTransformEvidence C) : CharnesCooperTransformClosed C := by
  exact And.intro E.homogenizationMappingClosed
    (And.intro E.linearizationStepsDefinedClosed
      (And.intro E.equivalenceToLinearProgramClosed E.objectiveConversionExactClosed))

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse