# Practice 27: Find the wasted spend

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `Lesson 27 - Search terms` in your Drive course folder. Put the link and your recommendation in `my-work/notes/lesson-27.md`.

## Goal

Review 30 days of real-looking search terms, find the waste and the winners, and write a
recommendation.

## Steps

1. Import [`practice-kit/data/search-terms.csv`](../../../practice-kit/data/search-terms.csv)
   into a new sheet.
2. Add three columns: `CPA` (`cost ÷ conversions`), `ROAS` (`conv_value ÷ cost`), and `action`.
   Use `IFERROR` for rows with 0 conversions.
3. Sort by `cost`, highest first.
4. Remember Pebble's break-even ROAS: **2.5**.
5. In the `action` column, label every search term with one of: `negative`, `add keyword`,
   `brand negative`, or `keep watching`.
6. Calculate:
   - Total cost and total ROAS of the whole report.
   - Total cost of search terms with 0 conversions, and its share of the total.
7. Estimate what ROAS would have been without the terms you labeled `negative`. Remove their
   cost **and** their conversion value.
8. Write your recommendation in the what, why, and so what format.

## Done when

- [ ] Every search term has an action.
- [ ] Waste is calculated in dollars and as a share of spend.
- [ ] The "after negatives" ROAS is estimated.
- [ ] The recommendation is written.

## Check yourself

1. Which search terms are clearly negatives?

   <details><summary>Answer</summary>

   **No conversions:** free coffee samples ($118.80), how to make cold brew at home ($94.40),
   coffee shop jobs near me ($62.90), coffee beans wholesale bulk ($55.00), coffee machine
   repair ($48.45), what is single origin coffee ($39.20), tea subscription ($36.00).

   **Very poor and off-brand:** starbucks coffee beans ($192.00, ROAS 0.15) and cheap coffee
   ($78.20, ROAS 0.27). Pebble is a premium brand, so "cheap" searchers are a poor fit.
   </details>

2. How much did zero-conversion terms cost?

   <details><summary>Answer</summary>

   $454.75 out of $2,188.55: **20.8%** of spend with nothing to show for it.
   </details>

3. Which search terms to add as keywords?

   <details><summary>Answer</summary>

   - organic coffee beans subscription: ROAS 4.18
   - decaf coffee beans: ROAS 3.01
   - coffee subscription gift: ROAS 2.93

   All are above break-even and specific. Add them as exact or phrase match, in the right ad
   groups.
   </details>

4. What about "pebble coffee"?

   <details><summary>Answer</summary>

   It's a brand search, with ROAS 8.82, inside the generic campaign. Add "pebble" as a negative
   in the generic campaign so the brand campaign handles it. That keeps generic results honest:
   without it, generic ROAS drops from 1.35 to 1.23.
   </details>

5. What would ROAS have been without the 9 negatives?

   <details><summary>Answer</summary>

   Removed cost: $454.75 + $192.00 + $78.20 = $724.95. Removed value: $29 + $21 = $50.

   New ROAS = ($2,956 − $50) ÷ ($2,188.55 − $724.95) = $2,906 ÷ $1,463.60 = **1.99**, up from
   1.35. Better, but still below 2.5. Negatives alone don't make this campaign profitable.
   Lesson 28 looks at the next steps.
   </details>

---

**Next:** [Lesson 28: Optimization playbook](../28-optimization-playbook/lesson.md)
