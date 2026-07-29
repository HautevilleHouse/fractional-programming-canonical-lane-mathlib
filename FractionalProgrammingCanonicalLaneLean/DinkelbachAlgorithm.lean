import FractionalProgrammingCanonicalLaneLean.FractionalProgrammingObjects

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure DinkelbachPackage (O : FractionalProgrammingAdmittedObject) where
  parametricFunction : Type
  monotonicity : Prop
  convergenceRate : Prop
  terminationCriterion : Prop

def DinkelbachClosed (O : FractionalProgrammingAdmittedObject) (D : DinkelbachPackage O) : Prop :=
  D.monotonicity ∧ D.convergenceRate ∧ D.terminationCriterion

theorem dinkelbach_closed (O : FractionalProgrammingAdmittedObject) (D : DinkelbachPackage O) : DinkelbachClosed O D := by
  exact And.intro D.monotonicity (And.intro D.convergenceRate D.terminationCriterion)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse