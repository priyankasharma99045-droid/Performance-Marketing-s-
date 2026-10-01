# Practice 18: Plan ad platform tracking

**30 minutes** · **You need:** Your tracking plan from practice 17 · **Save to:** `my-work/projects/02-tracking-plan.md`

## Goal

Design how conversions from your practice business reach Google Ads and Meta, including
server-side data and offline sales. This is a planning exercise: you don't need any ad
accounts.

## Steps

1. **Event mapping:** In section 2 of your tracking plan, add a column for the Meta event name.
   Map every GA4 event you track to its Meta standard event, or write "none".
2. **Primary conversion:** In section 1, mark which conversion each ad platform optimizes for.
   Explain your choice in one sentence.
3. **Google Ads method:** In section 5, choose between importing GA4 key events and a Google
   Ads conversion tag. Write one sentence on why. Say whether you'd turn on enhanced
   conversions.
4. **Meta method:** In section 5, describe a Pixel and CAPI setup:
   - Which events go through the Pixel?
   - Which go through CAPI?
   - How do you deduplicate? Name the shared field.
5. **Offline sales:** In section 7, **Known gaps**, write 4–6 steps for how a sale that
   happens after the lead could get back to Google Ads. Use the steps from the lesson as a
   starting point. If your business sells online only, do this for Brightsmile Dental
   instead.
6. **Optional (needs a Facebook account):** Create a Meta business portfolio and a dataset
   (pixel) in **Events Manager**. Install the Pixel on your landing page through GTM, using
   the **Initialization - All Pages** trigger for the base code. Check it with the
   [Meta Ads Data Advisor](https://developers.facebook.com/documentation/meta-pixel/support/meta-ads-data-advisor)
   extension.

## Done when

- [ ] Every GA4 event is mapped to a Meta event or marked "none".
- [ ] The primary conversion for each platform is chosen, with a reason.
- [ ] The Google Ads method and the enhanced conversions decision are written.
- [ ] The Meta Pixel and CAPI plan names the deduplication field.
- [ ] The offline sales steps are written.

## Check yourself

1. Meta receives a `Purchase` from the Pixel with `event_id = 991` and a `Purchase` from CAPI
   with `event_id = 991`. How many purchases does it count?

   <details><summary>Answer</summary>

   One. Matching event name and event ID mark them as duplicates.
   </details>

2. What does hashing do to an email address before it's sent for enhanced conversions?

   <details><summary>Answer</summary>

   It turns the email into a fixed scrambled code, with SHA-256 for example. The platform can
   match it to its own hashed data without receiving the readable email.
   </details>

3. Why does a lead generation business benefit from offline conversion imports?

   <details><summary>Answer</summary>

   The platform can learn which clicks became paying customers, not only form fills, and
   optimize toward those. That improves lead quality.
   </details>

4. Name two advantages of the Conversions API over the Pixel alone.

   <details><summary>Answer</summary>

   Ad blockers and browser limits can't stop it, and it can send events that never happen in
   a browser, such as an offline sale. Together these recover lost conversions.
   </details>

---

**Next:** [Lesson 19: Privacy and Consent Mode](../19-privacy-and-consent-mode/lesson.md)
