# To Migrate Scripts

    truffle migrate

# To Migrate and reset the contract

    truffle migrate --reset

# To run the console.

    truffle console

# To get a handle on the contract

    let instance = await StoreValue.deployed()

# to set a value on the contract

    instance.set(42)

# to get the value

    instance.get()