// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ProxyContract.sol";

contract FactoryContract {
    address public implementation;

    event ProxyCreated(address proxyAddress);

    constructor(address _implementation) {
        implementation = _implementation;
    }

    function createProxy() external returns (address) {
        ProxyContract proxy = new ProxyContract(implementation);
        emit ProxyCreated(address(proxy));
        return address(proxy);
    }
}

