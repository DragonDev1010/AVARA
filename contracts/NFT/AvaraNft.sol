
// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity 0.8.4;
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
contract AvaraNft is ERC721{
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {}
}