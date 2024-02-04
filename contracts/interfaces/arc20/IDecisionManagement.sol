// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IDecisionManagement {
    /**
     * @dev Evaluates decision points within the business process based on provided data.
     * @param _processInstanceId The ID of the business process instance.
     * @param _decisionId The ID of the decision gateway to be evaluated.
     * @param _decisionResult The result of the decision evaluation.
     */
    function evaluateDecision(
        bytes32 _processInstanceId,
        bytes32 _decisionId,
        bool _decisionResult
    ) external;

    /**
     * @dev Retrieves a list of decision gateways within the business process.
     * @param _processInstanceId The ID of the business process instance.
     * @return List of decision gateway IDs.
     */
    function getDecisionGateways(
        bytes32 _processInstanceId
    ) external view returns (bytes32[] memory);
}
