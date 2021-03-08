# week-6-test
truffle(develop)> .exit
PS C:\Users\K1Amm\OneDrive\سطح المكتب\wwweek6> truffle develop
Truffle Develop started at http://127.0.0.1:9545/

Accounts:
(0) 0x7b393035771157ee8e9bd33f404fbbdadfb05d7b
(1) 0x99504b8ac1dd85a2a3f536cf8801fb1c22b84c04
(2) 0x1313ee5bc28b945343a35c4a154ce65d694522c6
(3) 0xd6d85c02c2a40109606fe22ec879180777109d15
(4) 0xb6098ffb8b46cf1a16829a616509931bb77faf0b
(5) 0x111474453d9f6a3a747f89d14c7c733609db0689
(6) 0xaad7816eacc92312a0d5ce71599d5f6a909c8324
(7) 0x05bca363c69209679d9364651f3ca1815858c177
(8) 0x2e9ce6bd73bbd574fbf0c7f4720461f47c1feb25
(9) 0xa272972cc5c516bbad7a965e4eafab226172c0c7

Private Keys:
(0) d09f7aa5715c838e80a10683e955c9d3c8411c3422fb18ec48e229874dd95772
(1) dc5749e35e371f5c359b1f77eba31db5955a74db2b05d9dd53a56ecc325eafd1
(2) 88a2bd544811689bb22a4b9b881217589610bfb75914b7fd415c6f9ded92f50b
(3) 93a30196bd7ed2ca0653aec9766b3da8a766e6f782fcd463c5183f4bf9a50399
(4) 26fcdaea59b901cb7f6349a7a03be49bf6015d9a10cc0c37aac02d9c96a866a2
(5) f01c57083a02081d8aa538f5253ae6b787f06db0da3e30df3819d6275c567260
(6) c0d0e81525d85c938c42feb41dcf336c8dcfd50f795d4980533bf2853b9f7d76
(7) dfa78d5a2821bb87fbc34040e6ad43950e1916c05dd09178c7cd3a8cf336e32e
(8) a5be79fbfa226426be04abdb1b01869bf64cef28b2d0abefbaa5badd60a2e576
(9) 84e06d569a4d9ef19ceef83713dcd442fc17f9ff8db3bb645cb91cb30e96f55d

Mnemonic: diary alarm stage visit enlist good end similar kitchen slow will agent

⚠️  Important ⚠️  : This mnemonic was created for you by Truffle. It is not secure.
Ensure you do not use it on production blockchains, or else you risk losing funds.

truffle(develop)> migrate --reset

Compiling your contracts...
===========================
> Compiling .\contracts\Migrations.sol
> Compiling .\contracts\TechInsurance.sol
> Compilation warnings encountered:

    /C/Users/K1Amm/OneDrive/سطح المكتب/wwweek6/contracts/TechInsurance.sol:27:5: Warning: Visibility for constructor is ignored. If you want the contract to be non-deployable, making it "abstract" is sufficient.
    constructor(address payable _insOwner) public { //ERC721("AlphaToken", "alpha")
    ^ (Relevant source part starts here and spans across multiple lines).

> Artifacts written to C:\Users\K1Amm\OneDrive\سطح المكتب\wwweek6\build\contracts
> Compiled successfully using:
   - solc: 0.7.0+commit.9e61f92b.Emscripten.clang



Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0xcbf95b2b0cf7a38108fb46698a8c56dae4c9a32deb3ccd93cb9c9a2e2605bf67
   > Blocks: 0            Seconds: 0
   > contract address:    0xBe920e565f8E0D17b56eF3b2C52dc3fB4088893F
   > block number:        1
   > block timestamp:     1615238732
   > account:             0x7B393035771157ee8E9bD33f404FbbdAdfb05D7b
   > balance:             99.99626098
   > gas used:            186951 (0x2da47)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00373902 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00373902 ETH


Summary
=======
> Total deployments:   1
> Final cost:          0.00373902 ETH


- Fetching solc version list from solc-bin. Attempt #1
√ Downloading compiler. Attempt #1.
- Blocks: 0            Seconds: 0
- Saving migration to chain.

truffle(develop)> test
Using network 'develop'.

Error: Cannot find module 'fs-extra'
Require stack:
- C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\debugger.js
- C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\build\consoleChild.bundled.js
    at Function.Module._resolveFilename (internal/modules/cjs/loader.js:880:15)
    at Function.Module._load (internal/modules/cjs/loader.js:725:27)
    at Module.require (internal/modules/cjs/loader.js:952:19)
    at require (internal/modules/cjs/helpers.js:88:18)
    at Object.call (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\external "fs-extra":1:18)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\compile-common\dist\src\profiler\updated.js:33:26)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\compile-common\dist\src\profiler\profiler.js:20:19)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\compile-common\dist\src\profiler\index.js:3:18)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\compile-common\dist\src\index.js:25:18)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\debugger\lib\session\index.js:31:1)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\debugger\lib\debugger.js:4:1)
    at r (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at Object.call (C:\Users\fainashalts\truffle-dev\truffle\packages\debugger\debugger.js:2:16)
    at __webpack_require__ (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:19:22)
    at C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\bootstrap:83:10
    at factory (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\debugger.js:1:1152)
    at C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\universalModuleDefinition:3:20
    at Object.<anonymous> (C:\Users\K1Amm\AppData\Roaming\npm\node_modules\truffle\node_modules\@truffle\debugger\dist\webpack\universalModuleDefinition:1:1)
    at Module._compile (internal/modules/cjs/loader.js:1063:30)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1092:10)
    at Module.load (internal/modules/cjs/loader.js:928:32)
    at Function.Module._load (internal/modules/cjs/loader.js:769:14)
