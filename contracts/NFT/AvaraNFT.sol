/**
    ***********************************************************
    * Copyright (c) Avara Dev. 2021. (Telegram: @avara_cc)  *
    ***********************************************************

     ▄▄▄·  ▌ ▐· ▄▄▄· ▄▄▄   ▄▄▄·
    ▐█ ▀█ ▪█·█▌▐█ ▀█ ▀▄ █·▐█ ▀█
    ▄█▀▀█ ▐█▐█•▄█▀▀█ ▐▀▀▄ ▄█▀▀█
    ▐█ ▪▐▌ ███ ▐█ ▪▐▌▐█•█▌▐█ ▪▐▌
     ▀  ▀ . ▀   ▀  ▀ .▀  ▀ ▀  ▀  - Binance Smart Chain

    Avara - Always Vivid, Always Rising Above
    https://avara.cc/
    https://github.com/avara-cc
    https://github.com/avara-cc/Avara/wiki
*/

// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract AvaraNFT is ERC721 {
    using SafeMath for uint256; 
    uint256 public tokenAmount;
    uint256 public tokenIdPointer;
    mapping(uint256 => string) public tokenHashList;
    string public baseTokenURI;


    constructor(string memory name, string memory symbol) ERC721(name, symbol){}
    function _baseURI() internal view virtual override returns (string memory) {
        return baseTokenURI;
    }
    function setBaseURI(string memory baseURI) public {
        baseTokenURI = baseURI;
    }
    function mint(string calldata _metaData) public returns(uint256) {
        uint256 tokenId;
        tokenId = tokenIdPointer;
        tokenIdPointer = tokenIdPointer.add(1);
        _safeMint(msg.sender, tokenId);
        tokenHashList[tokenId] = _metaData;
        tokenAmount = tokenAmount.add(1);
        return tokenId;
    }
    function burn(uint256 _tokenId) public returns(bool) {
        address operator = _msgSender();
        require(
            ownerOf(_tokenId) == operator || isApproved(_tokenId, operator),
            "AvaraNFT.burn: Only garment owner or approved"
        );
        _burn(_tokenId);
        tokenAmount = tokenAmount.sub(1);
        return true;
    }
    function isApproved(uint256 _tokenId, address _operator) public view returns (bool) {
        return isApprovedForAll(ownerOf(_tokenId), _operator) || getApproved(_tokenId) == _operator;
    }
    function exists(uint256 _tokenId) external view returns (bool) {
        return _exists(_tokenId);
    }
}