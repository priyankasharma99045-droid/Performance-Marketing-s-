# Practice 12: Build a UTM sheet and naming standard

**30 minutes** · **You need:** Google Sheets · **Save to:** A sheet named `UTM builder` in your Drive course folder. Put the link and your naming standard in `my-work/notes/lesson-12.md`.

## Goal

Create the UTM builder and naming standard you use for every link in the rest of the course.

## Steps

1. **Naming standard:** In your notes, write your campaign naming pattern, such as
   `BRAND_CHANNEL_OBJECTIVE_AUDIENCE_GEO`. List the allowed values for each part. For example,
   CHANNEL can be `GADS`, `META`, or `LI`.
2. **Sheet columns:** Create a sheet with these headers in row 1:

   | A | B | C | D | E | F |
   |---|---|---|---|---|---|
   | `base_url` | `utm_source` | `utm_medium` | `utm_campaign` | `utm_content` | `final_url` |

3. **Formula:** In F2, enter:

   ```
   =A2&"?utm_source="&B2&"&utm_medium="&C2&"&utm_campaign="&D2&IF(E2<>"","&utm_content="&E2,"")
   ```

4. **Data validation:** Select column C. Use **Data > Data validation** to allow only `cpc`,
   `paid_social`, `email`, `social`, and `referral`. This prevents typos.
5. **Build 6 links** for your practice business. Use your landing page URL, or
   `https://example.com` until you publish your page in lesson 15:
   1. Meta prospecting ad, video creative
   2. Meta retargeting ad, image creative
   3. Weekly newsletter, header button
   4. Weekly newsletter, footer link
   5. LinkedIn ad
   6. An Instagram bio link (unpaid)
6. **Check one link:** Rebuild link 1 in the
   [Campaign URL Builder](https://ga-dev-tools.google/campaign-url-builder/) and compare it with
   your sheet's output.

## Done when

- [ ] Your naming standard is written, with allowed values.
- [ ] The sheet builds links with a formula, and column C has data validation.
- [ ] 6 links are built and follow the lowercase, no-spaces rules.
- [ ] One link matches the Campaign URL Builder's output.

## Check yourself

1. Why shouldn't you add UTMs to Google Ads links in most cases?

   <details><summary>Answer</summary>

   Auto-tagging already adds `gclid`, which gives GA4 full campaign detail when the accounts
   are linked. Manual UTMs can conflict with it.
   </details>

2. A newsletter link uses `utm_medium=Email` and another uses `utm_medium=email`. What happens
   in GA4?

   <details><summary>Answer</summary>

   GA4 treats them as two different mediums, so newsletter traffic is split into two rows, and
   the capitalized one may not land in the Email channel.
   </details>

3. Your home page has a banner linking to `/sale?utm_source=homepage`. What goes wrong?

   <details><summary>Answer</summary>

   A visitor who arrived from a Meta ad and clicked the banner now looks like they came from
   "homepage". The real source is overwritten. Never put UTMs on internal links.
   </details>

4. Which three UTM parameters are essential?

   <details><summary>Answer</summary>

   `utm_source`, `utm_medium`, and `utm_campaign`.
   </details>

---

**Next:** [Lesson 13: GA4 core concepts](../13-ga4-core-concepts/lesson.md)
