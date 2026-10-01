# Lesson 35: Meta reporting and optimization

**Phase 4 · Week 7 · Day 5** · 25 minutes

## Why this matters

Meta reports dozens of metrics, and the default columns hide the ones that matter. Meta also
punishes constant tinkering through its learning phase. Knowing what to look at, how to diagnose
a problem, and when to leave a campaign alone is what separates good paid social managers from
busy ones.

## Key ideas

### Set up useful columns

The default Ads Manager view isn't enough. Save a **custom column preset** with:

| Group | Columns |
|---|---|
| Delivery | Spend, impressions, reach, frequency, CPM |
| Engagement | Link clicks, link CTR, CPC (link) |
| Video | 3-second video plays, ThruPlays. Use these to calculate hook rate and hold rate. |
| Conversion | Adds to cart, purchases, cost per purchase, purchase conversion value, purchase ROAS |

Use **Breakdowns** to split results by age, placement, platform, or device.

### Hook rate and hold rate

Two practitioner metrics for video, calculated from Meta's columns:

```
Hook rate = 3-second video plays ÷ impressions     Did the opening stop the scroll?
Hold rate = ThruPlays ÷ 3-second video plays       Did people keep watching?
```

A low hook rate means fix the first seconds. A good hook rate with a low hold rate means fix the
middle.

### The learning phase

After you launch an ad set or make a **significant edit**, Meta enters the **learning phase**.
Performance is less stable while it explores. An ad set usually needs about **50 optimization
events in 7 days** to exit learning.

Significant edits include changing the targeting, the creative, or the optimization event, adding
ads, pausing for 7 days or more, and large budget or bid changes.

**Learning limited** means the ad set is unlikely to get enough events to exit learning. Common
fixes:

- Combine ad sets, so events aren't split thinly
- Widen the audience
- Raise the budget
- Optimize for a more frequent event, as a last resort

### Diagnose with the Meta metric tree

```
Cost per purchase went up
├── CPM went up?        → Competition or season, a narrow audience, or poor ad quality
├── CTR went down?      → Creative fatigue, or a weak hook
└── CVR went down?      → Landing page, offer, price, or a tracking problem
```

### Creative fatigue

When the same people see an ad too often, results fade. The pattern over time:

- **Frequency** rises
- **CTR** falls
- **Cost per result** rises

Fix it by adding fresh creatives: new angles, not tweaks. Retargeting audiences fatigue fastest
because they're small.

### Ad relevance diagnostics

Meta rates each ad's **quality**, **engagement rate**, and **conversion rate** compared with ads
competing for the same audience. Below-average rankings point to what to fix.

### Optimization rules of thumb

- Judge an ad after it has spent at least 2–3 times your target CPA, unless its hook rate and CTR
  are clearly poor.
- Change budgets gradually. Large jumps can restart learning.
- Pause losers and add new concepts on a regular rhythm, such as weekly.
- Remember the attribution setting. Meta's usual default counts purchases within 7 days of a
  click or 1 day of a view.

## Common mistakes

- **Editing every day:** The ad set never leaves learning.
- **Too many small ad sets:** Each gets too few events, and all are learning limited.
- **Ignoring frequency in retargeting:** Small audiences burn out fast.

## Learn more

Pick one (about 10 minutes):

- [About the learning phase](https://www.facebook.com/business/help/112167992830700)
- [About ad relevance diagnostics](https://www.facebook.com/business/help/403110480493160)
- [About attribution settings](https://www.facebook.com/business/help/460276478298895)

## Key terms

Custom column preset, breakdown, hook rate, hold rate, learning phase, significant edit, learning
limited, creative fatigue, ad relevance diagnostics, attribution setting. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 35](practice.md)
