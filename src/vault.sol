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

contract DSVault is DSAuth {
    ERC20 _token;

    function DSVault( ERC20 token ) {
        swap(token);
    }

    function push( address dst, uint x)
        auth
        returns (bool)
    {
        return _token.transfer(dst, x);
    }

    function pull(address src, uint x)
        auth
        returns (bool)
    {
        return _token.transferFrom(src, this, x);
    }

    function swap(ERC20 token)
        auth
    {
        _token = token;
    }
    
    function getToken() returns (ERC20 token)
    {
        return _token;
    }
}



