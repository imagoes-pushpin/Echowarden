// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.20;

contract RuntimeBytecodeLens {
    function codeSize(address target) public view returns (uint256 size) {
        assembly {
            size := extcodesize(target)
        }
    }

    function hasBytecode(address target) external view returns (bool) {
        return codeSize(target) > 0;
    }

    function batchHasBytecode(address[] calldata targets) external view returns (bool[] memory out) {
        out = new bool[](targets.length);
        for (uint256 i = 0; i < targets.length; i++) {
            out[i] = codeSize(targets[i]) > 0;
        }
    }
}
