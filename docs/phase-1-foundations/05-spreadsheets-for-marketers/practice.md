# Practice 5: Build a metrics sheet

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `Lesson 05 - Metrics` in your Drive course folder. Put the link in `my-work/notes/lesson-05.md`.

## Goal

Turn raw campaign data into a summary you can read at a glance. You reuse this sheet in later
lessons.

## Steps

1. Import [`practice-kit/data/campaign-daily.csv`](../../../practice-kit/data/campaign-daily.csv)
   into a new Google Sheet. The [practice kit README](../../../practice-kit/README.md) explains
   how. Rename the tab `raw`.
2. Freeze the header row.
3. In the `raw` tab, add six columns to the right: `CTR`, `CPC`, `CPM`, `CVR`, `CPA`, `ROAS`.
   Write each formula in row 2 with `IFERROR`, then copy it down to row 57. For example, CTR
   in I2 is `=IFERROR(E2/D2, 0)`.
4. Format CTR and CVR as percent, and CPC, CPM, and CPA as currency.
5. Select all the data and insert a pivot table on a new tab named `summary`:
   - **Rows:** `campaign`
   - **Values:** SUM of `impressions`, `clicks`, `spend`, `conversions`, `revenue`
   - Add a **calculated field** named `ROAS`. Set **Summarize by** to **Custom**, and enter
     `=SUM(revenue)/SUM(spend)`.
   - Add a **calculated field** named `CPA` the same way, with `=SUM(spend)/SUM(conversions)`.
6. Check the pivot table against your answers from practice 3. They must match.
7. Make a second pivot table with **Rows:** `channel` instead of campaign.
8. On the `summary` tab, add conditional formatting: ROAS below 2.5 shows red, and 2.5 or above
   shows green.
9. In any empty cell, calculate the average of the daily ROAS values for Search - Brand with
   `=AVERAGEIF(C2:C57, "Search - Brand", N2:N57)`. Adjust `N` to your ROAS column. Compare it
   with the pivot table's ROAS for the same campaign.

## Done when

- [ ] The `raw` tab has six working metric columns with no errors.
- [ ] The campaign and channel pivot tables show correct totals and calculated ROAS and CPA.
- [ ] ROAS below break-even is highlighted red.
- [ ] Your notes link to the sheet.

## Check yourself

1. What are the ROAS and CPA by channel?

   <details><summary>Answer</summary>

   | Channel | Spend | Conversions | Revenue | ROAS | CPA |
   |---|---|---|---|---|---|
   | Google Ads | $3,935.42 | 323 | $11,586.07 | 2.94 | $12.18 |
   | Meta | $4,033.42 | 236 | $8,436.83 | 2.09 | $17.09 |
   </details>

2. The average of daily ROAS for Search - Brand is about 7.61. The pivot table says 7.54.
   Which is correct, and why do they differ?

   <details><summary>Answer</summary>

   7.54 is correct: total revenue ÷ total spend. The average of daily ROAS gives a small,
   low-spend day the same weight as a big day. Here the gap is small, but with uneven data it
   can be huge.
   </details>

3. Which campaigns turn red, with break-even ROAS at 2.5?

   <details><summary>Answer</summary>

   Search - Generic (1.60) and Prospecting (1.49). Search - Brand (7.54) and Retargeting
   (4.00) are green.
   </details>

4. Meta's ROAS is below break-even as a channel. Name one reason this might be misleading.

   <details><summary>Answer</summary>

   Prospecting on Meta introduces people who later buy through Google Search - Brand. Those
   sales count for Google, not Meta. Channel ROAS doesn't show how channels help each other.
   </details>

---

**Next:** Saturday is your [week 1 review](../README.md#week-1-review). After that, start [Lesson 6: Customer research and personas](../06-customer-research-and-personas/lesson.md).
