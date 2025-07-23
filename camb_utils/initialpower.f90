! initialpower.f90 - stub for Rupture Theory primordial injection
module initialpower
  implicit none
  double precision :: As, ns, nrun, r
contains
  subroutine set_primordial_params()
    As    = 2.1d-9 * 1.0d-8   ! scaled amplitude
    ns    = 0.9649d0          ! spectral index
    nrun  = -0.0045d0         ! running
    r     = 0.0d0             ! tensor-to-scalar ratio
  end subroutine set_primordial_params
end module initialpower