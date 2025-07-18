const { loadFixture } = require('@nomicfoundation/hardhat-network-helpers');
const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('Factory', function () {
  const FEE = ethers.parseUnits('0.01', 'ether');

  async function deployFixture() {
    const [deployer] = await ethers.getSigners();
    const Factory = await ethers.getContractFactory('Factory');
    const factory = await Factory.deploy(FEE);
    return { deployer, factory };
  }

  it('should set fee', async function () {
    const { factory } = await loadFixture(deployFixture);
    expect(await factory.fee()).to.equal(FEE);
  });

  describe('deployment', function () {
    it('should set owner', async function () {
      const { deployer, factory } = await loadFixture(deployFixture);
      expect(await factory.owner()).to.equal(deployer.address);
    });
  });
});
