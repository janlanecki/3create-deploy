// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Airdrop is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("3Creator Badge", "3CB") {
        console.log("Contract has been deployed!");
    }

    // Airdrop NFTs
    function airdropNfts(address[] calldata wAddresses, string memory tokenURI) public onlyOwner {

        for (uint i = 0; i < wAddresses.length; i++) {
            _mintNFT(wAddresses[i], tokenURI);
        }
    }
    
    function _mintNFT(address recipient, string memory tokenURI)
        public onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}