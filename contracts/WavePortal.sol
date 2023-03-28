// SPDX-License-Identifier: UNLINCENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
        console.log("Eh um longo caminho de volta, mas de volta pra onde?");
    }

    function wave() public payable {
        require(msg.value > 0, "n da para doar sem nada!");
        totalWaves += 1;
        console.log("%s deu uma carinha de raiva!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Temos um total de %d carinhas de raiva!", totalWaves);
        return totalWaves;
    }

    function withdrawTips() public {
        require(owner.send(address(this).balance));
    }
}
    
