# Lesson 21: Auction, Ad Rank, and Quality Score

**Phase 3 · Week 5 · Day 1** · 25 minutes

## Why this matters

Google Ads isn't a simple "highest bidder wins" auction. A better ad can beat a bigger bid and
pay less per click. Understanding how the auction works explains why relevance matters so much,
and why two advertisers bidding on the same keyword can pay very different prices.

## Key ideas

### How a search ad gets shown

Every time someone searches, Google runs an auction in a fraction of a second:

1. Find all ads whose keywords match the search.
2. Drop ads that aren't eligible: disapproved, wrong location, or below quality thresholds.
3. Calculate **Ad Rank** for each remaining ad.
4. Show the ads in order of Ad Rank, if they clear the minimum thresholds for each position.

### What decides Ad Rank

Google lists six factors:

1. **Your bid**
2. **The quality of your ads and landing page**
3. **Ad Rank thresholds:** Minimum quality needed to show at all, or in a top position
4. **The competitiveness of the auction:** How close competitors are
5. **The context of the search:** Location, device, time, the words used, other results on
   the page
6. **The expected impact of assets:** Sitelinks, callouts, and other extras. Lesson 24.

### What you pay

You rarely pay your maximum bid. Google charges roughly what you need to keep your position:
enough to beat the Ad Rank of the advertiser directly below you. Higher-quality ads usually pay
less per click for the same position.

A classic teaching simplification, which isn't Google's real formula:

```
Ad Rank   ≈ max bid × quality
Your CPC  ≈ (Ad Rank of the ad below you ÷ your quality) + $0.01
```

Practice 21 uses this simplification to show why quality saves money.

### Quality Score

**Quality Score** is a 1–10 rating Google gives each keyword. It's a **diagnostic**: Google says
it isn't itself an input to the auction. It does tell you how your ad quality compares with
other advertisers. It has three parts, each rated **Above average**, **Average**, or **Below
average**:

| Component | Question | How to improve it |
|---|---|---|
| **Expected CTR** | Will people click this ad for this keyword? | Stronger, more specific ad copy |
| **Ad relevance** | Does the ad match the keyword's meaning? | Tighter ad groups. Use the keyword's language in the ad. |
| **Landing page experience** | Is the page useful and relevant to the search? | Message match, speed, mobile usability |

A low Quality Score points to the component to fix.

### Account structure, briefly

```
Google Ads account
  └── Campaign       budget, bidding, locations, networks
        └── Ad group   one theme
              ├── Keywords
              └── Ads
```

You design this properly in lesson 23.

### Creating your account without spending

You need a Google Ads account for Keyword Planner in lesson 22 and Ads Editor in lesson 26.
Google's sign-up tries hard to make you launch a campaign. Look for **Switch to Expert Mode**,
then an option to **create an account without a campaign**. Enter your country, time zone, and
currency. The time zone and currency can't be changed later.

If Google insists on card details before you can continue, stop. Every practice in this phase
has a fallback that needs no account.

## Common mistakes

- **Raising bids to fix a low position:** Improving relevance is often cheaper.
- **Chasing a 10/10 Quality Score:** It's a diagnostic. Fix "Below average" components, then
  focus on CPA.
- **Launching a Smart campaign by accident during sign-up:** Pause it and delete it if this
  happens.

## Learn more

Pick one (about 10 minutes):

- [About Ad Rank](https://support.google.com/google-ads/answer/1722122)
- [About Quality Score](https://support.google.com/google-ads/answer/6167118)
- [5 ways to use Quality Score](https://support.google.com/google-ads/answer/6167130)

## Key terms

Auction, Ad Rank, Ad Rank threshold, actual CPC, max CPC, Quality Score, expected CTR, ad
relevance, landing page experience. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 21](practice.md)
