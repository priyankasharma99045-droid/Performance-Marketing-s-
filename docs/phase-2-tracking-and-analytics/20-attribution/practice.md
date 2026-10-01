# Practice 20: Compare attribution models by hand

**30 minutes** · **You need:** Google Sheets or paper · **Save to:** `my-work/notes/lesson-20.md`

## Goal

Calculate first-click, last-click, and linear credit for real-looking journeys, and see how
the "best" channel changes with the model.

## The data

[`practice-kit/data/conversion-paths.csv`](../../../practice-kit/data/conversion-paths.csv)
has 12 Pebble purchases. Each lists the touchpoints, in order, and the revenue:

| ID | Path | Revenue |
|---|---|---|
| C01 | Meta Prospecting > Google Search Brand | $36 |
| C02 | Google Search Generic | $34 |
| C03 | Meta Prospecting > Meta Retargeting | $38 |
| C04 | Meta Prospecting > Google Search Generic > Google Search Brand | $40 |
| C05 | Google Search Brand | $36 |
| C06 | Meta Prospecting > Email > Google Search Brand | $42 |
| C07 | Google Search Generic > Meta Retargeting | $35 |
| C08 | Meta Prospecting > Meta Retargeting > Email | $37 |
| C09 | Google Search Generic > Google Search Brand | $33 |
| C10 | Meta Prospecting | $36 |
| C11 | Meta Prospecting > Google Search Brand | $39 |
| C12 | Email | $30 |

## Steps

1. Make a table with one row per channel: Meta Prospecting, Meta Retargeting, Google Search
   Generic, Google Search Brand, and Email. Add three columns: **First click**, **Last click**,
   and **Linear**.
2. **First click:** For each purchase, give all its revenue to the first touchpoint. Add up by
   channel.
3. **Last click:** Give all the revenue to the last touchpoint. Add up by channel.
4. **Linear:** Split each purchase's revenue equally across its touchpoints. A 3-step path
   gives each channel one third. Add up by channel.
5. Check that each column adds up to $436, the total revenue.
6. Answer the questions in your notes.

## Done when

- [ ] All three models are calculated for all five channels.
- [ ] Each column totals $436.
- [ ] You answered every question before checking.

## Check yourself

1. What are the totals by model?

   <details><summary>Answer</summary>

   | Channel | First click | Last click | Linear |
   |---|---|---|---|
   | Meta Prospecting | $268 | $36 | $132.17 |
   | Meta Retargeting | $0 | $73 | $48.83 |
   | Google Search Generic | $102 | $34 | $81.33 |
   | Google Search Brand | $36 | $226 | $117.33 |
   | Email | $30 | $67 | $56.33 |
   | **Total** | $436 | $436 | $436 (rounding) |
   </details>

2. Under last click, Meta Prospecting gets $36. Under first click, it gets $268. What does that
   tell you?

   <details><summary>Answer</summary>

   Prospecting starts most journeys but rarely closes them. Last click makes it look almost
   useless, though it's involved in 7 of the 12 purchases.
   </details>

3. A manager looks only at last click and says "cut Meta Prospecting, Google Brand drives
   everything". What would you expect to happen over the next few weeks?

   <details><summary>Answer</summary>

   Fewer people discover Pebble, so fewer later search for "Pebble coffee". Brand search
   revenue would likely fall, along with retargeting, which needs prospecting to fill its
   audience.
   </details>

4. In the same week, Google Ads reports 300 conversions, Meta reports 250, and the store's own
   system shows 400 orders. How can platforms report 550 in total?

   <details><summary>Answer</summary>

   Both platforms claim credit for the same orders. A customer who saw a Meta ad and clicked a
   Google ad is counted by both. Meta may also count view-through conversions.
   </details>

5. What number tells you whether marketing as a whole is working, without any attribution
   model?

   <details><summary>Answer</summary>

   MER: total revenue ÷ total ad spend, using the business's own sales data.
   </details>

---

**Next:** Saturday is the [phase 2 checkpoint](../checkpoint.md).
