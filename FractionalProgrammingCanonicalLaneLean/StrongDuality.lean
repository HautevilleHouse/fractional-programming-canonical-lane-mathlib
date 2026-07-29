import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure StrongDualityPackage (A : AdmissibleClass) where
  primalProblem : Prop
  dualProblem : Prop
  zeroDualityGap : Prop
  primalAttainment : Prop
  dualAttainment : Prop

structure StrongDualityEvidence (A : AdmissibleClass) (S : StrongDualityPackage A) where
  zeroDualityGapClosed : S.zeroDualityGap
  primalAttainmentClosed : S.primalAttainment
  dualAttainmentClosed : S.dualAttainment

def StrongDualityClosed (A : AdmissibleClass) (S : StrongDualityPackage A) : Prop :=
  S.zeroDualityGap ∧ S.primalAttainment ∧ S.dualAttainment

theorem strong_duality_closed (A : AdmissibleClass) (S : StrongDualityPackage A) (E : StrongDualityEvidence A S) :
    StrongDualityClosed A S := by
  exact And.intro E.zeroDualityGapClosed (And.intro E.primalAttainmentClosed E.dualAttainmentClosed)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse