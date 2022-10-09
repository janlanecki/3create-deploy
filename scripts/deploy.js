async function main() {
  // Grab the contract factory 
  const Airdrop = await ethers.getContractFactory("Airdrop");

  // Start deployment, returning a promise that resolves to a contract object
  const airdrop = await Airdrop.deploy(); // Instance of the contract 

  await airdrop.deployed();

  console.log("Contract deployed to address:", airdrop.address);
}

main()
 .then(() => process.exit(0))
 .catch(error => {
   console.error(error);
   process.exit(1);
 });