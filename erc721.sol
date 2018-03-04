pragma solidity ^0.4.18;

/* 사용자 권한 설정*/
contract Ownable {
  address public owner;

  /* 계약서의 소유자를 발신자 계정에 설정 */
  function Ownable() {
    owner = msg.sender;
  }

  /* 소유자 이외의 계정일 시 */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * 현재 소유자가 계약서의 권한을 신규 소유자에게 양도 할 수 있다.
   * @param 소유권을 이전할 주소 
   */
  function transferOwnership(address newOwner) onlyOwner {
    if (newOwner != address(0)) {
      owner = newOwner;
    }
  }
}

contract Erc721 {
    // Required methods
    function totalSupply() public view returns (uint256 total);
    function balanceOf(address _owner) public view returns (uint256 balance);
    function ownerOf(uint256 _tokenId) external view returns (address owner);
    function approve(address _to, uint256 _tokenId) external;
    function transfer(address _to, uint256 _tokenId) external;
    function transferFrom(address _from, address _to, uint256 _tokenId) external;

    // Events
    event Transfer(address from, address to, uint256 tokenId);
    event Approval(address owner, address approved, uint256 tokenId);

    // Optional
    // function name() public view returns (string name);
    // function symbol() public view returns (string symbol);
    // function tokensOfOwner(address _owner) external view returns (uint256[] tokenIds);
    // function tokenMetadata(uint256 _tokenId, string _preferredTransport) public view returns (string infoUrl);

    // ERC-165 Compatibility (https://github.com/ethereum/EIPs/issues/165)
    function supportsInterface(bytes4 _interfaceID) external view returns (bool);
}