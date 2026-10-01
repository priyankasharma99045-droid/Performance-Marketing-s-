# Practice 21: Run an auction and diagnose Quality Score

**30 minutes** · **You need:** A calculator, Google Sheets · **Save to:** `my-work/notes/lesson-21.md`

## Goal

See how quality changes position and price, diagnose real Quality Score problems, and set up
your Google Ads account.

## Steps

### Part 1: Run an auction (10 minutes)

Four advertisers bid on "coffee subscription". Use the simplified formulas from the lesson,
with a quality score of 1–10:

| Advertiser | Max bid | Quality |
|---|---|---|
| A | $2.00 | 4 |
| B | $1.50 | 8 |
| C | $1.00 | 10 |
| D | $3.00 | 2 |

1. Calculate each advertiser's Ad Rank: max bid × quality.
2. Rank them from 1 to 4.
3. Calculate the CPC for positions 1–3: (Ad Rank of the ad below ÷ your quality) + $0.01.
4. Which advertiser bids the most? Where does it end up?

### Part 2: Diagnose Quality Score (10 minutes)

Import [`practice-kit/data/search-keywords.csv`](../../../practice-kit/data/search-keywords.csv)
into Google Sheets.

1. Sort by `quality_score`, lowest first.
2. For the two lowest-scoring keywords, note which components are **Below average**.
3. For each, write one specific fix. Think about the ad group, the ad text, and the landing page.
4. Compare CPC for the highest and lowest Quality Score keywords. CPC = `cost` ÷ `clicks`.

### Part 3: Create your Google Ads account (10 minutes)

Follow the **Creating your account without spending** section in the lesson. Note in your
notes whether it worked, or where you stopped.

## Done when

- [ ] The auction table shows Ad Rank, position, and CPC.
- [ ] Two low-Quality Score keywords are diagnosed with a fix each.
- [ ] You recorded whether you created a Google Ads account without a campaign.

## Check yourself

1. What are the results of the auction?

   <details><summary>Answer</summary>

   | Position | Advertiser | Ad Rank | CPC |
   |---|---|---|---|
   | 1 | B | $1.50 × 8 = 12 | 10 ÷ 8 + $0.01 = **$1.26** |
   | 2 | C | $1.00 × 10 = 10 | 8 ÷ 10 + $0.01 = **$0.81** |
   | 3 | A | $2.00 × 4 = 8 | 6 ÷ 4 + $0.01 = **$1.51** |
   | 4 | D | $3.00 × 2 = 6 | Depends on the minimum threshold, or may not show |

   D bids the most and comes last. C pays the least of all, with the lowest bid, because its
   quality is highest.
   </details>

2. Which keywords have the lowest Quality Score, and what's wrong?

   <details><summary>Answer</summary>

   - **coffee gift (4):** All three components are Below average. It needs its own gift-themed
     ad that uses the word "gift", and a landing page about gifts, not the general page.
   - **specialty coffee (5):** Ad relevance is Below average. The ads don't talk about
     specialty coffee. Move it into an ad group with matching ads, or pause it if it doesn't
     convert. You check that in lesson 28.
   </details>

3. Compare CPC for the best and worst Quality Score keywords.

   <details><summary>Answer</summary>

   fresh roasted coffee (Quality Score 9): $165.30 ÷ 174 = **$0.95**. coffee gift (Quality
   Score 4): $267.80 ÷ 206 = **$1.30**. The low-quality keyword pays about 37% more per click.
   </details>

4. Is Quality Score used directly in the auction?

   <details><summary>Answer</summary>

   No. Google calls it a diagnostic. The auction uses real-time quality signals, which Quality
   Score summarizes.
   </details>

---

**Next:** [Lesson 22: Keyword research and match types](../22-keyword-research-and-match-types/lesson.md)
