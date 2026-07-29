import FractionalProgrammingCanonicalLaneLean.CharnesCooperTransform

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure DinkelbachProcedurePackage {Q : QuadraticTransformPackage}
    (C : CharnesCooperTransformPackage Q) where
  parameterSequence : Type u
  convergenceRate : Prop
  optimalityCondition : Prop
  finiteTermination : Prop

structure DinkelbachProcedureEvidence {Q : QuadraticTransformPackage}
    {C : CharnesCooperTransformPackage Q} (D : DinkelbachProcedurePackage C) where
  convergenceRateClosed : D.convergenceRate
  optimalityConditionClosed : D.optimalityCondition
  finiteTerminationClosed : D.finiteTermination

def DinkelbachProcedureClosed {Q : QuadraticTransformPackage}
    {C : CharnesCooperTransformPackage Q} (D : DinkelbachProcedurePackage C) : Prop :=
  D.convergenceRate ∧ D.optimalityCondition ∧ D.finiteTermination

theorem dinkelbach_procedure_closed_from_evidence
    {Q : QuadraticTransformPackage} {C : CharnesCooperTransformPackage Q}
    (D : DinkelbachProcedurePackage C) (E : DinkelbachProcedureEvidence D) :
    DinkelbachProcedureClosed D := by
  exact And.intro E.convergenceRateClosed
    (And.intro E.optimalityConditionClosed E.finiteTerminationClosed)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse