import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure FractionalSpace where
  carrier : Type u
  norm : carrier → ℝ
  complete : Prop

structure FractionalAdmittedObject where
  space : FractionalSpace
  fracProgram : Type
  objectiveLinear : Prop
  constraintsLinear : Prop
  ratioForm : Prop
  conclusion : objectiveLinear ∧ constraintsLinear ∧ ratioForm

def FractionalWitnessClosed (O : FractionalAdmittedObject) : Prop :=
  O.objectiveLinear ∧ O.constraintsLinear ∧ O.ratioForm

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse