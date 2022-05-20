// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/ThirdwebContract.sol";
import "solmate/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";

contract MyNFTContract is ERC721, ThirdwebContract {
    uint256 public currentTokenId;

    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {}

    function mintTo(address recipient) public payable returns (uint256) {
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return newItemId;
    }

    function tokenURI(uint256 id)
        public
        view
        virtual
        override
        returns (string memory)
    {
        return Strings.toString(id);
    }
}
