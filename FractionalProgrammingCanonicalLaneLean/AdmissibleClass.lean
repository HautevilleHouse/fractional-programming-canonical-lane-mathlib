import FractionalProgrammingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure AdmissibleClass where
  object : FractionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractionalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse