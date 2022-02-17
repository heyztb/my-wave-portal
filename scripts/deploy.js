const { ethers } = require("hardhat")

const main = async () => {
  const [owner] = await ethers.getSigners()
  const accountBalance = await owner.getBalance()

  console.log("Contract deployed by: ", owner.address)
  console.log("Account balance: ", accountBalance.toString())

  const Token = await ethers.getContractFactory("WavePortal")
  const portal = await Token.deploy({
    value: ethers.utils.parseEther("0.001"),
  })
  await portal.deployed()

  console.log("WavePortal address: ", portal.address)
}

const runMain = async () => {
  try {
    await main()
    process.exit(0)
  } catch (e) {
    console.log(e)
    process.exit(1)
  }
}

runMain()
