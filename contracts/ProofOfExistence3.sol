pragma solidity ^0.4.2;

// Proof of Existence contract, version 3
contract ProofOfExistence3 {

  mapping (bytes32 => bool) private proofs;

  // store a proof of existence in the contract state
  function storeProof(bytes32 proof) {
    proofs[proof] = true;
  }

  // calculate and store the proof for a document
  // * transaction *
  function notarize(string document) {
    var proof = calculateProof(document);
    storeProof(proof);
  }

  // helper function to get a document's sha256
  // * call *
  function calculateProof(string document) constant returns (bytes32) {
    return sha256(document);
  }

  // check if a document has been notarized
  // * call *
  function checkDocument(string document) constant returns (bool) {
    var proof = calculateProof(document);
    return hasProof(proof);
  }

  // check if proof is stored in proofs
  // * call *
  function hasProof(bytes32 proof) constant returns (bool) {
    return proofs[proof];
  }

}