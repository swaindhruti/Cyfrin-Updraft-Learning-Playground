// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// imports SimpleStorage contract from the file
import {SimpleStorage} from "./SimpleStorage.sol";

/**
 * @title AddFiveStorage
 * @dev Overrides teh store function & adds 5 to the favourite number before storing it.
 */
contract AddFiveStorage is SimpleStorage {
    /**
     * @dev Stores a number + 5 in the myFavouriteNumber variable.
     * @param _favouriteNumber The number to store in the myFavouriteNumber variable.
     */
    function store(uint256 _favouriteNumber) public override {
        myFavouriteNumber = _favouriteNumber + 5;
    }
}
