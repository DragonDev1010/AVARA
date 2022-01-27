require('chai')
    .use(require('chai-as-promised'))
    .should()

const {assert} = require('chai')

const AvaraNft = artifacts.require("AvaraNft");

contract('Marketplace Contract', (accounts) => {
    before(async() => {
        avaraNft = await AvaraNft.deployed()
    })
})