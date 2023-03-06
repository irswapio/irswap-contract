const { ethers, upgrades } = require("hardhat");

async function main() {
  // Deploying
  const IRSWAP = await ethers.getContractFactory("contracts/IRSWAP.sol:IRSWAP");
  const instance = await upgrades.deployProxy(IRSWAP, ['0x10ED43C718714eb63d5aA57B78B54704E256024E'], {initializer: 'initialize'});
  await instance.deployed();

  console.log('instance address:' + instance.address);
}

main();