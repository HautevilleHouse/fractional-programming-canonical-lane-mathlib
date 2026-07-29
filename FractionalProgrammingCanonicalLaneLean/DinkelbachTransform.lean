import canonicalLaneMathlib.AdmissibleClass

/-!
# Dinkelbach Transform Package for Fractional Programming
-/

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

structure DinkelbachTransformPackage where
  numeratorPoly : Polynomial ℚ
  denominatorPoly : Polynomial ℚ
  denominatorPositiveOnDomain : Prop
  maxObjective : ℝ
  iterativeSequenceDefined : Prop
  superlinearConvergence : Prop
  denominatorPositiveOnDomainTerm : denominatorPositiveOnDomain
  iterativeSequenceDefinedTerm : iterativeSequenceDefined
  superlinearConvergenceTerm : superlinearConvergence

structure DinkelbachTransformEvidence (D : DinkelbachTransformPackage) where
  denominatorPositiveOnDomainClosed : D.denominatorPositiveOnDomain
  iterativeSequenceDefinedClosed : D.iterativeSequenceDefined
  superlinearConvergenceClosed : D.superlinearConvergence

def DinkelbachTransformClosed (D : DinkelbachTransformPackage) : Prop :=
  D.denominatorPositiveOnDomain ∧ D.iterativeSequenceDefined ∧ D.superlinearConvergence

theorem dinkelbach_transform_closed_from_evidence (D : DinkelbachTransformPackage)
    (E : DinkelbachTransformEvidence D) : DinkelbachTransformClosed D := by
  exact And.intro E.denominatorPositiveOnDomainClosed
    (And.intro E.iterativeSequenceDefinedClosed E.superlinearConvergenceClosed)

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse