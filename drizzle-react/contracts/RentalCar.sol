pragma solidity ^0.5.11;

contract RentalCar {
    mapping (address=>uint16) myRentCar;
    // 차량을 렌트합니다. 이때 10 ETH 에 대한 거래가 일어납니다.
    function rentCar() external payable {
        myRentCar[msg.sender]++;
    }

    // 내가 현재 렌트한 차량 수를 반환합니다. 수수료(가스)를 지불하게 됩니다.
    function getMyRentCar() external view returns(uint16) {
        return myRentCar[msg.sender];
    }
    // 렌트한 차량을 반납하면, 내가 가지고 있는 렌트 차량 수를 줄여줍니다.
    function returnRentCar() external payable {
        myRentCar[msg.sender]--;
    }
}