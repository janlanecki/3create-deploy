pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract NFTAirdrop is ERC721Enumerable, Ownable {
    using Counters for Counters.Counter;
    
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("NFT Aidrop 3Create Badge", "3CB") {
        console.log("Contract has been deployed!");
    }

    // Airdrop NFTs
    function airdropNfts(address[] calldata wAddresses) public onlyOwner {

        for (uint i = 0; i < wAddresses.length; i++) {
            _mintNFT(wAddresses[i]);
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