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

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IAvaraNFT is IERC721 {
    function setBaseURI(string memory baseURI) external;
    function mint(string calldata _metaData) external returns (uint256);
    function burn(uint256 _tokenId) external returns(bool);
    function isApproved(uint256 _tokenId, address _operator) external view returns (bool);
    function exists(uint256 _tokenId) external view returns (bool);
}