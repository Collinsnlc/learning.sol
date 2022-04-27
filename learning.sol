pragma solidity ^0.6.0;

contract SimpleStorage{
    // this will get initialized to 0
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //type of variable, visibility of variable, and the name of the variable
    People[] public people;
 

    function store(uint256 _favoriteNumber)public {
        favoriteNumber = _favoriteNumber;
    }
    //view, pure transactionless code
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
//store in memory store in storage //memory get rid of stored value after execution storage = keep forever
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
       people.push(People(_favoriteNumber, _name));
    }
