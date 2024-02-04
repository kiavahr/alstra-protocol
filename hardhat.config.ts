import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

import 'hardhat-deploy';


const config: HardhatUserConfig = {
  solidity: {
		compilers: [
			{
				version: '0.8.19',
				settings: {
					optimizer: {
						enabled: true,
						runs: 2000,
					},
				},
			},
		],
	},
	namedAccounts: {
		deployer: 0,
		simpleERC20Beneficiary: 1,
	},
};

export default config;
