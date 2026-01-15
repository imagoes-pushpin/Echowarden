// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.20;

contract AddressTagbook {
    struct Tag {
        bytes32 label;
        uint64 createdAt;
        address creator;
    }

    mapping(address => Tag) private tags;

    event Tagged(address indexed target, bytes32 indexed label, address indexed creator, uint64 createdAt);

    function setTag(address target, bytes32 label) external {
        require(target != address(0), "zero target");
        tags[target] = Tag({
            label: label,
            createdAt: uint64(block.timestamp),
            creator: msg.sender
        });
        emit Tagged(target, label, msg.sender, uint64(block.timestamp));
    }

    function getTag(address target) external view returns (bytes32 label, uint64 createdAt, address creator) {
        Tag memory t = tags[target];
        return (t.label, t.createdAt, t.creator);
    }

    function hasTag(address target) external view returns (bool) {
        return tags[target].createdAt != 0;
    }
}
