# Lesson 25: Bidding and budgets

**Phase 3 · Week 5 · Day 5** · 25 minutes

## Why this matters

The bid strategy tells Google what you want: clicks, conversions, or revenue. The budget limits
how much it can spend getting it. Choose the wrong strategy and Google optimizes for the wrong
goal, very efficiently. Set targets badly and campaigns either stop spending or burn money.

## Key ideas

### The main bid strategies

| Strategy | Google tries to | Good for |
|---|---|---|
| **Manual CPC** | Bid exactly what you set per keyword | Full control. Rare in modern accounts. |
| **Maximize clicks** | Get the most clicks for the budget | Gathering traffic and data when conversions aren't tracked yet |
| **Maximize conversions** | Get the most conversions for the budget | Accounts with working conversion tracking |
| **Maximize conversions with a target CPA** | Get conversions at about your target cost | Lead generation, or stores with similar order values |
| **Maximize conversion value** | Get the most revenue for the budget | Stores with varying order values |
| **Maximize conversion value with a target ROAS** | Get revenue at about your target return | E-commerce with good revenue tracking |
| **Target impression share** | Show on a set share of searches, or at the top | Brand campaigns |

The four conversion-based strategies are called **Smart Bidding**. They set a different bid for
every auction, using signals such as device, location, time of day, and the search itself.

### Smart Bidding needs data

Smart Bidding learns from your conversions. Google suggests judging performance over periods
with at least 30 conversions, or 50 for target ROAS. With less data, it has less to learn
from, and results swing more.

After you launch, or make a big change, there's a **learning period**, usually one to two
weeks, when performance is unstable. Avoid more big changes during it.

### Choosing a strategy

```
Is conversion tracking working and tested?
  No  → Fix it first. Use Maximize clicks with a max CPC limit meanwhile.
  Yes → Do you track revenue values that vary?
          No  → Maximize conversions. Add a target CPA once you have steady volume.
          Yes → Maximize conversion value. Add a target ROAS once you have steady volume.
Brand campaign? → Often Target impression share, with a max CPC limit.
```

### Setting targets

- **Start from reality:** Set your first target CPA close to your actual recent CPA, not your
  dream number. A target far below reality makes Google bid so low that the campaign barely
  spends.
- **Move gradually:** Change targets by 10–20% at a time and wait for the learning period
  between changes.
- **Target ROAS is a percentage in Google Ads:** A target ROAS of 4 is entered as 400%.

### Budgets

The budget is an **average daily budget**:

- On a busy day, Google can spend up to **2 times** the daily budget.
- Over a month, Google won't charge more than the daily budget × 30.4, the average number of
  days in a month.

```
Daily budget = monthly budget ÷ 30.4
```

When a campaign shows **Limited by budget**, it's missing searches because the money runs out.
If it's profitable, that's money left on the table. If it isn't, fix efficiency before adding
budget.

A practical rule of thumb: give a Smart Bidding campaign a daily budget of several times its
target CPA, so it can get at least a few conversions a day to learn from.

## Common mistakes

- **Maximize conversions with broken tracking:** Google optimizes for nothing, or for the wrong
  action.
- **Aggressive targets on day one:** The campaign stops spending.
- **Changing everything during the learning period:** The campaign never settles.

## Learn more

Pick one (about 10 minutes):

- [Determine a bid strategy based on your goals](https://support.google.com/google-ads/answer/2472725)
- [About Smart Bidding](https://support.google.com/google-ads/answer/7065882)
- [Set an average daily budget](https://support.google.com/google-ads/answer/2375420)

## Key terms

Bid strategy, Manual CPC, Maximize clicks, Maximize conversions, Maximize conversion value,
target CPA, target ROAS, target impression share, Smart Bidding, learning period, average daily
budget, Limited by budget. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 25](practice.md)
