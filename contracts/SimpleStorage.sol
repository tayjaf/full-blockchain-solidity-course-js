// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // Solidity v. 0.8.8 (^ = 0.8.7+) and (>=0.8.7 < 0.9.0) in between range of versions

contract SimpleStorage {
    // bool, uint, int, address, bytes
    uint256 favoriteNumber; // null = 0

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //uint256[] public favoriteNumbersList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    //view, pure (less gas)
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }


    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {

        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }
    

}