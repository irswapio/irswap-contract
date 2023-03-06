// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity 0.8.17;
import "./IERC20.sol";

interface IIRS is IERC20 {
    function addToBountyList(
        address user,
        uint256 unblock_time,
        uint256 amount
    ) external;
}
