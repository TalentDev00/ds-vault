/*
   Copyright 2016 Nexus Development, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

pragma solidity ^0.4.6;

import "ds-auth/auth.sol";
import "erc20/erc20.sol";

contract DSMultiVault is DSAuth {
    function doTransfer(
        ERC20 token, address dst, uint x
    ) auth returns (bool) {
        return token.transfer(dst, x);
    }

    function doTransferFrom(
        ERC20 token, address src, address dst, uint x
    ) auth returns (bool) {
        return token.transferFrom(src, dst, x);
    }
}
