# Lesson 20: Attribution

**Phase 2 · Week 4 · Day 5** · 25 minutes

## Why this matters

Add up the conversions that Google Ads, Meta, and GA4 each report, and you'll get more sales
than the business actually made. Each tool uses different rules to give credit. If you don't
understand why, you'll cut the wrong campaigns and fund the wrong ones.

## Key ideas

### What attribution is

A customer's journey often has several touchpoints:

```
Meta ad (Monday) → Google search for "Pebble coffee" (Thursday) → Email (Saturday) → Purchase
```

**Attribution** is the set of rules for deciding which touchpoint gets credit for the purchase.

### Common models

| Model | Credit goes to | Favors |
|---|---|---|
| **Last click** | The final touchpoint | Brand search, retargeting, email: whatever closes the sale |
| **First click** | The first touchpoint | Prospecting and awareness channels |
| **Linear** | Every touchpoint equally | Nobody, but it ignores that some steps matter more |
| **Position-based** | Mostly first and last, a little to the middle | A compromise |
| **Data-driven (DDA)** | Shared according to a model built from your own data | Depends on your data. It needs enough conversions to work. |

GA4 and Google Ads offer **data-driven** and **last click** models. Google removed first click,
linear, and the other rule-based models from both in 2023. You still need to understand them,
because other tools and many teams use them.

### Why platforms disagree

| Reason | Example |
|---|---|
| **Each platform credits itself** | Meta counts a sale if you saw its ad. Google counts it if you clicked its ad. Both claim the same sale. |
| **Different windows** | Meta's usual default: 7 days after a click or 1 day after a view. Google Ads: often 30 days after a click. |
| **View-through conversions** | Meta can count a sale from someone who only **saw** an ad. GA4 never does. |
| **Different dates** | Google Ads assigns a conversion to the click date. GA4 assigns it to the day it happened. |
| **Tracking gaps** | Consent, ad blockers, and cross-device journeys hit each tool differently. |
| **Modeling** | Each platform estimates missing conversions in its own way. |

### What to trust for what

| Question | Best source |
|---|---|
| Which ad or keyword works best **within** Meta or Google? | That platform's own reports |
| How do channels compare with each other? | GA4, with one consistent model |
| Is marketing as a whole working? | **MER**: total revenue ÷ total ad spend, from the business's own sales data |
| Does this channel cause sales that wouldn't happen anyway? | An incrementality test. Lesson 40. |

### Last click undervalues the start of the journey

Under last click, prospecting ads look weak because they rarely close the sale. Brand search
and retargeting look brilliant because they often do. If you cut prospecting, fewer people
start journeys, and brand search and retargeting shrink a few weeks later. This is one of the
most common and costly mistakes in performance marketing.

### GA4 attribution reports

GA4's **Advertising** section has:

- **Attribution paths:** The touchpoint sequences that led to key events.
- **Model comparison:** How credit changes between models.

## Common mistakes

- **Adding up platform-reported conversions:** You count the same sale several times.
- **Judging prospecting on last click:** It undervalues the channels that start journeys.
- **Changing models without telling anyone:** Historical comparisons stop making sense.

## Learn more

Pick one (about 10 minutes):

- [Get started with attribution (GA4)](https://support.google.com/analytics/answer/10596866)
- [About attribution models (Google Ads)](https://support.google.com/google-ads/answer/6259715)
- [About attribution settings (Meta)](https://www.facebook.com/business/help/460276478298895)

## Key terms

Attribution, touchpoint, last click, first click, linear, data-driven attribution,
attribution window, view-through conversion, MER. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 20](practice.md)
