# Metric cases

The weekly sets for [practice 2: metric cases](metrics-practice.md#2-metric-cases). Do one
week's set per session.

## How to run a session

1. Work out the week's break-even ROAS and break-even CPA first.
2. For each case, work out the missing numbers in your head. Say out loud what's wrong and
   what you'd check next. No calculator.
3. Write your answer in one line, then open the answers and mark each case right or wrong.
4. Log your score in [metrics practice](metrics-practice.md#log).

A case is right when you named the metric that changed and a cause that fits. Estimates within
10% of the exact number count.

Two shortcuts follow from the chapter 3 formulas and save time:

- **CPC = CPM ÷ (CTR × 1,000):** tells you whether pricier clicks came from pricier
  impressions or from a less clickable ad.
- **ROAS = AOV ÷ CPA:** tells you whether a ROAS drop came from costlier customers or smaller
  orders.

## Schedule

| Week | Set | What's different |
|---|---|---|
| 1 | [Week 1](#week-1-one-metric-changes) | One metric changes. You get the rates. |
| 2 | [Week 2](#week-2-you-work-out-the-rates) | One metric changes. You get raw numbers and work out the rates. |
| 3 | [Week 3](#week-3-pebbles-data) | Pebble's practice data, plus real-looking cases |
| 4 | [Week 4](#week-4-two-metrics-can-change) | Two metrics can change at once |
| 5 | [Week 5](#week-5-unit-economics) | Budget mix, season, discounts, and CAC |
| 6 | [Week 6](#week-6-traps) | Traps from the common mistakes in lessons 3 and 4 |
| 7 onward | A fresh set of 8 from Claude, or a set you last did 4 or more weeks ago | Add metrics from later chapters as you reach them |

---

## Week 1: one metric changes

**Business:** an online store with AOV $50 and a 50% gross margin. For every case, work out CPA
and ROAS for both weeks. AOV stays $50 unless the case says otherwise.

| Case | Last week | This week |
|---|---|---|
| 1 | CTR 2%, CPC $1.00, CVR 5% | CTR 2%, CPC $1.00, CVR 2.5% |
| 2 | CTR 2%, CPC $1.00, CVR 5% | CTR 2%, CPC $1.50, CVR 5% |
| 3 | CPM $10, CTR 1%, CVR 5% | CPM $10, CTR 0.5%, CVR 5% |
| 4 | CPM $10, CTR 1%, CVR 5% | CPM $15, CTR 1%, CVR 5% |
| 5 | CTR 2%, CPC $1.00, CVR 5% | CTR 2%, CPC $1.00, CVR 8% |
| 6 | CPA $20, ROAS 2.5 | CPA $20, ROAS 2.0 |
| 7 | CTR 2%, CPC $1.00, CVR 5% | CTR 4%, CPC $0.75, CVR 2.5% |
| 8 | Spend $1,000, 50 sales | Spend $2,000, 100 sales |

<details><summary>Answers</summary>

Break-even ROAS = 1 ÷ 0.50 = **2.0**. Break-even CPA = $50 × 0.50 = **$25**.

1. CPA $20 → $40, ROAS 2.5 → 1.25. **Conversion broke.** Clicks cost the same, but half as
   many buy. Check the landing page, offer, price, and traffic quality. Now below break-even.
2. CPA $20 → $30, ROAS 2.5 → 1.67. **Clicks cost more.** CTR and CVR held, so look at
   competition and Quality Score. Now below break-even.
3. CPC $1 → $2, CPA $20 → $40, ROAS 2.5 → 1.25. **The ad gets fewer clicks.** Impressions
   cost the same, so check ad copy, image, and targeting.
4. CPC $1 → $1.50, CPA $20 → $30, ROAS 2.5 → 1.67. **Attention costs more.** The ad and page
   held. Check audience size, competition, and season.
5. CPA $20 → $12.50, ROAS 2.5 → 4.0. **Nothing is wrong.** Conversion improved. Find out what
   changed on the page or offer, and keep it.
6. AOV = ROAS × CPA: $50 → $40. **Order value fell.** At ROAS 2.0 you're exactly at
   break-even, if the margin held. If a discount caused it, COGS stayed $25, margin fell to
   37.5%, and break-even ROAS rose to 2.67, so you now lose money. Check discounts and the
   product mix.
7. CPA $20 → $30, ROAS 2.5 → 1.67. **The ad wins clicks the page doesn't convert.** CVR halved
   while CPC fell only 25%. Check that the ad promises what the page and offer deliver, and
   whether targeting draws people who browse but don't buy. Don't celebrate the CTR.
8. CPA $20 and ROAS 2.5 both weeks. **Nothing is wrong.** Spend and sales both doubled. Profit
   per order stays $5 ($25 − $20), so profit rose from $250 to $500. Judge the ratios, not the
   totals.

</details>

---

## Week 2: you work out the rates

**Business:** an online store with AOV $60 and a 50% gross margin, so COGS is $30 per order.
Work out CTR, CPC, CVR, CPA, and ROAS from the raw numbers.

| Case | Week | Impressions | Clicks | Spend | Sales | Revenue |
|---|---|---|---|---|---|---|
| 1 | Last | 100,000 | 2,000 | $2,000 | 80 | $4,800 |
| | This | 100,000 | 2,000 | $2,000 | 50 | $3,000 |
| 2 (Search) | Last | 50,000 | 2,500 | $2,500 | 100 | $6,000 |
| | This | 50,000 | 2,500 | $3,750 | 100 | $6,000 |
| 3 | Last | 200,000 | 4,000 | $2,000 | 100 | $6,000 |
| | This | 200,000 | 2,000 | $2,000 | 50 | $3,000 |
| 4 | Last | 200,000 | 4,000 | $2,000 | 100 | $6,000 |
| | This | 100,000 | 2,000 | $2,000 | 50 | $3,000 |
| 5 | Last | 100,000 | 2,000 | $2,000 | 100 | $6,000 |
| | This | 100,000 | 2,000 | $2,000 | 100 | $4,500 |
| 6 | Last | 100,000 | 1,000 | $1,000 | 50 | $3,000 |
| | This | 100,000 | 2,000 | $1,000 | 100 | $6,000 |

7. **Lead generation.** A clinic earns $400 gross profit per new customer. Last week: $50 per
   lead, and 20% of leads became customers. This week: $50 per lead, and 10% became customers.
8. **Costs changed.** ROAS is 2.5 both weeks. The supplier raised COGS from $30 to $36 per
   order. AOV stays $60.

<details><summary>Answers</summary>

Break-even ROAS = 1 ÷ 0.50 = **2.0**. Break-even CPA = $60 × 0.50 = **$30**.

1. CTR 2% and CPC $1.00 both weeks. CVR 4% → 2.5%, CPA $25 → $40, ROAS 2.4 → 1.5.
   **Conversion broke.** It was profitable and is now below break-even. Check the landing
   page, offer, price, and traffic quality.
2. CTR 5% and CVR 4% both weeks. CPC $1.00 → $1.50, CPA $25 → $37.50, ROAS 2.4 → 1.6.
   **Clicks cost more.** CPM rose too ($50 → $75), but with CTR flat it moves in step with CPC,
   so it's the same problem. Look at competition and Quality Score.
3. CPM $10 and CVR 2.5% both weeks. CTR 2% → 1%, CPC $0.50 → $1.00, CPA $20 → $40, ROAS
   3.0 → 1.5. **The ad gets fewer clicks.** Check ad copy, image, and targeting.
4. CTR 2% and CVR 2.5% both weeks. CPM $10 → $20, CPC $0.50 → $1.00, CPA $20 → $40.
   **Attention costs more.** Same result as case 3, different cause: here impressions got
   pricier, there the ad lost clicks. Check audience size, competition, and season.
5. CPA $20 both weeks. AOV $60 → $45, ROAS 3.0 → 2.25. **Order value fell.** If customers
   bought cheaper products at the same margin, break-even stays 2.0 and you still profit. If it
   was a 25% discount on the same products, COGS stays $30, margin falls to 33%, and
   break-even ROAS rises to 3.0, so you now lose money. Find out which.
6. CPM $10 and CVR 5% both weeks. CTR 1% → 2%, CPC $1.00 → $0.50, CPA $20 → $10, ROAS
   3.0 → 6.0. **Nothing is wrong.** A more clickable ad halved CPC. Keep it.
7. Lead value = $400 × 20% = $80, then $400 × 10% = $40. Profit per lead goes from +$30 to
   −$10. **Lead quality fell,** and the flat cost per lead hides it. Check where the leads come
   from.
8. Margin 50% → 40%, so break-even ROAS rises from 2.0 to 2.5. For every $1,000 of spend,
   profit falls from $250 to $0. **Nothing moved in the ads; the unit economics moved.**
   Recalculate break-even whenever costs change.

</details>

---

## Week 3: Pebble's data

**Business:** Pebble Coffee Co. AOV about $36, COGS $21.60 per order. Cases 1–4 are Pebble's
practice data from
[`campaign-daily.csv`](../../practice-kit/data/campaign-daily.csv), split into week 1 (March
2–8) and week 2 (March 9–15). The numbers are messy on purpose: estimate within 10%.

| Case | Week | Impressions | Clicks | Spend | Sales | Revenue |
|---|---|---|---|---|---|---|
| 1 Prospecting | 1 | 168,286 | 1,848 | $1,521.12 | 62 | $2,157.17 |
| | 2 | 173,180 | 1,907 | $1,547.14 | 69 | $2,418.22 |
| 2 Retargeting | 1 | 34,596 | 694 | $489.88 | 57 | $2,055.52 |
| | 2 | 34,297 | 673 | $475.28 | 48 | $1,805.92 |
| 3 Search - Brand | 1 | 6,121 | 720 | $430.74 | 84 | $3,183.81 |
| | 2 | 6,108 | 760 | $460.08 | 94 | $3,533.13 |
| 4 Search - Generic | 1 | 34,020 | 1,391 | $1,483.17 | 76 | $2,546.72 |
| | 2 | 33,542 | 1,406 | $1,561.43 | 69 | $2,322.41 |
| 5 Meta | Last | 182,000 | 1,820 | $1,638 | 64 | $2,304 |
| | This | 175,000 | 2,100 | $2,100 | 74 | $2,664 |
| 6 Search | Last | 30,000 | 1,260 | $1,323 | 66 | $2,310 |
| | This | 31,000 | 1,240 | $1,364 | 48 | $1,690 |
| 7 15% off sale | Last | 60,000 | 1,500 | $1,200 | 100 | $3,600 |
| | This | 60,000 | 1,500 | $1,200 | 125 | $3,825 |

8. **Lead generation.** Brightsmile Dental earns $600 gross profit per new patient. Last week:
   $2,400 spend, 40 leads, 10 patients. This week: $2,400 spend, 60 leads, 9 patients.

<details><summary>Answers</summary>

Margin = ($36 − $21.60) ÷ $36 = 40%. Break-even ROAS = **2.5**. Break-even CPA = **$14.40**.

1. CTR 1.10% and CPC about $0.81 both weeks. CVR 3.35% → 3.62%, CPA $24.53 → $22.42, ROAS
   1.42 → 1.56. **Slightly better, still below break-even.** That's expected for prospecting:
   it introduces strangers, and some of them buy later through Brand and Retargeting
   (practice 3, question 4).
2. CTR about 2% and CPC $0.71 both weeks. CVR 8.21% → 7.13%, CPA $8.59 → $9.90, ROAS
   4.20 → 3.80. **Conversion slipped,** but the campaign is still well above break-even. Watch
   the landing page and offer.
3. CTR 11.8% → 12.4%, CVR 11.7% → 12.4%, CPA $5.13 → $4.89, ROAS 7.39 → 7.68. **Nothing is
   wrong.** CPM rose ($70 → $75), but CPC barely moved and CPA improved.
4. CPC $1.07 → $1.11 (+4%), CVR 5.46% → 4.91% (−10%), CPA $19.52 → $22.63, ROAS 1.72 → 1.49.
   **Mostly conversion.** Below break-even both weeks and getting worse, while Prospecting
   improved. Check the landing page, offer, price, and traffic quality.
5. CPM $9 → $12 (+33%) and CTR 1.0% → 1.2% (+20%), so CPC $0.90 → $1.00. CVR 3.5% both weeks.
   CPA $25.59 → $28.38, ROAS 1.41 → 1.27. **Attention costs more, and the better ad absorbed
   part of it.** Check audience size, competition, and season.
6. CPC $1.05 → $1.10 (+5%), CVR 5.24% → 3.87% (−26%), CPA $20.05 → $28.42, ROAS 1.75 → 1.24.
   **Conversion is the problem.** Check the landing page, offer, price, and traffic quality.
7. CVR 6.67% → 8.33%, CPA $12.00 → $9.60, ROAS 3.0 → 3.19. It looks better. But AOV fell to
   $30.60, so gross profit per order is $9.00 and margin 29%. Break-even ROAS rises to 3.4 and
   break-even CPA falls to $9.00. Profit after ads goes from +$240 to −$75. **The discount
   turned a profitable campaign into a loss.**
8. Cost per lead $60 → $40, close rate 25% → 15%, lead value $150 → $90. Profit:
   10 × $600 − $2,400 = $3,600, then 9 × $600 − $2,400 = $3,000. **Cheaper leads, fewer
   patients.** Cost per patient rose from $240 to $267. Judge leads by what they're worth, not
   what they cost.

</details>

---

## Week 4: two metrics can change

**Business:** Pebble, as in week 3. AOV $36 unless the case says otherwise, COGS $21.60.

| Case | Week | Impressions | Clicks | Spend | Sales | Revenue |
|---|---|---|---|---|---|---|
| 1 Retargeting | Last | 40,000 | 820 | $570 | 68 | $2,450 |
| | This | 41,000 | 800 | $575 | 52 | $1,890 |
| 2 Search | Last | 52,000 | 1,900 | $1,805 | 80 | $2,880 |
| | This | 50,000 | 1,850 | $2,109 | 70 | $2,520 |
| 3 Price rise to $42 | Last | 80,000 | 2,400 | $1,500 | 100 | $3,600 |
| | This | 80,000 | 2,400 | $1,500 | 80 | $3,360 |
| 4 Meta | Last | 150,000 | 1,800 | $1,350 | 63 | $2,268 |
| | This | 150,000 | 1,350 | $1,350 | 47 | $1,692 |
| 5 Budget doubled | Last | 25,000 | 1,000 | $1,000 | 50 | $1,800 |
| | This | 40,000 | 1,600 | $2,000 | 72 | $2,592 |
| 6 Meta | Last | 100,000 | 1,500 | $1,200 | 60 | $2,160 |
| | This | 133,000 | 1,330 | $1,200 | 53 | $1,908 |

7. **Guessed LTV.** A subscription campaign gets subscribers at $32 each. The plan assumed each
   subscriber buys 6 bags a year for 2 years. Real data shows the average subscriber stays 8
   months. Margin is 40%.
8. **Payback.** A monthly subscriber pays $36 a month, at a 40% margin. CAC is $45. How many
   months until you earn the CAC back? Is $45 acceptable if subscribers stay 12 months?

<details><summary>Answers</summary>

1. CTR 2.05% → 1.95%, CPC $0.70 → $0.72, CVR 8.29% → 6.50% (−22%), CPA $8.38 → $11.06, ROAS
   4.30 → 3.29. **Conversion fell sharply,** but the campaign is still above break-even. Check
   the landing page and offer before it slips further.
2. CTR about 3.7% both weeks. CPC $0.95 → $1.14 (+20%), CVR 4.21% → 3.78% (−10%), CPA
   $22.56 → $30.13, ROAS 1.60 → 1.19. **Both moved, and CPC is the bigger driver.** Start with
   competition and Quality Score, then the page.
3. CVR 4.17% → 3.33%, CPA $15.00 → $18.75, ROAS 2.40 → 2.24. It looks worse. But at $42, gross
   profit per order is $20.40 and margin 49%, so break-even CPA is $20.40 and break-even ROAS
   2.06. Profit after ads goes from −$60 to +$132. **The price rise cost conversions but made
   the campaign profitable.** Price moves CVR, so check the margin before you judge ROAS.
4. CPM $9 and CVR 3.5% both weeks. CTR 1.2% → 0.9%, CPC $0.75 → $1.00, CPA $21.43 → $28.72,
   ROAS 1.68 → 1.25. **The ad gets fewer clicks.** Check ad copy, image, and targeting.
5. CTR 4% both weeks. CPC $1.00 → $1.25 (+25%), CVR 5.0% → 4.5% (−10%), CPA $20.00 → $27.78,
   ROAS 1.80 → 1.30. **The extra budget bought pricier clicks that convert slightly worse.**
   CPC is the bigger driver. Below break-even both weeks.
6. CPM $12 → $9, CTR 1.5% → 1.0%, CPC $0.80 → $0.90, CVR about 4% both weeks, CPA
   $20.00 → $22.64, ROAS 1.80 → 1.59. **Cheaper impressions, but fewer clicks, so CPC still
   rose.** Cheap attention isn't cheap customers (practice 3, question 3). Check the targeting.
7. Planned LTV = $36 × 6 × 2 × 0.40 = $172.80, so LTV to CAC is 5.4. Real LTV =
   $36 × 6 × (8 ÷ 12) × 0.40 = $57.60, so LTV to CAC is 1.8. **A guessed LTV made a losing
   campaign look healthy.** Use real retention data.
8. Gross profit per month = $36 × 0.40 = $14.40. Payback = $45 ÷ $14.40, about 3.1 months.
   LTV over 12 months = $14.40 × 12 = $172.80, so LTV to CAC is 3.8. **Acceptable,** if
   subscribers really stay 12 months.

</details>

---

## Week 5: unit economics

**Business:** Pebble. AOV $36 unless the case says otherwise, margin 40%.

| Case | Week | Impressions | Clicks | Spend | Sales | Revenue |
|---|---|---|---|---|---|---|
| 1 Search | Last | 40,000 | 1,500 | $1,800 | 90 | $3,240 |
| | This | 48,000 | 2,000 | $1,800 | 72 | $2,592 |
| 2 Meta, November | Last | 200,000 | 2,200 | $1,800 | 75 | $2,700 |
| | This | 112,500 | 1,350 | $1,800 | 53 | $1,908 |
| 3 Search | Last | 60,000 | 1,600 | $1,500 | 100 | $3,600 |
| | This | 60,000 | 1,600 | $1,500 | 115 | $3,300 |

4. **Budget mix.** Two campaigns keep the same ROAS both weeks: Brand at 7.0 and Prospecting at
   1.5. Last week: Brand $1,000, Prospecting $3,000. This week: Brand $500, Prospecting
   $3,500. What happened to blended ROAS, and which campaign broke?
5. **More spend.** Last week: $1,000 spend at ROAS 3.5. This week: $3,000 spend at ROAS 2.8.
   Did it get worse?
6. **Two lead campaigns.** Brightsmile earns $600 gross profit per patient. Campaign A: $120
   per lead, and 30% become patients. Campaign B: $70 per lead, and 10% become patients. Which
   do you scale?
7. **10% off.** Before the sale, ROAS was 2.7. During the sale, it's 2.9. COGS stays $21.60.
8. **CPA or CAC.** Last month: $5,000 ad spend plus $1,000 agency fees. 250 conversions, of
   which 200 were new customers. LTV is $86.40.

<details><summary>Answers</summary>

1. CPC $1.20 → $0.90 (−25%), CVR 6.0% → 3.6% (−40%), CPA $20 → $25, ROAS 1.80 → 1.44.
   **Cheaper clicks that convert much worse.** Traffic quality dropped. Check what changed in
   the targeting.
2. CTR 1.10% → 1.20% and CVR 3.41% → 3.93%, both better. But CPM $9 → $16 (+78%), so CPC
   $0.82 → $1.33, CPA $24.00 → $33.96, ROAS 1.50 → 1.06. **Season.** The ad and page improved,
   but pricier attention outweighed both.
3. CVR 6.25% → 7.19% and CPA $15.00 → $13.04, both better. But AOV $36 → $28.70 and ROAS
   2.40 → 2.20. **More orders, smaller orders.** AOV fell 20% while CPA fell 13%, so ROAS
   fell. Check the product mix and any discount.
4. Last week: ($7,000 + $4,500) ÷ $4,000 = 2.88. This week: ($3,500 + $5,250) ÷ $4,000 = 2.19.
   **No campaign broke.** Budget moved toward the lower-ROAS campaign. Find out why Brand
   spent less.
5. Profit after ads: $3,500 × 0.40 − $1,000 = $400, then $8,400 × 0.40 − $3,000 = $360. **Not
   much worse.** ROAS fell, but both weeks are above break-even (2.5). Profit is nearly the
   same on 2.4 times the revenue, with more customers who can buy again.
6. A: a lead is worth $600 × 30% = $180, so $60 profit per lead. B: $600 × 10% = $60, so a $10
   loss per lead. **Scale A.** Fix or pause B, because its cheap leads lose money.
7. Sale AOV is $32.40, gross profit $10.80, margin 33%, so break-even ROAS rises from 2.5 to
   3.0. **ROAS rose, but break-even rose more.** Before: 2.7 is above 2.5, so profitable.
   During: 2.9 is below 3.0, so losing money.
8. CPA = $5,000 ÷ 250 = $20. CAC = $6,000 ÷ 200 = $30. LTV to CAC is 2.9 using CAC, and 4.3
   using CPA. **CPA flatters the business.** CAC counts all costs and only new customers. On
   CAC, you're slightly under the rule of thumb of 3.

</details>

---

## Week 6: traps

**Business:** Pebble, AOV $36 and margin 40%, unless the case says otherwise.

1. Three campaigns report CVR: Brand 12% (180 sales from 1,500 clicks), Generic 5% (140 from
   2,800), and Prospecting 3.49% (131 from 3,750). A slide says "average CVR 6.83%."
2. "Search CPM is $60 and Meta CPM is $9. Move the budget to Meta." Search CPA is $18 and Meta
   CPA is $24.
3. A store with AOV $80 and COGS $40 runs 25% off. ROAS is 3.0 before and during the sale.
4. A manager says, "ROAS 2 means we doubled our money." Gross margin is 35%.
5. The team calculated margin from beans, roasting, and packaging only: $15 on a $36 bag.
   Shipping is $5 and payment fees are $1.60. Campaign ROAS is 2.2.
6. A new ad doubled CTR from 1.5% to 3%. CPM stayed $10. CVR fell from 4% to 2%. Is the new
   ad a win?
7. The ad platform shows 100 conversions from 2,000 clicks. The analytics tool shows 100
   conversions from 2,500 sessions. Someone says CVR dropped from 5% to 4%.
8. Prospecting has the lowest ROAS in the account (1.49). Someone proposes turning it off.

<details><summary>Answers</summary>

1. Total CVR = 451 ÷ 8,050 = 5.60%. **Averaging rates counts the small campaign the same as
   the large one.** Always calculate from summed totals.
2. **CPM measures different things on each platform.** Compare what matters: Search has the
   lower CPA ($18 against $24) and the higher ROAS (2.0 against 1.5 at a $36 AOV).
3. Margin 50% → 33%, so break-even ROAS rises from 2.0 to 3.0. **Same ROAS, profit gone:**
   each $1 of spend earned $0.50 profit before the sale and $0 during it.
4. Each $1 of spend brings $2 of revenue and $0.70 of gross profit, so it loses $0.30.
   Break-even ROAS is 2.86. **ROAS counts revenue, not profit.**
5. Real COGS is $21.60, so margin is 40% and break-even ROAS is 2.5, not the team's 1.71. At
   ROAS 2.2, each $1 of spend loses $0.12, while the team thinks it earns $0.28. **Shipping and
   fees belong in COGS.**
6. CPC $0.67 → $0.33 and CVR both halved, so CPA stays $16.67. **Not a win yet.** CPA didn't
   change. Check AOV and ROAS before calling it better.
7. **CVR didn't drop.** The two tools use different denominators: clicks and sessions. Always
   check which one a tool uses.
8. **Not on this evidence.** Prospecting introduces strangers, and some of them later buy
   through Brand and Retargeting. Turning it off could shrink both (practice 3, question 4).

</details>
