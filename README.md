# POLY-MODULE-3

## ZK SNARK CIRCUIT
```
A B X Y Q
0 0 0 1 1
0 1 0 0 0
1 0 0 1 1
1 1 1 0 1
```

The goal of the project is to prove that the inputs A=0 and B=1 yield a 0 output. 

# Installation
To get started with the project, follow these steps:

1. clone the hardhat-circom repository :
    `git clone https://github.com/gmchad/zardkat`
   
2. Install the required dependencies :
     `cd zardkat`
     `npm i`


# Implementation
1. Write the correct circuit.circom implementation.
2. Compile the circuit to generate circuit intermediaries
    `npx hardhat circom `
3. It will generate the LogicCircuitVerifier.sol contract.

# Deployment
`npx hardhat run scripts/deploy.ts --network mumbai`
This script does 4 things:
1. It deploys the LogicCircuitVerifier.sol contract.
2. Generates a proof from circuit intermediaries with `generateProof()`.
3. Generates calldata with `generateCallData()`.
4. Calls `verifyProof()` on the verifier contract with calldata.
5. Lastly, the asserted output should turn out to be  `TRUE`.

