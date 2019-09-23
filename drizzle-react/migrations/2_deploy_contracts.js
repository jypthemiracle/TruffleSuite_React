var RentalCar = artifacts.require("./RentalCar.sol");
module.exports = function(deployer) {
    deployer.deploy(RentalCar);
};