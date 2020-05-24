const { lifebankcodeUtils, concent2lifeUtils } = require('../utils')
const vaultApi = require('./vault.api')
const historyApi = require('./history.api')

const signup = async (account, data) => {
  const password = await vaultApi.getPassword(account)

  const consentTransaction = await concent2lifeUtils.consent(
    'lifebankcode', // @todo: use ENV
    account,
    password
  )
  await historyApi.insert(consentTransaction)

  const addSponsorTransaction = await lifebankcodeUtils.addSponsor(
    account,
    password,
    data
  )
  await historyApi.insert(addSponsorTransaction)
}

module.exports = {
  signup
}