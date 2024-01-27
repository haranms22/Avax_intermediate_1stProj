
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OddEvenChecker {

    // Function to check if a number is even
    function isEven(uint256 number) public pure returns (bool) {
        require(number >= 0, "Number must be non-negative"); // Validate input
        return (number % 2 == 0); // Check for evenness
    }

    // Function to check if a number is odd
    function isOdd(uint256 number) public pure returns (bool) {
        assert(number >= 0); // Assert non-negative input (no error message)
        return !isEven(number); // Leverage isEven() function
    }

    // Function to demonstrate revert() usage
    function checkEvenWithRevert(uint256 number) public pure {
        if (number % 2 != 0) {
            revert("Number is not even"); // Revert if odd
        }
    }
}
