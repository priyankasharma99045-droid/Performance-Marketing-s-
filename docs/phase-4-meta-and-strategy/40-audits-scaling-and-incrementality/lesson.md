# Lesson 40: Audits, scaling, and incrementality

**Phase 4 · Week 8 · Day 5** · 25 minutes

## Why this matters

This final lesson brings everything together. An **audit** checks an account against everything
you've learned. **Scaling** grows what works without breaking it. **Incrementality** answers the
hardest question in the field: would these sales have happened without the ads?

## Key ideas

### Account audits

An audit is a structured review of an ad account. Work through it in this order, because each
area depends on the one before it:

| # | Area | Check |
|---|---|---|
| 1 | **Tracking** | Primary conversions correct, firing once, with values? Consent set up? |
| 2 | **Goals** | Targets based on break-even maths? Campaigns optimizing for the right event? |
| 3 | **Structure** | Brand separate from non-brand? Ad sets too fragmented to learn? |
| 4 | **Targeting** | Search terms clean, negatives in place, exclusions between funnel stages? |
| 5 | **Creative** | Enough distinct concepts? Fatigue? Message match with landing pages? |
| 6 | **Bidding and budget** | Strategy fits the data volume? Profitable campaigns limited by budget? |
| 7 | **Landing pages** | Fast, mobile-friendly, clear offer, matching the ads? |
| 8 | **Reporting** | Clear KPIs, consistent attribution, MER tracked? |

Write each finding as: **finding, evidence, impact, action, priority.**

### Scaling

| Type | How | Watch for |
|---|---|---|
| **Vertical** | More budget for the same campaigns | Diminishing returns. Raise budgets in steps, such as 20% at a time, and watch marginal CPA. |
| **Horizontal** | New audiences, creatives, keywords, channels, or countries | Each new area needs its own learning period and budget |

Scaling usually raises CPA. The question isn't "does CPA stay the same?" but "is the **extra**
profit worth the **extra** spend?"

### Incrementality

Attribution assigns credit. **Incrementality** measures cause: the sales that happened **only
because** of the ads.

The main methods:

| Method | How it works |
|---|---|
| **Holdout test** | Randomly stop showing ads to part of the audience, such as 10–20%. Compare purchases between the two groups. |
| **Conversion lift study** | Meta and Google can run holdout tests for you, on eligible accounts |
| **Geo test** | Turn ads off, or up, in some regions and compare with similar regions |
| **On and off test** | Pause a channel for a period and watch total sales. Simple, but other changes add noise. |

The key number is **incremental ROAS (iROAS)**:

```
Incremental conversions = conversions in the test group − what the test group would have done anyway
iROAS = incremental revenue ÷ ad spend
```

Retargeting and brand search often look excellent in platform reports and much weaker in
incrementality tests, because many of those customers would have bought anyway.

### Marketing mix modeling (MMM)

**MMM** is a statistical model that uses two or more years of weekly data on spend by channel,
sales, seasonality, prices, and promotions. It estimates how much each channel contributes,
including channels that are hard to track, such as TV. It also models:

- **Saturation:** Diminishing returns as spend grows.
- **Adstock:** Ads keep working for a while after they run.

Google's [Meridian](https://developers.google.com/meridian) and Meta's
[Robyn](https://facebookexperimental.github.io/Robyn/) are free, open-source MMM tools. MMM needs
lots of data and statistical skill. It's mainly used by larger advertisers to plan budgets.

### Triangulation

No single method is the truth. Mature teams combine them:

| Method | Used for |
|---|---|
| Platform reporting | Day-to-day optimization within a channel |
| GA4 attribution | Comparing channels and journeys |
| Incrementality tests | Checking what really causes sales, and calibrating the others |
| MMM | Long-term budget allocation |
| MER | The overall health check |

## Common mistakes

- **Auditing creative before tracking:** If tracking is wrong, every other finding is suspect.
- **Doubling budgets overnight:** Restarts learning and inflates CPA.
- **Treating platform ROAS as incremental:** It almost always overstates the true effect.

## Learn more

Pick one (about 10 minutes):

- [Meridian](https://developers.google.com/meridian): Read the overview page.
- [About A/B testing (Meta)](https://www.facebook.com/business/help/1738164643098669): Look at how holdout-style tests are set up.

## Key terms

Audit, vertical scaling, horizontal scaling, marginal CPA, incrementality, holdout test,
conversion lift, geo test, iROAS, MMM, saturation, adstock, triangulation. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 40](practice.md)
