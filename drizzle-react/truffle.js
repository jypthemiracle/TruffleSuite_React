module.exports = {
    networks: {
        development: {
            host: "127.0.0.1", //Ethereum Client Address, here is local
            port: 7545, //The basic port of Ganache
            network_id: "*" //match any network id(s), here is private network
        }
    }
};