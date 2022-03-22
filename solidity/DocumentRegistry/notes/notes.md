## Create Instance of Deployed Contract
    
    let instance = await DoumentRegistry.deployed()

## Add a document hash to the Document REgistry

This should be a document that has been hashed with a sha256 hash

    var added = await instance.add("6a2128aaf3197e455f54921fe54f75eef76e003488fbbbe644996bc5ee9059a6")

## Verify document hash is in registry

    var verificaion = await instance.verify("6a2128aaf3197e455f54921fe54f75eef76e003488fbbbe644996bc5ee9059a6");

## use the Verification data to display the date
    var dateNum = verification.toNumber();

Must be multiplied by 1000 because javascript date is milliseconds since 1970 and block.timestamp is seconds since 1970

    var dateNumEpoch = dateNum * 1000;
    var dt= new Date(dateNumEpoch);

    // march 22, 2022
    console.log(dt);
    // 2022
    console.log(dt.getFullYear());

