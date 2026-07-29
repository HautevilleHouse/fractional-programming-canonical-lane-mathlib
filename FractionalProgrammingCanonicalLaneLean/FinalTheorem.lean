import FractionalProgrammingCanonicalLaneLean.DualityGap

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

def ConstrainedFractionalProgrammingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fractional_programming_endgame (A : AdmissibleClass) :
    ConstrainedFractionalProgrammingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse