// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IMetadata {
    /**
     * @dev Retrieves metadata about the business process.
     * @param _processInstanceId The ID of the business process instance.
     * @return Metadata string.
     */
    function getProcessMetadata(
        bytes32 _processInstanceId
    ) external view returns (string memory);

    /**
     * @dev Retrieves metadata about a specific task within the business process.
     * @param _taskInstanceId The ID of the task instance.
     * @return Metadata string.
     */
    function getTaskMetadata(
        bytes32 _taskInstanceId
    ) external view returns (string memory);

    /**
     * @dev Updates metadata of the business process.
     * @param _processInstanceId The ID of the business process instance.
     * @param _metadata The updated metadata string.
     */
    function updateProcessMetadata(
        bytes32 _processInstanceId,
        string memory _metadata
    ) external;

    /**
     * @dev Updates metadata of a specific task within the business process.
     * @param _taskInstanceId The ID of the task instance.
     * @param _metadata The updated metadata string.
     */
    function updateTaskMetadata(
        bytes32 _taskInstanceId,
        string memory _metadata
    ) external;
}
