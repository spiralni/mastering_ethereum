const Faucet = artifacts.require('Faucet')
const HelloWorld = artifacts.require('HelloWorld')
const NotSoPrivateData = artifacts.require('NotSoPrivateData')

module.exports = async (deployer) => {
    await deployer.deploy(Faucet)
    await deployer.deploy(HelloWorld)
    await deployer.deploy(NotSoPrivateData)
}
