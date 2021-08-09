const HelloWorld = artifacts.require('HelloWorld')

module.exports = function() {
    const instance = HelloWorld.at(HelloWorld.address)
    instance.greet().then(console.log)
}
