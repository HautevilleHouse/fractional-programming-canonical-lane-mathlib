import FractionalProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure QuadraticTransformPackage where
  numerator : Type u
  denominator : Type v
  domain : Type w
  transformWellDefined : Prop
  numeratorNonnegative : Prop
  denominatorPositive : Prop

structure QuadraticTransformEvidence (Q : QuadraticTransformPackage) where
  transformWellDefinedClosed : Q.transformWellDefined
  numeratorNonnegativeClosed : Q.numeratorNonnegative
  denominatorPositiveClosed : Q.denominatorPositive

def QuadraticTransformClosed (Q : QuadraticTransformPackage) : Prop :=
  Q.transformWellDefined ∧ Q.numeratorNonnegative ∧ Q.denominatorPositive

theorem quadratic_transform_closed_from_evidence (Q : QuadraticTransformPackage)
    (E : QuadraticTransformEvidence Q) : QuadraticTransformClosed Q := by
  exact And.intro E.transformWellDefinedClosed
    (And.intro E.numeratorNonnegativeClosed E.denominatorPositiveClosed)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse