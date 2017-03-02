pragma solidity ^0.4.2;

// Proof of Existence contract, version 1
contract ProofOfExistence1 {
  // state
  bytes32 public proof;

  // calculate and store the proof for a document
  // *transactional function*
  function notarize(string document) {
    proof = calculateProof(document);
  }

// helper function to get a document's sha256
  // *call function* 
  function calculateProof(string document) constant returns (bytes32) {
    return sha256(document);
  }
}
