// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount; //no of transactions

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions; //array of transfer

    // Everybody can access this function
    function addToBlockChain(address payable receiver, uint amount, string memory message,string memory keyword) public {
        transactionCount++;
        transactions.push(TransferStruct(msg.sender,receiver,amount,message,block.timestamp,keyword));   //Adding transactions to list of transaction till noe we haven't transfer them

        emit Transfer(msg.sender,receiver,amount,message,block.timestamp,keyword);   // To make transfer
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
