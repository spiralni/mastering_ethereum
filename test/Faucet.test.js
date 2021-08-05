const { assert } = require('chai')

const Faucet = artifacts.require('Faucet.sol')

require('chai')
    .use(require('chai-as-promised'))
    .should()

contract('Faucet', (accounts) => {
    let contract

    beforeEach(async () => {
        contract = await Faucet.deployed()
    })

    describe('withdraw', async () => {
        it('withdraw amount less or equal to 0.1 eth', async () => {
            const result = await contract.withdraw("100000000000000000")
            console.log(result)
        })
    })
})
