# Practice 9: Audit landing pages

**30 minutes** · **You need:** The 3 landing page links from practice 8 · **Save to:** `my-work/notes/lesson-09.md`

## Goal

Score real landing pages against a checklist, and write test ideas you could prioritize.

## The checklist

Score each item 0 (missing), 1 (weak), or 2 (strong). The maximum is 20.

| # | Check |
|---|---|
| 1 | The headline matches the ad's promise |
| 2 | The main benefit is clear within 5 seconds |
| 3 | There's one clear call to action above the fold on mobile |
| 4 | It shows proof: reviews, ratings, or numbers |
| 5 | It answers the main objection: guarantee, FAQ, or returns |
| 6 | It has few distractions: no full menu or competing offers |
| 7 | The form asks only for what's needed |
| 8 | It shows trust signals: contact info, secure checkout, real business |
| 9 | PageSpeed mobile performance score is 50 or more |
| 10 | It reads well and looks right on a phone |

## Steps

1. For each of the 3 pages from practice 8, score all 10 checks. Use your phone for checks 3
   and 10.
2. Run each page through [PageSpeed Insights](https://pagespeed.web.dev/). Record the mobile
   performance score and LCP.
3. Open [`practice-kit/landing-page/index.html`](../../../practice-kit/landing-page/index.html)
   in your browser. On your computer, double-click the downloaded file. Score it with the same
   checklist. You publish this page in lesson 15.
4. For the weakest of the 4 pages, write 3 hypotheses using the format: "If we **[change]**,
   then **[metric]** will improve, because **[reason]**."
5. Score your 3 hypotheses with ICE and rank them.

## Done when

- [ ] 4 pages are scored out of 20.
- [ ] 3 PageSpeed mobile scores and LCP values are recorded.
- [ ] 3 hypotheses are written and ranked by ICE score.

## Check yourself

1. An ad says "Free shipping on all orders". The landing page is the home page and doesn't
   mention shipping. What principle does this break?

   <details><summary>Answer</summary>

   Message match. The page must continue the ad's promise right away.
   </details>

2. What do LCP, INP, and CLS measure?

   <details><summary>Answer</summary>

   LCP: how fast the main content appears. INP: how fast the page responds to interaction.
   CLS: how much the layout jumps while loading.
   </details>

3. A page converts at 2%. You raise CVR to 3% and CPC stays at $1. What happens to CPA?

   <details><summary>Answer</summary>

   CPA = CPC ÷ CVR. Before: $1 ÷ 0.02 = $50. After: $1 ÷ 0.03 = $33.33. CPA drops by a third
   without touching the ads.
   </details>

4. Why test the headline before the button color?

   <details><summary>Answer</summary>

   The headline carries the main promise, so it has far more potential impact. Button colors
   rarely change results in a way you can measure.
   </details>

---

**Next:** [Lesson 10: Putting it together](../10-putting-it-together/lesson.md)
