const AvaraNft = artifacts.require("AvaraNft");
module.exports = async function (deployer, network, accounts) {
	let res;
	await deployer.deploy(AvaraNft, "AVARANFT", "ANFT");
};
