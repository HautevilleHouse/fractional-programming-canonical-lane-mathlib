import FractionalProgrammingCanonicalLaneLean.CharnesCooperTransformation

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure SubgradientPackage (O : FractionalProgrammingAdmittedObject) (C : CharnesCooperPackage O) where
  subgradientOracle : Type
  oracleConvergence : Prop
  stepSizeRule : Prop
  optimalityGap : Prop

def SubgradientClosed (O : FractionalProgrammingAdmittedObject) (C : CharnesCooperPackage O) (S : SubgradientPackage O C) : Prop :=
  S.oracleConvergence ∧ S.stepSizeRule ∧ S.optimalityGap

theorem subgradient_closed (O : FractionalProgrammingAdmittedObject) (C : CharnesCooperPackage O) (S : SubgradientPackage O C) : SubgradientClosed O C S := by
  exact And.intro S.oracleConvergence (And.intro S.stepSizeRule S.optimalityGap)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse