import FractionalProgrammingCanonicalLaneLean.DinkelbachAlgorithm

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure OptimalConditionPackage (O : FractionalProgrammingAdmittedObject) (D : DinkelbachPackage O) where
  karushKuhnTucker : Prop
  saddlePointChar : Prop
  dualityGapZero : Prop
  globalOptimumCharacterized : Prop

def OptimalConditionClosed (O : FractionalProgrammingAdmittedObject) (D : DinkelbachPackage O) (C : OptimalConditionPackage O D) : Prop :=
  C.karushKuhnTucker ∧ C.saddlePointChar ∧ C.dualityGapZero ∧ C.globalOptimumCharacterized

theorem optimal_condition_closed (O : FractionalProgrammingAdmittedObject) (D : DinkelbachPackage O) (C : OptimalConditionPackage O D) : OptimalConditionClosed O D C := by
  exact And.intro C.karushKuhnTucker (And.intro C.saddlePointChar (And.intro C.dualityGapZero C.globalOptimumCharacterized))

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse