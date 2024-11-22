// SPDX-License-Identifier: MIT
pragma solidity 0.8.28; // stating the solidity version

contract SimpleStorage {
    uint256 public myFavouriteNumber; // default value is 0 & visibility in internal

    struct Person {
        uint256 favouriteNumber;
        string name;
    } // Structs are custom defined types that can group several variables

    // Person public dhruti = Person(731,"Dhrutinandan");
    // Person public subudhi = Person({name: "Sidhartha", favouriteNumber: 123});
    // creating variables which is an instance of the Person struct

    Person[] public listOfPeople; // dynamic array as the size can grow and shrink

    mapping(string => uint256) public nameToFavouriteNumber; // create a mapping from name to favouriteNumber

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    } // stores the favNo with the variable we have passed while calling this function

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    } // here the view keyword means that the function will not send a transaction but it will only read the state of the blockchain

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name)); // array has a built in function of push to add items to array
        nameToFavouriteNumber[_name] = _favouriteNumber;
    } // function to add instances of Person struct to the listOfPeople array
}
