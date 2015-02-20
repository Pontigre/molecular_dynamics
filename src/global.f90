module global

  implicit none

  integer, parameter :: num_particles = 864
  real(8), parameter :: density = 0.88
  real(8), parameter :: temp_target = 1.095

  integer, parameter :: number_timesteps = 2000
  real(8), parameter :: time_step = 0.004

  real(8) :: position(3,num_particles)
  real(8) :: velocity(3,num_particles)
  real(8) :: forces(3,num_particles)

  real(8), parameter :: PI = 4*atan(1.0)
  integer, parameter :: boxes = nint((num_particles/4)**(1.0/3))
  real(8), parameter :: length = boxes*(4.0/density)**(1.0/3)
  integer :: flag

  real(8) :: pair_corr(nint(length/2*100))
  real(8) :: pressures(number_timesteps)

  real(8) :: pot_energy(number_timesteps)
  real(8) :: kin_energy(number_timesteps)
  
contains 


end module global
