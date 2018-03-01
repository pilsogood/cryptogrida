pragma solidity ^0.4.18;

contract SampleToken {
	
	/* 전체 배열 밸런스 설정 */
	mapping (address => uint256) public balanceOf;

	/* 토큰 계약 초기화 */
    function SampleToken() public {
      timeOfLastHalving = now;
    }
    
}