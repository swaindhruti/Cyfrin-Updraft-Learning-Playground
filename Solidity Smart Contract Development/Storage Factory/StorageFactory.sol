// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Importing the SimpleStorage contract from the file
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    // Declares an array to store instances of SimpleStorage contracts
    SimpleStorage[] public simpleStorageArray;

    /**
     * @dev Creates a new SimpleStorage contract instance and stores it in the array.
     */
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    /**
     * @dev Stores a number in a specific SimpleStorage contract instance.
     * @param _simpleStorageIndex The index of the SimpleStorage contract in the array.
     * @param _simpleStorageNumber The number to store in the SimpleStorage contract.
     */
    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    /**
     * @dev Retrieves the stored number from a specific SimpleStorage contract instance.
     * @param _simpleStorageIndex The index of the SimpleStorage contract in the array.
     * @return The stored number in the SimpleStorage contract.
     */
    function sfRetrieve(
        uint256 _simpleStorageIndex
    ) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

    /**
     * @dev Adds a new person to the people array in a specific SimpleStorage contract instance.
     * @param _simpleStorageIndex The index of the SimpleStorage contract in the array.
     * @param _name The name of the person.
     * @param _favoriteNumber The favorite number of the person.
     */
    function sfAddPerson(
        uint256 _simpleStorageIndex,
        string memory _name,
        uint256 _favoriteNumber
    ) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.addPerson(_name, _favoriteNumber);
    }

    /**
     * @dev Retrieves the favorite number of a person from a specific SimpleStorage contract instance.
     * @param _simpleStorageIndex The index of the SimpleStorage contract in the array.
     * @param _personName The name of the person.
     * @return The favorite number of the person.
     */
    function sfGetFavoriteNumber(
        uint256 _simpleStorageIndex,
        string memory _personName
    ) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.nameToFavouriteNumber(_personName);
    }
}
