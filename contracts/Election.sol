pragma solidity ^0.4.11;

contract Election {

	string public candidate;

	constructor() public {
		addCandidate("tehami");
		addCandidate("ali");
		addCandidate("ahmed");
	}

	struct Candidate {
		uint id;
		string name;
		uint vote;
	}

	mapping ( uint => Candidate ) public candidates;
	
	uint public candidateCount;

	function addCandidate (string _name) private {
		candidateCount ++;
		candidates[candidateCount] = Candidate( candidateCount, _name ,0);

	}
	
	
}