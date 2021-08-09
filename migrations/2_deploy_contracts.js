const Faucet = artifacts.require('Faucet')
const HelloWorld = artifacts.require('HelloWorld')

module.exports = async (deployer) => {

    if (network == "rinkeby" || network == "mainnet") {
        // read pass from a secret file
        /*
        var password = fs.readFileSync("password", "utf8")
        .split('\n')[0];
        web3.personal.unlockAccount(web3.eth.accounts[0], password)
        */
    }

    await deployer.deploy(Faucet)
    await deployer.deploy(HelloWorld)
}
