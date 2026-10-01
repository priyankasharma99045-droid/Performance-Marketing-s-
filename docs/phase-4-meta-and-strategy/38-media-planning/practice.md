# Practice 38: Build a $10,000 media plan

**30–45 minutes** · **You need:** Google Sheets · **Save to:** `my-work/projects/04-media-plan.md`, with the forecast in a sheet named `Media plan` in your Drive course folder

## Goal

Split a $10,000 monthly budget across channels, forecast the results, and check the plan against
break-even.

## Steps

1. Copy [`templates/media-plan.md`](../../../templates/media-plan.md) to
   `my-work/projects/04-media-plan.md`.
2. Choose your business:
   - **Your practice business:** Use your own estimates and mark each one as an assumption.
   - **Pebble Coffee Co.:** Use these inputs from the sample data:

     | Channel | Cost | CTR | CVR | Limit |
     |---|---|---|---|---|
     | Google Search - Brand | CPC $0.60 | | 12% | About $1,900 a month of brand searches exist |
     | Google Search - Generic | CPC $1.08 | | 5%, assuming lesson 28's fixes work | |
     | Meta - Prospecting | CPM $9 | 1.1% | 3.5% | |
     | Meta - Retargeting | CPM $14 | 2.0% | 7.7% | About $1,000 a month before frequency gets too high |

     AOV is $36. Break-even ROAS is 2.5.
3. In a sheet, build the forecast for each channel: budget, impressions where relevant, clicks,
   conversions, CPA, and revenue. Use the funnel formulas from the lesson.
4. Keep $500 for a test channel. Assume a cautious $30 CPA.
5. Calculate the plan's totals: conversions, blended CPA, revenue, and MER.
6. Compare MER with break-even ROAS. If the plan is below break-even, change the split, or write
   what would need to improve.
7. Fill in every section of the template, including the test plan and risks.

## Done when

- [ ] The budget totals exactly $10,000.
- [ ] Every channel has a forecast built from stated inputs.
- [ ] Totals and MER are calculated and compared with break-even.
- [ ] Every template section is filled in.

## Check yourself

1. What does a reasonable Pebble plan look like?

   <details><summary>Answer</summary>

   Many splits are reasonable. One example:

   | Channel | Budget | Clicks | Conversions | CPA |
   |---|---|---|---|---|
   | Google Search - Brand | $1,900 | 3,167 | 380 | $5.00 |
   | Google Search - Generic | $2,600 | 2,407 | 120 | $21.60 |
   | Meta - Prospecting | $4,000 | 4,889 | 171 | $23.38 |
   | Meta - Retargeting | $1,000 | 1,429 | 110 | $9.09 |
   | Test channel | $500 | | 17 | $30.00 |
   | **Total** | **$10,000** | | **798** | **$12.53** |

   Revenue: 798 × $36 = about $28,733. MER: about **2.87**, above the 2.5 break-even.
   </details>

2. Why not put more money into brand search, with its $5 CPA?

   <details><summary>Answer</summary>

   Brand search is capped by how many people search for the brand. Extra budget can't create
   more of those searches. And brand searches depend on prospecting to create awareness in the
   first place.
   </details>

3. You double the Meta prospecting budget to $8,000. Will you get double the conversions?

   <details><summary>Answer</summary>

   Probably not. Diminishing returns mean each extra dollar reaches people who are a little less
   likely to buy, so the marginal CPA rises. Plan for a higher CPA on the extra spend, and test
   increases step by step.
   </details>

4. Why judge the whole plan on MER rather than adding up each platform's reported ROAS?

   <details><summary>Answer</summary>

   Platforms overlap in the sales they claim, so adding their results counts some sales twice.
   MER uses the business's real total revenue.
   </details>

---

**Next:** [Lesson 39: Reporting and dashboards](../39-reporting-and-dashboards/lesson.md)
