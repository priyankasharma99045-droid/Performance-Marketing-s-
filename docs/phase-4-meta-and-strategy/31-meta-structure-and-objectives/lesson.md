# Lesson 31: Meta structure and objectives

**Phase 4 · Week 7 · Day 1** · 25 minutes

## Why this matters

Meta (Facebook, Instagram, and Messenger) is the largest paid social platform, and the main way
many businesses create demand. Its setup looks like Google Ads but behaves differently. There are
no searches. Meta decides who sees your ad based on the objective you choose and the data you
send. Choose the wrong objective and Meta finds exactly the wrong people.

## Key ideas

### The accounts you need

| Asset | What it is |
|---|---|
| **Business portfolio** | The container for a business's Meta assets. Formerly called Business Manager. |
| **Ad account** | Where campaigns, billing, and reports live |
| **Facebook Page** and **Instagram account** | The identity your ads run from |
| **Dataset (pixel)** | Receives website events from the Pixel and Conversions API. Managed in **Events Manager**. |

### Campaign structure

```
Campaign   → objective, and optionally the budget (Advantage+ campaign budget)
  └── Ad set   → audience, placements, schedule, budget (if not set at campaign level), optimization goal
        └── Ad    → creative, text, call-to-action button, destination URL, UTM parameters
```

The ad set level matters most. It decides **who** and **what result Meta optimizes for**.

### Objectives

| Objective | Meta finds people likely to | Use for |
|---|---|---|
| **Awareness** | See and remember the ad | Reach, brand recall |
| **Traffic** | Click a link | Rarely the right choice for sales |
| **Engagement** | Like, comment, watch, or message | Social proof, video views, messaging |
| **Leads** | Submit a form or contact you | Lead generation |
| **App promotion** | Install or use an app | Apps |
| **Sales** | Buy, or complete another valuable website action | E-commerce and most conversion goals |

Meta optimizes for **exactly** what you ask. A Traffic campaign finds people who click a lot,
not people who buy. If you want sales, choose Sales and optimize for the `Purchase` event.

### How Meta's auction works

Meta's auction picks the ad with the highest **total value**:

```
Total value = your bid × estimated action rate + ad quality
```

- **Estimated action rate:** How likely this person is to do what you optimized for.
- **Ad quality:** Signals such as feedback from people who saw the ad.

Like Google, a more relevant ad can win with a lower bid.

### Budgets and placements

- **Advantage+ campaign budget**, formerly campaign budget optimization: You set one budget at
  campaign level, and Meta moves it between ad sets. The alternative is a separate budget per ad
  set.
- **Advantage+ placements:** Meta chooses across Feeds, Stories, Reels, and more. This is
  generally recommended, because more placements give Meta more ways to find cheap results.

### Advantage+

**Advantage+** is Meta's name for its automation features: Advantage+ audience, placements,
campaign budget, and **Advantage+ sales campaigns**, which automate most of the setup for sales
goals. Names and defaults change often. Check the labels in Ads Manager.

## Common mistakes

- **Traffic objective for a sales goal:** Lots of cheap clicks, few buyers.
- **Optimizing for a micro-conversion:** Meta finds add-to-carters, not buyers.
- **Building before the Pixel works:** Meta has no conversion data to optimize toward.

## Learn more

Pick one (about 10 minutes):

- [Choosing advertising objectives](https://www.facebook.com/business/help/1438417719786914)
- [About Meta Advantage+](https://www.facebook.com/business/help/733979527611858)
- [Meta Blueprint](https://www.facebookblueprint.com/student/catalog): Browse the free course on Ads Manager basics.

## Key terms

Business portfolio, ad account, dataset, Events Manager, campaign, ad set, ad, objective,
optimization goal, total value, Advantage+ campaign budget, Advantage+ placements, Advantage+.
See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 31](practice.md)
