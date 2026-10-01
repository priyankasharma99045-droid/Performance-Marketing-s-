# Lesson 28: Optimization playbook

**Phase 3 · Week 6 · Day 3** · 25 minutes

## Why this matters

Launching is the smaller part of the job. Most of a performance marketer's time goes into finding what's
wrong and fixing it, one change at a time. A repeatable diagnosis method stops you from
guessing, and stops you from changing ten things at once and learning nothing.

## Key ideas

### Diagnose with the metric tree

When your KPI moves, walk down the tree to find the cause:

```
CPA went up
├── CPC went up?
│     ├── More competition?          → Check auction insights, impression share lost to rank
│     ├── Quality Score dropped?      → Check the three components
│     └── Bid strategy changed?       → Check the change history
└── CVR went down?
      ├── Landing page problem?       → Speed, broken form, message match
      ├── Worse traffic?              → Check search terms for new irrelevant matches
      ├── Offer or price changed?     → Ask the business
      └── Tracking broke?             → Check conversions in GA4 and DebugView
```

Always check tracking early. A sudden drop to zero conversions is more often broken tracking
than a real collapse.

### The main levers

| Lever | Use when |
|---|---|
| **Negative keywords** | Search terms show irrelevant spend |
| **Pause a keyword** | It spends well above target with enough data to judge |
| **Change match type** | A broad keyword matches too loosely |
| **Bid or target change** | Performance is consistently above or below target |
| **Budget shift** | One campaign is profitable and limited by budget, another isn't |
| **New ads** | CTR is low or ad relevance is Below average |
| **Landing page** | CVR is low across many keywords |
| **Split out a keyword** | A star keyword is starved by a shared campaign budget |

### Budget lives at the campaign level

You can't give one keyword more budget. If a profitable keyword loses impression share to
budget, either cut waste elsewhere in the campaign so more money flows to it, or move it into
its own campaign with its own budget.

### How much data before deciding?

A rough guide: don't judge a keyword until it has spent at least 2–3 times your target CPA.
Below that, one conversion more or less changes the picture completely.

### Change one thing, then wait

- Make one significant change per campaign at a time.
- Write it in a **change log**: date, what, why, expected result.
- Wait for enough data, and for the learning period with Smart Bidding, before judging.
- For big changes, use Google Ads **experiments**, which split traffic between the old and new
  setup.

### Recommendations and Optimization score

Google Ads shows **Recommendations** and an **Optimization score**. Some are useful, such as
fixing disapproved ads. Some mostly increase spend, such as "raise your budget" or "add broad
match". Judge each one against your target. A high Optimization score doesn't mean a profitable
account.

### Optimization rhythm

| How often | What to do |
|---|---|
| **Daily (5 minutes)** | Spend and conversions look normal? Anything disapproved or broken? |
| **Weekly** | Search terms, negatives, keyword and ad performance, budget pacing |
| **Monthly** | Structure, bid targets, landing page tests, new keywords |

## Common mistakes

- **Changing many things at once:** You won't know which change worked.
- **Judging on tiny data:** Pausing a keyword after 8 clicks.
- **Accepting every recommendation:** Many raise spend more than results.

## Learn more

Pick one (about 10 minutes):

- [About impression share](https://support.google.com/google-ads/answer/2497703)
- [Google Ads best practices](https://support.google.com/google-ads/answer/6154846)

## Key terms

Metric tree, lever, change log, experiment, Recommendations, Optimization score. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 28](practice.md)
