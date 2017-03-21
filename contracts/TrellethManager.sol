pragma solidity ^0.4.6;

contract MiniMeTokenFactory {
    function createCloneToken(
        address _parentToken,
        uint _snapshotBlock,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol,
        bool _transfersEnabled
    )returns (address);
}

contract MiniMeToken {

}



contract TrellethManager {

	uint matchAmount;
	
	 function TrellethManager(){

	 }

	 function trellethIt(string _trelloCardId,uint _matchAmount) returns(MiniMeToken) {

	 	MiniMeTokenFactory factory = new MiniMeTokenFactory();

   		MiniMeToken newToken = new MiniMeToken(
            factory,
            0,
            0,
            _trelloCardId,
            0,
            'TTOK',
            true
            );

   		matchAmount = _matchAmount;

        //newToken.changeController(msg.sender);
        return newToken;	 	

	 }

}


}