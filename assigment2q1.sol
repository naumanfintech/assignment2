pragma solidity ^0.8.0;

contract ArraySearch {
    uint256[] private array;

    function addElement(uint256 element) public {
        array.push(element);
    }

    function removeElement(uint256 element) public {
        uint256 index = findElementIndex(element);
        require(index < array.length, "Element not found.");
        array[index] = array[array.length - 1];
        array.pop();
    }

    function findElementIndex(uint256 element) public view returns (uint256) {
        for (uint256 i = 0; i < array.length; i++) {
            if (array[i] == element) {
                return i;
            }
        }
        return array.length;
    }

    function getArray() public view returns (uint256[] memory) {
        return array;
    }
}
