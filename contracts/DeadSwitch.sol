pragma solidity >= 0.5.0 < 0.7.0;

contract DeadSwitch {

    address payable backupAddress;
    address public owner;
    bool public isAlive;
    uint256 lastSeen;
    

    constructor(address payable _backupAddress) public {
            owner = msg.sender;
            backupAddress = _backupAddress;
            isAlive = true;
    }


    modifier onlyOwner() { 
        require (msg.sender == owner); 
        _; 
    }
  




    function currentBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function transfer() public payable {
        require(msg.sender == backupAddress);
        require(block.timestamp >= (lastSeen + 20 seconds));
       
        backupAddress.transfer(address(this).balance);
    }

      function still_isAlive() public onlyOwner returns(bool) {
        isAlive = true;
        lastSeen = block.timestamp;
        return isAlive;
    }

}

