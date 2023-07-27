pragma circom 2.0.0;

//This circuit template checks that c is the multiplication of a and b./

template LogicGate () {  
    // signal inputs
    signal input a;
    signal input b;

    // signals from gates
    signal x;
    signal y;

    // final signal output
    signal output q;

    // component gates used to create the custom multiplier circuit
    component andGateCmp = AND_GATE();
    component notGateCmp = NOT_GATE();
    component orGateCmp = OR_GATE();

    // circuit logic

    // for AND gate 
    andGateCmp.a <== a;
    andGateCmp.b <== b;

    x <== andGateCmp.out;

    // for NOT gate
    notGateCmp.in <== b;

    y <== notGateCmp.out;

    // for OR gate
    orGateCmp.a <== x;
    orGateCmp.b <== y;
    
    q <== orGateCmp.out;
    
}

template AND_GATE() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

template NOT_GATE() {
    signal input in;
    signal output out;

    out <== 1 + in - 2 * in;
}

template OR_GATE() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a * b;
}

component main = LogicGate();