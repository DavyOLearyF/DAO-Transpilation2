This repository contains TheDAO contract, updated to be consistent with Solidity version 0.8.2. To see the modifications made to the code to do this, please see the commit history. This endeavor was done as part of my work for the Final Year Project module in my final year as a computer science student at Trinity College Dublin.

# Decentralized Autonomous Organization (DAO) Framework

## Solidity files

### DAO.sol:
Standard smart contract for any generated Decentralized Autonomous Organization (DAO) to automate organizational governance and decision-making.

### Token.sol: 
Defines the functions to check token balances, send tokens, send tokens on behalf of a 3rd party and its corresponding approval process.

### TokenCreation.sol: 
Token Creation contract, used by the DAO generated by the framework to sell its tokens and initialize its ether.

### SampleOffer.sol
Sample Proposal from a Contractor to the DAO generated by the framework. Feel free to use as a template for your own proposal.

### ManagedAccount.sol
Basic account, used by the DAO contract generated by the framework to separately manage both the rewards and the extraBalance accounts. 

### DAOTokenCreationProxyTransferer.sol
This contract is used as a fall back in case an exchange doesn't implement the "add data to a transaction" feature in a timely manner, preventing it from calling createTokenProxy().
