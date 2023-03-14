pragma solidity ^0.8.0;

contract FunctionDemo {
    uint256 private x;

    
    modifier onlyOwner {
        require(msg.sender == address(this), "Only the owner can call this function.");
        _;  
    }

    
    function setX(uint256 value) public onlyOwner {
        x = value;
    }

    
    function getX() public view returns (uint256) {
        return x;
    }

    
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
}
