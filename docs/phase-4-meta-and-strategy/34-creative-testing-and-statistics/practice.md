# Practice 34: Judge four A/B tests

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `Lesson 34 - AB tests` in your Drive course folder. Put the link and verdicts in `my-work/notes/lesson-34.md`.

## Goal

Build a reusable significance calculator and decide which of four tests have a real winner.

## Steps

1. Open [`practice-kit/data/ab-tests.csv`](../../../practice-kit/data/ab-tests.csv). It has two
   rows per test, one for each version.
2. In a new sheet, build one row per test with these columns:

   | A | B | C | D | E |
   |---|---|---|---|---|
   | `test` | `n_A` | `x_A` | `n_B` | `x_B` |

   `n` is visitors or impressions. `x` is conversions or clicks.
3. Add these columns and formulas, written for row 2:

   | Column | Formula |
   |---|---|
   | F `rate_A` | `=C2/B2` |
   | G `rate_B` | `=E2/D2` |
   | H `lift` | `=G2/F2-1` |
   | I `pooled` | `=(C2+E2)/(B2+D2)` |
   | J `SE` | `=SQRT(I2*(1-I2)*(1/B2+1/D2))` |
   | K `z` | `=(G2-F2)/J2` |
   | L `p_value` | `=2*(1-NORM.S.DIST(ABS(K2),TRUE))` |
   | M `significant` | `=IF(L2<0.05,"yes","no")` |

4. Fill in all four tests and copy the formulas down.
5. Check one test with the [chi-squared calculator](https://www.evanmiller.org/ab-testing/chi-squared.html).
6. Write a verdict for each test: ship B, keep A, or keep testing. Add one sentence on why.
7. For the price display test, use the [sample size calculator](https://www.evanmiller.org/ab-testing/sample-size.html)
   to find how many visitors per version it needs to detect a 5% to 7% change.

## Done when

- [ ] The calculator works for all four tests.
- [ ] One result is confirmed with the online calculator.
- [ ] Each test has a verdict and reason.
- [ ] The sample size for the price test is found.

## Check yourself

1. What are the results?

   <details><summary>Answer</summary>

   | Test | Rate A | Rate B | Lift | z | p-value | Significant |
   |---|---|---|---|---|---|---|
   | Landing page headline | 3.00% | 4.10% | +36.7% | 2.66 | 0.008 | Yes |
   | Button color | 3.00% | 3.47% | +15.6% | 0.72 | 0.47 | No |
   | Meta ad hook (CTR) | 1.10% | 1.45% | +31.8% | 3.12 | 0.002 | Yes |
   | Price display | 5.00% | 7.00% | +40.0% | 1.46 | 0.14 | No |
   </details>

2. The price display test has the biggest lift, at 40%. Why isn't it significant?

   <details><summary>Answer</summary>

   The sample is small: 600 visitors per version. With so few visitors, a gap of 30 against 42
   conversions can happen by chance. Keep testing. It needs roughly 2,200 visitors per
   version.
   </details>

3. The hook test is significant on CTR. Is it safe to say hook B sells more?

   <details><summary>Answer</summary>

   Not yet. It proves hook B gets more clicks. Check that those extra clickers also buy, using
   CPA or purchases, before declaring it the winner for sales.
   </details>

4. A colleague checks the button test daily and stops it on day 3, when B was 30% ahead. What's
   the problem?

   <details><summary>Answer</summary>

   Peeking. Early results swing a lot, and stopping when one version happens to be ahead creates
   false winners. Decide the sample size first and wait for it.
   </details>

---

**Next:** [Lesson 35: Meta reporting and optimization](../35-meta-reporting-and-optimization/lesson.md)
