# Practice 3: Calculate the core metrics

**30 minutes** · **You need:** A calculator or a blank spreadsheet · **Save to:** `my-work/notes/lesson-03.md`

## Goal

Calculate all six core metrics by hand for four real-looking campaigns, then explain what the
numbers say.

## The data

Pebble Coffee Co. ran four campaigns for 14 days. These are the totals from
[`practice-kit/data/campaign-daily.csv`](../../../practice-kit/data/campaign-daily.csv):

| Campaign | Impressions | Clicks | Spend | Conversions | Revenue |
|---|---|---|---|---|---|
| Google: Search - Brand | 12,229 | 1,480 | $890.82 | 178 | $6,716.94 |
| Google: Search - Generic | 67,562 | 2,797 | $3,044.60 | 145 | $4,869.13 |
| Meta: Prospecting | 341,466 | 3,755 | $3,068.26 | 131 | $4,575.39 |
| Meta: Retargeting | 68,893 | 1,367 | $965.16 | 105 | $3,861.44 |

- **Search - Brand** shows ads to people who search "Pebble coffee".
- **Search - Generic** shows ads for searches such as "coffee beans online".
- **Prospecting** shows ads to people who don't know Pebble.
- **Retargeting** shows ads to people who visited the site.

## Steps

1. In your notes, copy the table and add six columns: CTR, CPC, CPM, CVR, CPA, and ROAS.
2. Calculate every metric for every campaign. Use a calculator, not spreadsheet formulas.
   Round money to 2 decimals and percentages to 2 decimals.
3. Add a **Total** row. Add up the raw numbers first, then calculate the metrics from the
   totals.
4. Use the shortcut to check one campaign: CPA equals CPC ÷ CVR.
5. Answer the questions in **Check yourself**.

## Done when

- [ ] All 30 cells are filled.
- [ ] The Total row is calculated from summed totals.
- [ ] You answered all the questions in your notes before looking.

## Check yourself

1. What are the metrics for each campaign?

   <details><summary>Answer</summary>

   | Campaign | CTR | CPC | CPM | CVR | CPA | ROAS |
   |---|---|---|---|---|---|---|
   | Search - Brand | 12.10% | $0.60 | $72.84 | 12.03% | $5.00 | 7.54 |
   | Search - Generic | 4.14% | $1.09 | $45.06 | 5.18% | $21.00 | 1.60 |
   | Prospecting | 1.10% | $0.82 | $8.99 | 3.49% | $23.42 | 1.49 |
   | Retargeting | 1.98% | $0.71 | $14.01 | 7.68% | $9.19 | 4.00 |
   | **Total** | 1.92% | $0.85 | $16.26 | 5.95% | $14.26 | 2.51 |
   </details>

2. Why does Search - Brand have by far the highest CTR and CVR?

   <details><summary>Answer</summary>

   The people searching "Pebble coffee" already know the brand and are probably looking to
   buy. It's the warmest traffic possible.
   </details>

3. Prospecting has the lowest CPM but one of the highest CPAs. How can both be true?

   <details><summary>Answer</summary>

   Views are cheap, but few viewers click (1.10% CTR) and fewer of those buy (3.49% CVR).
   Cheap attention doesn't mean cheap customers.
   </details>

4. Prospecting has the lowest ROAS. Is turning it off the right move for Pebble?

   <details><summary>Answer</summary>

   Not on this evidence alone. Prospecting introduces strangers to the brand. Some of them
   later search "Pebble coffee" or get retargeted, and those sales show up under Brand and
   Retargeting. Turning off Prospecting could shrink the other two campaigns. Lesson 20
   explains this in detail.
   </details>

5. Why must you calculate the Total row from summed totals and not by averaging the four
   CTRs?

   <details><summary>Answer</summary>

   The campaigns have very different sizes. Averaging four CTRs gives Brand (12,229
   impressions) the same weight as Prospecting (341,466 impressions). The average of the
   four CTRs is 4.83%. The true total CTR is 1.92%.
   </details>

---

**Next:** [Lesson 4: Unit economics](../04-unit-economics/lesson.md)
