pragma solidity >=0.4.25 <0.6.0;

contract HelloWorld
{
    
    address public  Lahettaja;
    address public  Vastaaja;

    string public LahetysViesti;
    string public VastausViesti;

    constructor(string memory message) public
    {
        Lahettaja = msg.sender;
        LahetysViesti = message;
    }

    function LahetaViesti(string memory lahetysViesti) public
    {
        if (Lahettaja != msg.sender)
        {
            revert();
        }

        LahetysViesti = lahetysViesti;
    }

    function LahetaVastaus(string memory vastausViesti) public
    {
        Vastaaja = msg.sender;

        VastausViesti = vastausViesti;
    }
}