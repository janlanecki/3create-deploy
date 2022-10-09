/**
* @type import('hardhat/config').HardhatUserConfig
*/
require('dotenv').config();
require("@nomiclabs/hardhat-ethers");
const { API_URL, PRIVATE_KEY } = process.env;
const privateKey = [`0x${PRIVATE_KEY}`]

module.exports = {
   solidity: "0.8.4",
   defaultNetwork: "goerli",
   networks: {
      hardhat: {},
      goerli: {
         url: API_URL,
         accounts: privateKey
      },
      // for mainnet
      // 'optimism': {
      //   url: "https://mainnet.optimism.io",
      //   accounts: privateKey
      // },
      // for testnet
      'optimism-goerli': {
        url: "https://goerli.optimism.io",
        accounts: privateKey
      },
      // for the local dev environment
      'optimism-local': {
        url: "http://localhost:8545",
        accounts: privateKey
      },
   },
}



