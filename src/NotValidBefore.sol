// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {INounsDAOV2} from "./interfaces/INounsDAOV2.sol";
import {IRule} from "./interfaces/IRule.sol";

contract NotValidBefore is IRule {


    // TODO make this contract work with mutliple parallel users without constant redeployment
    uint32 public notValidBefore;

    error NotValidYet(uint32 willBeValidFrom);

    constructor(uint32 _notValidBefore) {
        notValidBefore = _notValidBefore;
    }

    function validate(address governor, address voter, uint256 proposalId, uint8 support, uint8 permissions, address[] calldata authority)
        external
        view
        override
        returns (bytes4)
    {
        if (block.timestamp < notValidBefore) {
            revert NotValidYet(notValidBefore);
        }

        return IRule.validate.selector;        
    }
}
