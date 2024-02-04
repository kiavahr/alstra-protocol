// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

library DataTypes {
    enum TaskType { UserTask, SystemTask, ServiceTask}
    enum TaskState { Started, SystemTask, Completed}
    enum EventType { ProcessStarted, TaskCompleted, DecisionMade }

    struct TaskInstance {
        bytes32 taskId;
        string taskName;
        address assignee;
        bool completed;
        bytes32 dataHash;
        TaskType taskType;
        bytes32[] connections; // Task IDs of next tasks in sequence
    }

    struct DecisionGateway {
        bytes32 gatewayId;
        bool decisionResult;
        bytes32[] trueConnections;  // Task or Gateway IDs on true evaluation
        bytes32[] falseConnections; // Task or Gateway IDs on false evaluation
    }

    struct ProcessMetadata {
        string name;
        string description;
        string version;
    }

    struct ProcessState {
        bytes32 processInstanceId;
        address initiator;
        address currentParticipant;
        ProcessMetadata metadata;
        mapping(bytes32 => TaskInstance) tasks;
        mapping(bytes32 => DecisionGateway) decisionGateways;
        mapping(bytes32 => bytes32[]) taskConnections;
        mapping(bytes32 => bytes32[]) decisionConnections;
        bytes32[] taskSequence; // Order of task execution
    }

}