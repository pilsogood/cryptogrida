pragma solidity ^0.4.18;

contract SampleToken {

    /* 전체 배열 밸런스 설정 */
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    /* 변수 설정 */
    string public constant _name = "SampleToken";                   // 토큰 이름
    string public constant _symbol = "SST";                         // 토큰 심볼
    uint256 public constant _initialSupply= 42000000000000;         // 토큰 공급량 
    uint8 public constant _decimal = 18;

    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    /* 토큰 계약 초기화 */
    function SampleToken( uint256 initialSupply, string tokenName, string tokenSymbol) public {
        decimals = _decimal;
        totalSupply = _initialSupply * (10 ** uint256(_decimal));   // 총 공급량을 설정
        balanceOf[msg.sender] = totalSupply;                        // sender 에게 공급량 전체를 할당
        name = _name;                                               // 표시할 이름 설정
        symbol = _symbol;                                           // 표시할 심볼 설정				
    }

    /* 코인 전송 */
    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;                   // sender가 충분한 코인이 있는지 확인
        if (balanceOf[_to] + _value < balanceOf[_to]) throw;         // 오버플로우 체크 
        balanceOf[msg.sender] -= _value;                             // sender에게서 전송한 코인양을 뺌
        balanceOf[_to] += _value;                                    // 수신자에게는 전송한 코인양을 더함 
    }

}