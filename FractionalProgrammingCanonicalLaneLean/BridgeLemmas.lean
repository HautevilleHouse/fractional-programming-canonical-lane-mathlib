import FractionalProgrammingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FractionalProgrammingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FractionalProgrammingCanonicalLaneLean
end HautevilleHouse