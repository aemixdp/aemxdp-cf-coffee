# Uniformly accelerated motion utilities
UniAccel =
  # displacement during change of velocity from v0 to v1 with acceleration a
  vel_change_disp: (v0, v1, a) ->
    (v1 * v1 - v0 * v0) / (2 * a)
  # time needed to perform displacement s with start velocity v0 and acceleration a
  disp_time: (s, v0, a) ->
    (Math.sqrt(v0 * v0 + 2 * a * s) - v0) / a
