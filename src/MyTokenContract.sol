// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/ThirdwebContract.sol";
import "solmate/tokens/ERC20.sol";

contract MyTokenContract is ERC20, ThirdwebContract {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol, 18)
    {}
}
