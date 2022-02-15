// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Testing this all works");
    }

    mapping(address => uint256) public wavers;

    function wave() public {
        totalWaves += 1;
        wavers[msg.sender] += 1;
        console.log("%s has waved", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }

    function getWaveCountForAddress(address searchAddress)
        public
        view
        returns (uint256)
    {
        return wavers[searchAddress];
    }
}
