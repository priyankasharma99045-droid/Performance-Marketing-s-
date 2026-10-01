# Practice 28: Write an optimization plan

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `Lesson 28 - Keywords` in your Drive course folder. Put the plan in `my-work/notes/lesson-28.md`.

## Goal

Diagnose each keyword in Pebble's generic campaign and write five prioritized actions.

## Steps

1. Import [`practice-kit/data/search-keywords.csv`](../../../practice-kit/data/search-keywords.csv).
2. Add columns: `CPC`, `CTR`, `CVR`, `CPA`, `ROAS`.
3. Add a total row: total cost, conversions, value, and the overall CPA and ROAS.
4. Remember the targets: break-even CPA **$14.40**, break-even ROAS **2.5**.
5. For each keyword, write a one-line diagnosis. Use Quality Score, CVR, ROAS, and impression
   share lost to budget and to rank.
6. Work out the CVR this campaign needs to reach break-even CPA at its average CPC. Use
   `CVR needed = CPC ÷ break-even CPA`.
7. Write **5 actions**, in priority order, in a change-log style table:

   | Priority | Action | Why (evidence) | Expected result |
   |---|---|---|---|

8. Estimate the campaign ROAS if you paused the worst keyword, assuming its spend
   disappears and isn't moved elsewhere.

## Done when

- [ ] Every keyword has metrics and a diagnosis.
- [ ] The break-even CVR is calculated.
- [ ] Five actions are prioritized, each with evidence.
- [ ] The "after pause" ROAS is estimated.

## Check yourself

1. What are the keyword metrics?

   <details><summary>Answer</summary>

   | Keyword | QS | CPC | CVR | CPA | ROAS | Lost IS budget | Lost IS rank |
   |---|---|---|---|---|---|---|---|
   | fresh roasted coffee | 9 | $0.95 | 7.47% | $12.72 | 2.99 | 40% | 2% |
   | buy coffee beans online | 8 | $1.05 | 5.71% | $18.38 | 1.90 | 38% | 10% |
   | coffee subscription | 7 | $1.12 | 4.48% | $25.03 | 1.52 | 35% | 18% |
   | coffee gift | 4 | $1.30 | 4.85% | $26.78 | 1.49 | 6% | 72% |
   | coffee beans | 6 | $1.02 | 2.96% | $34.43 | 1.02 | 31% | 28% |
   | specialty coffee | 5 | $1.25 | 1.10% | $113.75 | 0.27 | 12% | 58% |
   | **Total** | | $1.08 | 3.89% | $27.79 | 1.32 | | |
   </details>

2. What CVR does the campaign need to break even?

   <details><summary>Answer</summary>

   At the average CPC of $1.08: $1.08 ÷ $14.40 = **7.5%**. The campaign converts at 3.89%,
   about half of that. Only fresh roasted coffee beats its own break-even CVR ($0.95 ÷ $14.40
   = 6.6%). The campaign needs better conversion, cheaper clicks, or a higher order value, not
   only keyword trimming.
   </details>

3. What's a strong set of five actions?

   <details><summary>Answer</summary>

   Other reasonable orders exist. A strong plan:

   1. **Pause specialty coffee.** ROAS 0.27, CPA $113.75, and it has spent well over 3 times
      the target CPA. Saves about $228 a month.
   2. **Add the negatives from practice 27 to coffee beans.** It's the biggest spender, at 43%
      of cost, with ROAS 1.02. Much of that is irrelevant search terms.
   3. **Move fresh roasted coffee into its own campaign with its own budget.** It's the only
      keyword above break-even, and it loses 40% of impressions to budget.
   4. **Give coffee gift its own gift-themed ad and landing page.** All three Quality Score
      parts are Below average, and it loses 72% of impressions to rank. Better relevance lowers
      CPC and wins more auctions.
   5. **Test a landing page change to raise CVR**, using your ideas from lesson 9. The campaign
      needs about 7.5% CVR to break even, and it's at 3.89%.
   </details>

4. What's ROAS after pausing specialty coffee?

   <details><summary>Answer</summary>

   ($3,518 − $61) ÷ ($2,668.10 − $227.50) = $3,457 ÷ $2,440.60 = **1.42**, up from 1.32.
   </details>

5. buy coffee beans online loses 38% of impressions to budget. Is raising the budget the right move?

   <details><summary>Answer</summary>

   Not yet. Its ROAS of 1.90 is below break-even, so more volume means more loss. Fix its
   efficiency first. Only add budget to keywords above target.
   </details>

---

**Next:** [Lesson 29: Performance Max and Shopping](../29-performance-max-and-shopping/lesson.md)
