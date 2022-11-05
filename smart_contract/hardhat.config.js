// https://eth-goerli.g.alchemy.com/v2/e54afKBJ9ywCxtq6Y2cK3wJxHRQis5Q6

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url:'https://eth-goerli.g.alchemy.com/v2/e54afKBJ9ywCxtq6Y2cK3wJxHRQis5Q6',
      accounts:['c688ae193ec939e0b6d6df6dbdd18ae2c58aa9c19ca0bc99d1bfcf663ec9ea27']
    }
  }
}