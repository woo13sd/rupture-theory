! camb/source/reionization.f90
module reionization_mod
  use constants_mod        ! ensures dp and reionization_params
  implicit none
contains
  subroutine set_rupture_reionization(params)
    type(reionization_params), intent(inout) :: params
    real(dp) :: z_base, delta_z

    ! Read base z from .ini and apply RT shift
    z_base = params%reion_redshift
    delta_z = 5.0_dp           ! RT early-overdensity shift

    params%reion_redshift = z_base + delta_z
    params%reion_width    = 0.50_dp  ! sharpen transition for RT
  end subroutine set_rupture_reionization
end module reionization_mod

! Hook so CAMB invokes RT reionization instead of default
interface
  subroutine set_rupture_reionization(params)
    import :: reionization_params
    type(reionization_params), intent(inout) :: params
  end subroutine set_rupture_reionization
end interface