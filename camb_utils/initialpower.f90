! camb/source/initialpower.f90
module initialpower_mod
  use base_units_mod      ! ensures dp
  implicit none
contains
  subroutine rupture_seeded_spectrum(nk, ks, ps_out)
    ! Computes rupture-theory primordial power spectrum P(k)
    integer, intent(in) :: nk
    real(dp), intent(in) :: ks(nk)
    real(dp), intent(out) :: ps_out(nk)
    integer :: i
    real(dp) :: A0, n_index, kp

    ! Pivot scale and parameters
    kp = 0.05_dp               ! [Mpc^-1]
    A0 = 2.10e-9_dp            ! amplitude from RT calibration
    n_index = 0.960_dp         ! tilt from RT hypothesis

    do i = 1, nk
      ps_out(i) = A0 * (ks(i)/kp)**(n_index - 1.0_dp)
    end do
  end subroutine rupture_seeded_spectrum
end module initialpower_mod

! Interface binding so CAMB can call the custom spectrum
interface
  subroutine rupture_seeded_spectrum(nk, ks, ps_out)
    import :: dp
    integer, intent(in) :: nk
    real(dp), intent(in) :: ks(nk)
    real(dp), intent(out) :: ps_out(nk)
  end subroutine rupture_seeded_spectrum
end interface