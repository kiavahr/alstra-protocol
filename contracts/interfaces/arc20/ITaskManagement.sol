// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import {DataTypes} from "../../protocol/libraries/types/DataTypes.sol";

interface ITaskManagement {
    /**
     * @dev Creates a new task within the specified business process.
     * @param _processInstanceId The ID of the business process instance.
     * @param _taskName The name of the task.
     * @param _taskType The type of the task.
     */
    function createTask(
        bytes32 _processInstanceId,
        string memory _taskName,
        DataTypes.TaskType _taskType
    ) external;

    /**
     * @dev Connects two tasks, defining the sequential flow.
     * @param _processInstanceId The ID of the business process instance.
     * @param _fromTask The ID of the task from which the connection originates.
     * @param _toTask The ID of the task to which the connection leads.
     */
    function connectTasks(
        bytes32 _processInstanceId,
        bytes32 _fromTask,
        bytes32 _toTask
    ) external;

    /**
     * @dev Marks a task as completed and triggers the execution of subsequent tasks.
     * @param _processInstanceId The ID of the business process instance.
     * @param _taskInstanceId The ID of the task to be completed.
     * @param _data The data associated with the task completion.
     */
    function completeTask(
        bytes32 _processInstanceId,
        bytes32 _taskInstanceId,
        bytes32 _data
    ) external;
}
