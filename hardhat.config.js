/**
* @type import('hardhat/config').HardhatUserConfig
*/
require('dotenv').config();
require("@nomiclabs/hardhat-ethers");
// const { API_URL, PRIVATE_KEY } = process.env;
module.exports = {
   solidity: "0.8.4",
   defaultNetwork: "goerli",
   networks: {
      hardhat: {},
      // goerli: {
      //    url: API_URL,
      //    accounts: [`0x${PRIVATE_KEY}`]
      // },
      // for mainnet
      'optimism': {
        url: "https://mainnet.optimism.io",
        accounts: [privateKey1, privateKey2, ...]
      },
      // for testnet
      'optimism-goerli': {
        url: "https://goerli.optimism.io",
        accounts: [privateKey1, privateKey2, ...]
      },
      // for the local dev environment
      'optimism-local': {
        url: "http://localhost:8545",
        accounts: [privateKey1, privateKey2, ...]
      },
   },
}



