

    # Create instance of contract

        let instance = await PuppyCoin.deployed()

    # Get total supply

        var supply = await instance.totalSupply();
        console.log(web3.utils.fromWei(supply))

    # Get name of token

        var name = await instance.name();
        console.log(name);

    # Get Symbol of token
        
        var symbol = await instance.symbol();
        console.log(symbol);

    # get decimals

        var decimals = await instance.decimals();
        console.log(decimals.words[0]);

    # mint tokens
        var amt = web3.utils.toWei("100")
        var mintRes1 = await instance.mint("0x6705f14C9B2cEb2AC3C0b1333BeF374Bb519D29f", amt)

        
    # get balance of tokens for an account

        var bal1 = await instance.balanceOf("0x6705f14C9B2cEb2AC3C0b1333BeF374Bb519D29f")
        console.log(web3.utils.fromWei(bal1))

    # transfer tokens

        var trans1 = await instance.transfer("0x72444052B8B7E6bB07b78CfaC1ec2c88f18682f5","1000000000000000000")
        var bal2 = await instance.balanceOf("0x72444052B8B7E6bB07b78CfaC1ec2c88f18682f5")
        console.log(web3.utils.fromWei(bal2))    

    # approve allowance
        var allowance = await instance.approve("0x72444052B8B7E6bB07b78CfaC1ec2c88f18682f5", "10000000000000000")

    # get allowance
        var allow1 = await instance.allowance("0x6705f14C9B2cEb2AC3C0b1333BeF374Bb519D29f","0x72444052B8B7E6bB07b78CfaC1ec2c88f18682f5")
        console.log(web3.utils.fromWei(allow1))    

    # transfer from owner's tokens with allowance

        var xferFrom = await instance.transferFrom("0x6705f14C9B2cEb2AC3C0b1333BeF374Bb519D29f","0x72444052B8B7E6bB07b78CfaC1ec2c88f18682f5", "1000000000000")

    # burn tokens

        var burn = await instance.burn("100000000000000000000")
        var bal3 = await instance.balanceOf("0x6705f14C9B2cEb2AC3C0b1333BeF374Bb519D29f")
        console.log(web3.utils.fromWei(bal3))