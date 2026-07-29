import FractionalProgrammingCanonicalLaneLean.FractionalProgrammingObjects

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure CharnesCooperPackage (O : FractionalProgrammingAdmittedObject) where
  numerator : O.ratioConvex → Prop
  denominator : O.concaveDenominator → Prop
  transformationValid : Prop
  resultingLPBounded : Prop

def CharnesCooperClosed (O : FractionalProgrammingAdmittedObject) (C : CharnesCooperPackage O) : Prop :=
  C.transformationValid ∧ C.resultingLPBounded

theorem charnes_cooper_transformation_valid (O : FractionalProgrammingAdmittedObject) (C : CharnesCooperPackage O) : CharnesCooperClosed O C := by
  exact And.intro C.transformationValid C.resultingLPBounded

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse