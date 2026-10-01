# Metrics cheat sheet

Every formula you need, with one worked example. Keep this file open during practice.

## The running example

A store runs one campaign for a week:

| Input | Value |
|---|---|
| Impressions | 50,000 |
| Clicks | 1,000 |
| Spend | $800 |
| Purchases | 40 |
| Revenue | $2,000 |
| Gross margin | 40% |

## Ad delivery metrics

| Metric | Formula | Example | Read it as |
|---|---|---|---|
| **CTR** (click-through rate) | clicks ÷ impressions | 1,000 ÷ 50,000 = **2%** | How often the ad earns a click |
| **CPC** (cost per click) | spend ÷ clicks | $800 ÷ 1,000 = **$0.80** | Price of one visitor |
| **CPM** (cost per mille) | spend ÷ impressions × 1,000 | $800 ÷ 50,000 × 1,000 = **$16** | Price of 1,000 ad views |
| **Frequency** | impressions ÷ reach | 50,000 ÷ 20,000 = **2.5** | Average times one person saw the ad |

## Conversion metrics

| Metric | Formula | Example | Read it as |
|---|---|---|---|
| **CVR** (conversion rate) | conversions ÷ clicks | 40 ÷ 1,000 = **4%** | How well the page turns visitors into buyers |
| **CPA** (cost per acquisition) | spend ÷ conversions | $800 ÷ 40 = **$20** | Price of one customer or lead |
| **AOV** (average order value) | revenue ÷ orders | $2,000 ÷ 40 = **$50** | Size of a typical order |

## Return metrics

| Metric | Formula | Example | Read it as |
|---|---|---|---|
| **ROAS** (return on ad spend) | revenue ÷ spend | $2,000 ÷ $800 = **2.5** | Revenue for every $1 of ads. Often written 2.5x or 250%. |
| **Gross profit** | revenue × margin | $2,000 × 0.40 = **$800** | Money left after product costs |
| **Profit after ads** | gross profit − spend | $800 − $800 = **$0** | What the campaign actually earned |
| **ROI** (return on investment) | profit after ads ÷ spend | $0 ÷ $800 = **0%** | Profit for every $1 of ads |
| **MER** (marketing efficiency ratio) | total revenue ÷ total ad spend, all channels | Account-wide version of ROAS | How the business does overall, regardless of attribution |

ROAS counts revenue. ROI counts profit. A ROAS of 2.5 sounds good, but in this example it
earns exactly nothing.

## Break-even and targets

| Metric | Formula | Example |
|---|---|---|
| **Break-even ROAS** | 1 ÷ gross margin | 1 ÷ 0.40 = **2.5** |
| **Break-even CPA** | AOV × gross margin | $50 × 0.40 = **$20** |
| **Target CPA** (with profit) | break-even CPA − profit you want per order | $20 − $5 = **$15** |
| **Target ROAS** (with profit) | AOV ÷ target CPA | $50 ÷ $15 = **3.33** |

Anything above break-even ROAS, or below break-even CPA, makes money on the first order.

## Customer value

| Metric | Formula | Example |
|---|---|---|
| **LTV** (lifetime value, gross profit) | AOV × orders per year × years as customer × margin | $50 × 4 × 2 × 0.40 = **$160** |
| **CAC** (customer acquisition cost) | total marketing cost ÷ new customers | $800 ÷ 40 = **$20** |
| **LTV to CAC ratio** | LTV ÷ CAC | $160 ÷ $20 = **8** |
| **Payback period** | CAC ÷ gross profit per month from one customer | $20 ÷ ($50 × 4 ÷ 12 × 0.40) = **3 months** |

A common rule of thumb is an LTV to CAC ratio of at least 3. Treat it as a starting point,
not a law.

## Search impression share

| Metric | Meaning |
|---|---|
| **Search impression share** | Impressions ÷ impressions you were eligible for |
| **Lost IS (budget)** | Share you missed because the budget ran out |
| **Lost IS (rank)** | Share you missed because Ad Rank was too low |

The three always add up to 100%.

## Video metrics (practitioner terms)

| Metric | Formula | Read it as |
|---|---|---|
| **Hook rate** | 3-second video plays ÷ impressions | Did the first seconds stop the scroll? |
| **Hold rate** | ThruPlays ÷ 3-second plays | Did people keep watching? |

Meta doesn't report these two directly. You calculate them from columns it does report.

## Quick checks

- Clicks never exceed impressions, so CTR is always below 100%.
- If CPC rises and CVR stays flat, CPA rises by the same proportion.
- CPA = CPC ÷ CVR. Example: $0.80 ÷ 0.04 = $20. This shows the two levers for lowering
  CPA: cheaper clicks, or better conversion.
- ROAS = AOV ÷ CPA. Example: $50 ÷ $20 = 2.5.
