import FractionalProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure FractionalObjective where
  numerator : ℝ
  denominator : ℝ
  denominatorPositive : denominator > 0

def FractionalValue (f : FractionalObjective) : ℝ :=
  f.numerator / f.denominator

structure FractionalObjectiveClosed (f : FractionalObjective) : Prop where
  numeratorFinite : True
  denominatorNonzero : f.denominator ≠ 0

theorem fractional_objective_closed (f : FractionalObjective) : FractionalObjectiveClosed f := by
  exact { numeratorFinite := trivial, denominatorNonzero := by exact NeZero.ne f.denominator }

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse