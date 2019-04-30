tbxmanager enable mpt mptdoc cddmex fourier glpkmex hysdel lcp yalmip sedumi espresso

addpath ~/software/mosek/mosek/8/toolbox/r2014a
addpath ~/coding/pcis/lib
addpath ~/coding/quadrotor/lib
addpath ~/coding/quadrotor/lib/dynamics
addpath ~/coding/quadrotor/lib/sfunctions
addpath ~/coding/quadrotor/lib/udp

mptopt('lpsolver', 'mosek');
mptopt('qpsolver', 'mosek');