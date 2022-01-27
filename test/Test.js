require('chai')
    .use(require('chai-as-promised'))
    .should()

const {assert} = require('chai')

const AvaraNft = artifacts.require("AvaraNft");
const OwnershipModule = artifacts.require("OwnershipModule")

contract('Marketplace Contract', (accounts) => {
    before(async() => {
        avaraNft = await AvaraNft.deployed()
        ownershipModule = await OwnershipModule.deployed()
    })
})