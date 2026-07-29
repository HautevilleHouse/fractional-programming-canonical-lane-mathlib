import FractionalProgrammingCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FractionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractionalProgrammingAdmittedObject where
  space : FractionalSpace
  ratioConvex : Prop
  concaveDenominator : Prop
  optimalValueExists : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  optimalAttained : Prop
  conclusion : optimalAttained

structure FractionalProgrammingEndgameState where
  object : FractionalProgrammingAdmittedObject

def FractionalWitnessClosed (O : FractionalProgrammingAdmittedObject) : Prop :=
  O.optimalAttained

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse