//write solidity interface for the contract
// Language: solidity
// Path: contracts/subdomainregistrar/ISubdomainRegistrar.sol
// Compare this snippet from contracts/subdomainregistrar/SubdomainRegistrar.sol:
// pragma solidity ^0.8.13;
//

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

interface ISubdomainRegistrar {
    function setupDomain(
        bytes32 node,
        address token,
        uint256 fee,
        address beneficiary
    ) external;

    function register(
        bytes32 parentNode,
        string calldata label,
        address newOwner,
        address resolver,
        uint32 fuses,
        uint64 duration,
        bytes[] calldata records
    ) external;

    function renew(
        bytes32 parentNode,
        bytes32 labelhash,
        uint64 duration
    ) external payable returns (uint64 newExpiry);

    function batchRegister(
        bytes32 parentNode,
        string[] calldata labels,
        address[] calldata addresses,
        address resolver,
        uint32 fuses,
        uint64 duration,
        bytes[][] calldata records
    ) external;

    function batchRenew(
        bytes32 parentNode,
        bytes32[] calldata labelhashes,
        uint64 duration
    ) external payable 
}