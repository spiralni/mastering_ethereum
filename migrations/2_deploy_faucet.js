const Faucet = artifacts.require('Faucet')

module.exports = async (deployer) => {
    await deployer.deploy(Faucet)
}
