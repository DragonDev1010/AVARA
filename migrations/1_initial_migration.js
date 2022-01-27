const OwnershipModule = artifacts.require("OwnershipModule");

module.exports = async function (deployer, network, accounts) {
	let res;
	deployer.deploy(OwnershipModule);
};
