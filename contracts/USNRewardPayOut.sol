import "./RewardOffer.sol";

pragma solidity ^0.8.21;

contract USNRewardPayOut {

     RewardOffer public usnContract;

     constructor(RewardOffer _usnContract) {
          usnContract = _usnContract;
     }

     // interface for USN
     function payOneTimeReward() public payable returns(bool) {
         assert (!(msg.value < usnContract.getDeploymentReward()));

         (bool success, ) = (address(usnContract.getOriginalClient().DAOrewardAccount()).call{value : msg.value}(""));
         if(success) {
             return true;
         } else {
             revert("Error message");
         }
     }

     // pay reward
     function payReward() public payable returns(bool) {
        (bool success, ) = (address(usnContract.getOriginalClient().DAOrewardAccount()).call{value : msg.value}(""));
         if(success){
             return true;
         } else {
             revert("Error message");
         }
     }
}