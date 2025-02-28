// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract GUSTEAU is ERC20 {
    constructor() ERC20("GUSTEAU", "GUSTEAU") {
        _mint(msg.sender, 900000000 * 10**18);
        _mint(address(0x000000000000000000000000000000000000dEaD), 100000000 * 10**18); // 100M burned
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}