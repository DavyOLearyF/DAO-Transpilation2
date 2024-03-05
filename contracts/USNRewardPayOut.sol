import "./RewardOffer.sol";

pragma solidity ^0.8.21;

contract USNRewardPayOut {

     RewardOffer public usnContract;

     constructor(RewardOffer _usnContract) {
          usnContract = _usnContract;
     }

     // interface for USN
     function payOneTimeReward() public returns(bool) {
         assert (!(msg.value < usnContract.getDeploymentReward()));

         if (usnContract.getOriginalClient().DAOrewardAccount().call.value(msg.value)()) {
             return true;
         } else {
             revert("Error message");
         }
     }

     // pay reward
     function payReward() public returns(bool) {
         if (usnContract.getOriginalClient().DAOrewardAccount().call.value(msg.value)()) {
             return true;
         } else {
             revert("Error message");
         }
     }
}