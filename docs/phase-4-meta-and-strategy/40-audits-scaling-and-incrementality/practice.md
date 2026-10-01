# Practice 40: Audit Pebble and measure incrementality

**30–45 minutes** · **You need:** Your sheets from practices 5, 27, 28, and 35 · **Save to:** `my-work/notes/lesson-40.md`

## Goal

Write a 10-point audit of Pebble's whole account from the sample data, and calculate the true
value of retargeting from a holdout test.

## Steps

### Part 1: The audit (25 minutes)

1. Review your work on Pebble's data from practices 3, 5, 27, 28, and 35.
2. Write **10 findings** in this table, covering at least 5 of the 8 audit areas from the lesson:

   | # | Area | Finding | Evidence | Impact | Action | Priority |
   |---|---|---|---|---|---|---|

   Use **High**, **Medium**, or **Low** for priority.
3. Write a 3-line executive summary at the top: overall health, the biggest problem, and the
   biggest opportunity.

### Part 2: The holdout test (10 minutes)

Pebble ran a 4-week holdout test on Meta retargeting:

| Group | People | Saw ads? | Purchases |
|---|---|---|---|
| Test | 10,000 | Yes | 400 |
| Holdout | 2,000 | No | 64 |

Ad spend on the test group was $1,500. AOV is $36. Meta reported all 400 purchases as
retargeting conversions.

1. Calculate the holdout group's purchase rate.
2. Calculate how many purchases the test group would have made without ads.
3. Calculate incremental purchases and incremental revenue.
4. Calculate the ROAS Meta reports and the incremental ROAS.
5. Is retargeting profitable on an incremental basis, with break-even ROAS at 2.5?

### Part 3: Scaling (5 minutes)

Pebble's best campaign spends $1,000 a month at a CPA of $12. Write a 4-week plan to scale it,
with weekly budget steps and the signal that would make you stop.

## Done when

- [ ] 10 findings are written, with evidence and priority, across at least 5 areas.
- [ ] The executive summary is written.
- [ ] All five holdout questions are answered with working.
- [ ] The scaling plan has weekly steps and a stop signal.

## Check yourself

1. What findings belong in a strong audit?

   <details><summary>Answer</summary>

   Strong findings include:

   - **Goals:** Blended ROAS is 2.51 against a 2.5 break-even. The account barely breaks even on
     first orders. (High)
   - **Targeting:** 20.8% of generic search spend went on search terms with no conversions, and
     the brand term "pebble coffee" leaks into the generic campaign. (High)
   - **Structure:** The Meta interest ad set is learning limited, at a $70 CPA. (High)
   - **Creative:** The barista video is fatiguing: CPA rose from $24.10 to $44.90 in 4 weeks.
     (High)
   - **Landing pages:** Generic search converts at 3.89%, but needs about 7.5% to break even.
     (High)
   - **Bidding and budget:** fresh roasted coffee is the only profitable generic keyword, and it
     loses 40% of impressions to budget. (Medium)
   - **Targeting:** specialty coffee has ROAS 0.27 and a $113.75 CPA. (Medium)
   - **Creative:** The retargeting free shipping ad has a frequency of 6.79. (Medium)
   - **Creative:** The product close-up video has a 15% hook rate, half the barista video's.
     (Medium)
   - **Goals:** The 20% discount ad raises break-even ROAS from 2.5 to 4.0, but it's judged
     against 2.5. (Medium)
   - **Reporting:** No MER or incrementality measurement, so channel credit is unverified.
     (Medium)
   </details>

2. What are the holdout results?

   <details><summary>Answer</summary>

   1. Holdout rate: 64 ÷ 2,000 = **3.2%**.
   2. Without ads, the test group would have made 10,000 × 3.2% = **320** purchases.
   3. Incremental purchases: 400 − 320 = **80**. Incremental revenue: 80 × $36 = **$2,880**.
   4. Reported ROAS: (400 × $36) ÷ $1,500 = $14,400 ÷ $1,500 = **9.6**. Incremental ROAS:
      $2,880 ÷ $1,500 = **1.92**.
   5. **No.** An iROAS of 1.92 is below the 2.5 break-even. 80% of the purchases Meta credited
      would have happened anyway. Pebble is overspending on retargeting.
   </details>

3. What does a sensible scaling plan look like?

   <details><summary>Answer</summary>

   For example, raise the monthly budget rate about 20% a week: $1,200 in week 1, $1,450 in week
   2, $1,750 in week 3, and $2,100 in week 4. Track the marginal CPA: extra spend ÷ extra conversions. Stop increasing when the
   marginal CPA passes the $14.40 break-even, even if the average CPA still looks fine.
   </details>

---

**Next:** Saturday is the [phase 4 checkpoint](../checkpoint.md), the last step of the course.
