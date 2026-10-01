# Practice 39: Build a dashboard and write a weekly report

**30–45 minutes** · **You need:** Your `Lesson 05 - Metrics` sheet, and Data Studio · **Save to:** `my-work/notes/lesson-39.md`, with the dashboard link and the report

## Goal

Build a one-page Data Studio dashboard from Pebble's campaign data, and use it to write a weekly
report.

## Steps

### Part 1: The dashboard (20 minutes)

1. Open [Data Studio](https://datastudio.google.com/) and create a blank report.
2. Add a data source: choose **Google Sheets**, then your `Lesson 05 - Metrics` sheet and its
   `raw` tab.
3. Add calculated fields to the data source:
   - `ROAS` = `SUM(revenue) / SUM(spend)`
   - `CPA` = `SUM(spend) / SUM(conversions)`
4. Build the page:
   - **Top row:** five scorecards: spend, revenue, conversions, CPA, and ROAS.
   - **Middle:** a time series of spend and revenue by date.
   - **Bottom:** a table by campaign with spend, conversions, CPA, and ROAS.
   - **Controls:** a date range control and a drop-down filter on `channel`.
5. Turn on **comparison to previous period** on the scorecards.
6. Give the report a clear title, and add a text box defining ROAS and CPA.

### Part 2: The weekly report (15 minutes)

1. Set the date range to **March 9–15, 2026**, which is week 2 of the sample data, compared with
   the previous period.
2. Copy [`templates/weekly-report.md`](../../../templates/weekly-report.md) into your notes and
   fill it in for week 2.
3. Keep the summary to three lines: result, why, and next.

## Done when

- [ ] The dashboard has scorecards, a time series, a campaign table, and two controls.
- [ ] ROAS and CPA are calculated from sums.
- [ ] The weekly report is complete, with a three-line summary.
- [ ] The dashboard link is in your notes.

## Check yourself

1. How did week 2 compare with week 1 overall?

   <details><summary>Answer</summary>

   | | Week 1 | Week 2 | Change |
   |---|---|---|---|
   | Spend | $3,924.91 | $4,043.93 | +3.0% |
   | Conversions | 279 | 280 | +0.4% |
   | Revenue | $9,943.22 | $10,079.68 | +1.4% |
   | CPA | $14.07 | $14.44 | +2.6% |
   | ROAS | 2.53 | 2.49 | −1.6% |
   </details>

2. Which campaigns drove the change?

   <details><summary>Answer</summary>

   | Campaign | Week 1 ROAS | Week 2 ROAS |
   |---|---|---|
   | Search - Brand | 7.39 | 7.68 |
   | Search - Generic | 1.72 | 1.49 |
   | Prospecting | 1.42 | 1.56 |
   | Retargeting | 4.20 | 3.80 |

   Search - Generic is the main drag: its CPA rose from $19.52 to $22.63 while its spend rose 5%.
   Retargeting also slipped. Prospecting improved.
   </details>

3. Write a model three-line summary.

   <details><summary>Answer</summary>

   - **Result:** ROAS was 2.49, slightly below the 2.5 break-even, down from 2.53.
   - **Why:** Generic search got less efficient (CPA up from $19.52 to $22.63), outweighing better
     prospecting.
   - **Next:** Add the negatives from the search term review, and move budget to the top
     generic keyword.
   </details>

---

**Next:** [Lesson 40: Audits, scaling, and incrementality](../40-audits-scaling-and-incrementality/lesson.md)
