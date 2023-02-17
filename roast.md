# Nouns Agora - Liquid Delegator

My code changes aren't probably compiling, is just for ideation purposes.

## starting with readme

Why isn't every rule a custom rule? We can deploy public goods basic/common/useful custom rules contracts so uers don't have to.

### questions on readme, my first reaction

1. Scoped to proxy. Delegation should not be treated lightly and should only be done if trust is estabilished.
2. No
3. No idea (will revisit later)
6. No upgrades. new deploys & redelegation to new version. The new features must be good enoug to overcome UX friction & costs.

**3 continued:**

Franchiser looks like a good option. Smart contract custody of funds looks inevitable without major community lift. Not sure if extra gas, ux, and security concerns are worth the benefits of subdiving the voting power.

I may be underestimating the power & new use-cases that custom rules in conjuction with partial delegation unlocks. This could be a sleeper killer feature. Good for a big bang V2. V2 could derisk the lift while we run user interviews to figure out if their use cases need partial delegation natively anyway (using multiple wallets will only get easier over time....)

Make partial delegation optional, those who opt in must "lose custody" of funds and expose to extra counter party risk. The more I think of this, the more I see the amount of overhead added by it.

**Fun silly rules to prove concepts**

Example: Only allow voting on rainy days using oracles/off-chain computation

**3 continued:**

The Best solution for this problem is full community coordination to create new standard (lmao, impossible). This would allow non-transfer partial delegation.


## Alligator.sol
validate() can be extra simple if everything is a custom rule. +readibility +simplicity +separation-of-concerns +extensibiliy

no castVoteBatched() ?

no uint256[] proposalIds & uint8[] supports on batched functions. This additon adds the ability to vote on multiple proposals in parallel & with diff intentions for each


## OnlyEthLessThan100.sol
TODO -> not on this custom rule. It should be implemented on own rule imo.

## ideas

Should rules be composable chains? so users can share recipes? each rule calls .next() on the chain and last on chain is a dummy to bail and wrap things up?

Allow batched calls to cast multi DAO votes? Allow proxy to hold multiple token delegations? Batched^2?