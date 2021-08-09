const { assert } = require('chai')

const HelloWorld = artifacts.require('HelloWorld.sol')

require('chai')
    .use(require('chai-as-promised'))
    .should()

contract('HelloWorld', (accounts) => {
    let contract

    beforeEach(async () => {
        contract = await HelloWorld.deployed()
    })

    describe('deployment', async () => {
        it('is deployed', async () => {
            contract.
        })
    })
})
