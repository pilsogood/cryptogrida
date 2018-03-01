pragma solidity ^0.4.18;

contract SampleToken {

    /* 전체 배열 밸런스 설정 */
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    /* 전체 배열 밸런스 설정 */
    string public constant _name = "SampleToken";                   // 토큰 이름
    string public constant _symbol = "SST";	                        // 토큰 심볼
    uint256 public constant _initialSupply= 42000000000000;         // 토큰 공급량 
    uint8 public constant _decimal = 18;

    /* 변수 설정 */
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    /* 토큰 계약 초기화 */
    function SampleToken( uint256 initialSupply, string tokenName, string tokenSymbol) public {
        decimals = _decimal;
        totalSupply = _initialSupply * (10 ** uint256(_decimal));   // 총 공급량을 설정해준다
        balanceOf[msg.sender] = totalSupply;                        // 작성자에게 공급량 전체를 할당해 준다
        name = _name;                                               // 표시할 심볼을 설정해준다
        symbol = _symbol;
    }

}