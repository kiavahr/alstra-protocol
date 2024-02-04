// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IDataFlow {
    /**
     * @dev Sends data to a specific task instance within the business process.
     * @param _processInstanceId The ID of the business process instance.
     * @param _toTaskInstanceId The ID of the target task instance.
     * @param _data The data to be sent.
     */
    function sendData(
        bytes32 _processInstanceId,
        bytes32 _toTaskInstanceId,
        bytes32 _data
    ) external;

    /**
     * @dev Receives data from a specific task instance within the business process.
     * @param _fromTaskInstanceId The ID of the source task instance.
     * @param _data The received data.
     */
    function receiveData(bytes32 _fromTaskInstanceId, bytes32 _data) external;
}
