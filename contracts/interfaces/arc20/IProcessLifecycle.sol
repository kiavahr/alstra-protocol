// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IProcessLifecycle {
    /**
     * @dev Initializes a new business process.
     * @param _initiator The address of the process initiator.
     */
    function initializeProcess(address _initiator) external;

    /**
     * @dev Suspends the execution of the business process.
     */
    function suspendProcess() external;

    /**
     * @dev Resumes the execution of the business process.
     */
    function resumeProcess() external;

    /**
     * @dev Terminates the execution of the business process.
     */
    function terminateProcess() external;
}
