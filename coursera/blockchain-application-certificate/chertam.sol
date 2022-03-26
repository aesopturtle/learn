// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Chertam {
    struct Couple {
        bytes16 id;
        address partner1;
        address partner2;
        Status status;
    }

    mapping(bytes16 => Couple) public couples;

    enum Status { DATING, BREAKUP, ENGAGED, MARRIED, DIVORCED, SEPARATED }
    Status private coupleStatus;

    function setStatus(bytes16 id, address partner1, address partner2, Status status) public {
        Couple memory couple;
        couple.id = id;
        couple.partner1 = partner1;
        couple.partner2 = partner2;
        couple.status = status;

        couples[id] = couple;
    }

    function getStatus(bytes16 id) public view returns (Couple memory){
        return couples[id];
    }
}
