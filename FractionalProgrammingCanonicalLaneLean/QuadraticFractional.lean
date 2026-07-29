import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure QuadraticFractionalPackage where
  quadraticForm : Type u
  linearForm : Type v
  domainPolytope : Type w
  objectiveFunction : quadraticForm / linearForm -> Prop
  isConvexFractional : Prop
  semidefiniteRepresentation : Prop

def quadraticFractionalEvidence (Q : QuadraticFractionalPackage) : Prop :=
  Q.objectiveFunction ∧ Q.isConvexFractional ∧ Q.semidefiniteRepresentation

theorem quadratic_fractional_closed (Q : QuadraticFractionalPackage) : quadraticFractionalEvidence Q := by
  exact And.intro Q.objectiveFunction (And.intro Q.isConvexFractional Q.semidefiniteRepresentation)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse
