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

import "./abstract/AvaraModule.sol";
import "./library/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract OwnershipModule is AvaraModule {
    IERC721 public AvaraNFT;
    IERC20 public Avara;
    constructor(address cOwner, address baseContract, address avaraNftContract, address avaraContract) AvaraModule(cOwner, baseContract, "Ownership", "0.0.1") {
        AvaraNFT = IERC721(avaraNftContract);
        Avara = IERC20(avaraContract);
    }

    struct SellNft {
        uint256 price;
        address seller;
    }
    mapping(uint256 => SellNft) sellNftList;
    function setSelling(uint256 nftId) public {

    }
    /**
    * @dev Occasionally called (only) by the server to make sure that the connection with the module and main contract is granted.
    */
    function ping() external view onlyOwner returns (string memory) {
        return getBaseContract().ping();
    }
}