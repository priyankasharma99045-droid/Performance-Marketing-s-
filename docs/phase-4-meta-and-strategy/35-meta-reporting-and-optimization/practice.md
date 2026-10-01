# Practice 35: Diagnose a Meta account

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `Lesson 35 - Meta` in your Drive course folder. Put the diagnosis in `my-work/notes/lesson-35.md`.

## Goal

Calculate Meta metrics at ad and ad set level, spot creative fatigue, and write an action plan.

## Steps

### Part 1: Ad-level metrics (15 minutes)

1. Import [`practice-kit/data/meta-ads.csv`](../../../practice-kit/data/meta-ads.csv).
2. Add these columns: `CPM`, `link_CTR`, `CPC`, `CVR` (purchases ÷ link clicks), `CPA`, `ROAS`,
   `hook_rate`, and `hold_rate`. Use `IFERROR` for image ads, which have no video plays.
3. Make a pivot table by `ad_set` with summed spend, purchases, and revenue, plus calculated
   CPA and ROAS.
4. Note each ad set's `delivery` status.

### Part 2: Fatigue check (5 minutes)

1. Open [`practice-kit/data/meta-ad-weekly.csv`](../../../practice-kit/data/meta-ad-weekly.csv).
2. For each ad, describe the 4-week trend in frequency, CTR, and cost per purchase.
3. Which ad is fatiguing?

### Part 3: Action plan (10 minutes)

Write 5 actions, in priority order, with evidence for each, in the same table format as practice
28.

## Done when

- [ ] Every ad has all eight calculated metrics.
- [ ] The ad set pivot shows CPA and ROAS.
- [ ] The fatigued ad is identified with evidence.
- [ ] Five actions are prioritized with evidence.

## Check yourself

1. What are the key ad-level numbers?

   <details><summary>Answer</summary>

   | Ad | CTR | CPA | ROAS | Hook rate | Hold rate | Frequency |
   |---|---|---|---|---|---|---|
   | Video - Barista hook | 1.20% | $23.16 | 1.55 | 32.0% | 28.0% | 1.61 |
   | Video - Product close-up | 0.81% | $57.50 | 0.63 | 15.0% | 24.0% | 1.52 |
   | Static - 20% off | 0.85% | $32.50 | 1.05 | | | 1.47 |
   | Static - Bean bag photo | 0.71% | $82.00 | 0.43 | | | 1.78 |
   | Carousel - 3 roasts | 1.18% | $55.00 | 0.65 | | | 1.47 |
   | Static - Free shipping | 1.50% | $25.20 | 1.47 | | | 6.79 |
   | Video - Reviews | 2.28% | $13.26 | 2.79 | 39.4% | 40.8% | 4.39 |
   </details>

2. What are the ad set totals?

   <details><summary>Answer</summary>

   | Ad set | Spend | Purchases | CPA | ROAS | Delivery |
   |---|---|---|---|---|---|
   | Broad - Advantage+ audience | $2,105 | 68 | $30.96 | 1.14 | Active |
   | Interest - Home baristas | $630 | 9 | $70.00 | 0.51 | Learning limited |
   | Site visitors 30d | $756 | 39 | $19.38 | 1.91 | Active |
   </details>

3. Which ad is fatiguing?

   <details><summary>Answer</summary>

   **Video - Barista hook.** Over 4 weeks, frequency rose from 1.4 to 3.8, CTR fell from 1.35%
   to 0.71%, and cost per purchase rose from $24.10 to $44.90. Static - 20% off stayed stable.
   </details>

4. What's a strong action plan?

   <details><summary>Answer</summary>

   Other reasonable orders exist. A strong plan:

   1. **Make 2–3 new versions of the barista concept** with fresh hooks. It's the best
      prospecting ad, with a 32% hook rate, but it's fatiguing fast.
   2. **Pause Video - Product close-up.** Its 15% hook rate is half the barista video's, and its
      CPA of $57.50 is far above target.
   3. **Merge or pause the Interest ad set.** It's learning limited, with only 9 purchases in 14
      days, far from about 50 a week, at a CPA of $70. Move its budget to the broad ad set.
   4. **Shift retargeting spend toward Video - Reviews**, and refresh Static - Free shipping. The
      reviews video has the best CPA and ROAS in the account. The free shipping ad has a
      frequency of 6.79.
   5. **Check the whole account against break-even.** Even the best ad, at ROAS 2.79, is
      barely above 2.5. Meta's overall ROAS here is 1.19. Decide, with the business, whether
      repeat purchases justify that, or whether the offer and landing page need work.
   </details>

---

**Next:** Saturday is your [week 7 review](../README.md#week-7-review). After that, start [Lesson 36: Retargeting and full funnel](../36-retargeting-and-full-funnel/lesson.md).
