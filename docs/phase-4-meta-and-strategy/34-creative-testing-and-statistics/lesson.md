# Lesson 34: Creative testing and statistics

**Phase 4 · Week 7 · Day 4** · 25 minutes

## Why this matters

"Ad B got 40% more conversions!" Is that a real winner, or luck? Without basic statistics,
marketers crown random winners, kill good ads, and stop tests too early. You don't need to be a
statistician. You need to know when a difference is big enough, with enough data, to trust.

## Key ideas

### What makes a fair test

1. **One variable:** Change only one thing, such as the hook. If you change the hook and the
   offer, you won't know which mattered.
2. **Same time:** Run both versions together. Results change by day and season.
3. **Split audiences:** Each person sees only one version. Meta's **A/B test** tool does this.
4. **A decision rule set in advance:** The metric, the sample size, and when you'll stop.

### Why random noise matters

Flip a fair coin 10 times and you might get 7 heads. That doesn't make the coin unfair. Small
samples swing wildly. Ad results work the same way: with 20 conversions, one version can "win"
by chance alone.

### Statistical significance in plain words

A test result is **statistically significant** when the difference is unlikely to be random
noise. The usual standard is **95% confidence**, meaning a **p-value** below 0.05:

- **p = 0.01:** If the versions were truly equal, a difference this big would happen by chance
  only 1% of the time. Probably real.
- **p = 0.30:** A difference this big would happen by chance 30% of the time. Not reliable.

### The two-proportion z-test

To compare two conversion rates, you can calculate this in a spreadsheet:

```
pA = conversions A ÷ visitors A
pB = conversions B ÷ visitors B
p  = (conversions A + conversions B) ÷ (visitors A + visitors B)       pooled rate
SE = SQRT(p × (1 − p) × (1 ÷ visitors A + 1 ÷ visitors B))             standard error
z  = (pB − pA) ÷ SE
p-value = 2 × (1 − NORM.S.DIST(ABS(z), TRUE))
```

If the p-value is below 0.05, call it significant. You can check results with the
[chi-squared test calculator](https://www.evanmiller.org/ab-testing/chi-squared.html).

### Sample size: plan before you start

Small differences need large samples. Use a
[sample size calculator](https://www.evanmiller.org/ab-testing/sample-size.html) before a test:

| Baseline CVR | Lift to detect | Visitors needed per version (about) |
|---|---|---|
| 3% | 20% relative, to 3.6% | 14,000 |
| 5% | 40% relative, to 7% | 2,200 |

These numbers use 95% confidence and 80% power, a common standard.

The lesson for small budgets: **test big, bold differences**, such as new angles or offers.
They're the only differences you'll have enough data to detect.

### Common traps

- **Peeking:** Checking every day and stopping as soon as one version looks ahead. This hugely
  increases false winners. Decide the sample size first.
- **Practical significance:** A significant 0.5% lift may not be worth the effort.
- **Wrong metric:** A hook that wins on CTR may lose on purchases. Judge on the metric closest to
  your KPI that has enough data.

### Testing on Meta in practice

- Use the **A/B test** tool for clean comparisons.
- Or run several ads in one ad set and let Meta spend on the strongest. Faster, but not a fair
  test, because Meta quickly stops spending on ads it predicts will lose.
- Use early signals such as hook rate and CTR to judge creative quickly, then confirm winners on
  CPA.

## Common mistakes

- **Calling a winner after 10 conversions:** Too little data.
- **Testing tiny tweaks on small budgets:** You'll never reach significance.
- **Stopping the test the moment it looks good:** Peeking.

## Learn more

Pick one (about 10 minutes):

- [About A/B testing (Meta)](https://www.facebook.com/business/help/1738164643098669)
- [Sample size calculator (Evan Miller)](https://www.evanmiller.org/ab-testing/sample-size.html): Try different baselines and lifts.

## Key terms

A/B test, variable, statistical significance, confidence level, p-value, sample size, lift,
peeking, practical significance. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 34](practice.md)
