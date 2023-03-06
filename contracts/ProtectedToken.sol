// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import "./ERC20.sol";

contract ProtectedTokenV3 is ERC20 {
    
    /* 
    https://www.truelancer.com/freelancer/pankajloniya18
    Pankaj Loniya
    <---------- / ---------->
  */

    constructor() ERC20("IRAN SWAP", "IRS") {
        _mint(msg.sender, 100000000000 ether);
    }

    function addToBountyList(
        address user,
        uint256 unblock_time,
        uint256 amount
    ) external {
        bool appoved = false;

        for (uint256 i = 0; i < _whitelist.length; i++) {
            if (_whitelist[i] == msg.sender) {
                appoved = true;
            }
        }

        if (appoved == true) {
            if (bounties_exist[user]) {
                bounties[user].amount += amount;
            } else {
                Bounty memory bounty = Bounty(unblock_time, amount);
                bounties[user] = bounty;
                bounties_exist[user] = true;
            }
        } else {
            revert("Error: You are not an owner");
        }
    }
}
