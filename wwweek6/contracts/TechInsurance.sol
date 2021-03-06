//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0 ;

// import "./InsuranceInterface.sol";
 //import "../github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
 //import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

/**
 * @title Tech Insurance tor
 * @dev complete the functions
 */

contract TechInsurance {
    
    struct Product {
        uint productId;
        string productName;
        uint price;
        bool offered;
    }
     
    struct Client {
        bool isValid;
        uint time;
    }
    address payable public insOwner;
    constructor(address payable _insOwner) public { //ERC721("AlphaToken", "alpha")
       insOwner = _insOwner;
   }
    
    mapping(uint => Product) public productIndex;
    mapping(address => mapping(uint => Client)) public client;
  
   mapping(address => uint256) private _balance;
   mapping(uint256 => address) private _owners;
   
   function _balanceOf(address owner) public view returns(uint256){
       require(owner !=address(0));
       return _balance[owner];
   }
   
    function _ownerOf(uint256 _id) public view returns(address){
       address owner = _owners[_id];
       require(owner != address(0));
       return _owners[_id];
   }
  
    
    uint productCounter;
    
    //address payable public insOwner ;
    
 
    function addProduct(uint _productId, string memory _productName, uint _price ) public  {
        Product memory newProduct = Product (_productId, _productName, _price, true);
        productIndex[productCounter++] = newProduct;
        _mint(msg.sender, productCounter);
    //   address ownerOfAddress =  ownerOf(uint256(productCounter));
    //   return ownerOfAddress;

    }
    
    
    function changeFalse(uint _productIndex) public  onlyOwner {
        productIndex[_productIndex].offered = false;
    }
    
    function changeTrue(uint _productIndex) public  onlyOwner{
        productIndex[_productIndex].offered = true;
    }
    
    modifier onlyOwner {
      require(msg.sender == insOwner, "you are not the owner" );
      _;
      revert("do not run this function again it cost you some fees");
     }
 
     
    function changePrice(uint _productIndex, uint _price) public  onlyOwner{
        productIndex[_productIndex].price = _price;
    }

    function buyInsurance(uint _productIndex) public  payable {
        require(productIndex[_productIndex].offered == true, "Tha Insurance is not available");
        Client memory newClient = Client (true, block.timestamp);
        client[msg.sender][_productIndex] =   newClient ;
        require(msg.value  == productIndex[_productIndex].price, "check the amount of the Insurance");
        uint256 price = productIndex[_productIndex].price;
        payable(msg.sender).transfer(price);

    } 
   function transferInsurance( address to, uint256 _id) public {
        //address owner=msg.sender;
       require(msg.sender != to," You are the owner of this Insurance ");
       require(_ownerOf(_id) == msg.sender," Your not the Owner ");
        _transfer(msg.sender, to, _id);
        
    }
    
    function _transfer(address from, address to, uint256 tokenId) public {
        require(to != address(0));

        _balance[from] -= 1;
        _balance[to] += 1;
        _owners[tokenId] = to;

    }
    function _mint(address to, uint256 tokenId) internal virtual {
        require(to != address(0));

        _balance[to] += 1;
        _owners[tokenId] = to;

    }
    




    
}
