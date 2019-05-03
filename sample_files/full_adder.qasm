// Name of Experiment: full_adder.qasm
// Description: this experiment uses toffoli (CCX) and must be compiled for execution on 
// a real machine


OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];

h q[1];
h q[2];
h q[3];

//first gate: toffoli
ccx q[1],q[2],q[4];

//second gate: cnot
cx q[1],q[2];

//third gate: toffoli
ccx q[2],q[3],q[4];

//fourth gate: cnot
cx q[2],q[3];

//measure
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];