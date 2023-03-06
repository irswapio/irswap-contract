require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();
require('@openzeppelin/hardhat-upgrades');

module.exports = {
  defaultNetwork: "hardhat",
  etherscan: {
    apiKey: {
      bscTestnet: process.env.BSC_API_KEY,
      bsc: process.env.BSC_API_KEY,
    },
  },

  networks: {
    bscTestnet: {
      url: "",
      accounts: [process.env.PRIVATE_KEY],
      network_id: 97,
      gasPrice: "auto",
    },

    bsc: {
      url: "",
      accounts: [process.env.PRIVATE_KEY],
      network_id: 56,
      gasPrice: "auto",
    },
  },

  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts",
  },

  solidity: "0.8.17",
};
