const contract = artifacts.require('Faucet.sol')

contract.web3.eth.getGasPrice((error, result) => {
    const price = Number(result)

    console.log(`Gas price is ${price} wei`)

    contract.deployed().then((instance) => {
        contract.send(web3.toWei(1, 'ether'))
        return instance.withdraw.estimateGas(web3.toWei(0.1, 'ether'))
    }).then((result) => {
        const gas = Number(result)
        console.log("gas estimation = " + gas + " units")
        console.log("gas cost estimation = " + (gas * gasPrice) + " wei")
        console.log("gas cost estimation = " + contract.web3.fromWei((gas * gasPrice), 'ether') + " ether")
    })
})