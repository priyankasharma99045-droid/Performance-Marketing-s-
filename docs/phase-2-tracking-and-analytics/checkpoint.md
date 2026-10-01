# Phase 2 checkpoint: Tracking plan and live setup

**Week 4 · Saturday** · 60–90 minutes · **Save to:** `my-work/projects/02-tracking-plan.md`

## Goal

Finish a complete tracking plan, prove that your live setup works end to end, and test what
you remember from phase 2.

## Part 1: Finish the tracking plan (30 minutes)

Open `my-work/projects/02-tracking-plan.md` and complete every section:

| Section | Source |
|---|---|
| 1–2. Goals, conversions, and events | Practices 16–18 |
| 3. Tags in GTM | Your GTM container: list every tag, its trigger, and whether it needs consent |
| 4. Campaign naming and UTMs | Practice 12 |
| 5. Ad platform connections | Practice 18 |
| 6. Privacy and consent | Practice 19 |
| 7. Known gaps | Practices 18 and 20: what this setup can't measure |

## Part 2: End-to-end test (20–30 minutes)

Prove the whole chain works, as if handing it over to a client:

1. Clear `pm_consent` from local storage, and connect GTM **Preview** to your page.
2. Arrive using one of your UTM links from practice 12. Replace the base URL with your page
   URL.
3. Accept consent.
4. Select the CTA button, then submit the form.
5. Capture these screenshots in `my-work/notes/img/`:
   - Tag Assistant showing the Google tag, `cta_click`, and `generate_lead` all fired
   - Tag Assistant's **Consent** tab showing the update to `granted`
   - GA4 DebugView showing `generate_lead` with its parameters
6. The next day, open GA4 **Reports > Acquisition > Traffic acquisition**, and check that your
   UTM source and medium appear. Add a screenshot.
7. Link all screenshots from your tracking plan.

## Part 3: Phase quiz (15–20 minutes)

Answer from memory in `my-work/notes/week-04-review.md`, then check.

1. What are tags, triggers, and variables in GTM?

   <details><summary>Answer</summary>

   Tags say what to send and where. Triggers say when. Variables hold values that tags and
   triggers use.
   </details>

2. Why shouldn't you put UTMs on Google Ads links?

   <details><summary>Answer</summary>

   Auto-tagging with `gclid` already passes full campaign detail to a linked GA4 property.
   </details>

3. What makes a GA4 session "engaged"?

   <details><summary>Answer</summary>

   It lasts more than 10 seconds, has a key event, or has at least 2 page views.
   </details>

4. What's the difference between User acquisition and Traffic acquisition?

   <details><summary>Answer</summary>

   User acquisition credits how users first arrived. Traffic acquisition credits how each
   session started.
   </details>

5. How does Meta avoid double counting when you use both the Pixel and the Conversions API?

   <details><summary>Answer</summary>

   Deduplication: events with the same event name and event ID count once.
   </details>

6. What do enhanced conversions send, and in what form?

   <details><summary>Answer</summary>

   First-party customer data, such as email, hashed (for example with SHA-256) before sending.
   </details>

7. What's the difference between basic and advanced Consent Mode?

   <details><summary>Answer</summary>

   Basic blocks Google tags until consent. Advanced loads them and sends cookieless pings when
   consent is denied, which Google uses for modeling.
   </details>

8. Under last-click attribution, which channels tend to look best and which look worst?

   <details><summary>Answer</summary>

   Closing channels such as brand search, retargeting, and email look best. Channels that start
   journeys, such as prospecting and awareness, look worst.
   </details>

9. Name three reasons Google Ads and Meta report different conversion totals.

   <details><summary>Answer</summary>

   Any three of: each claims credit, different attribution windows, view-through conversions,
   different conversion dates, different tracking gaps, different modeling.
   </details>

10. Why does a lead generation business benefit from importing offline conversions?

    <details><summary>Answer</summary>

    So the platforms optimize toward leads that become paying customers, not only form fills.
    </details>

## Done when

- [ ] Every section of the tracking plan is complete.
- [ ] All end-to-end screenshots are saved and linked.
- [ ] You scored the quiz and reread the lesson for any question you missed.
- [ ] You ticked phase 2 in the main [README](../../README.md) progress checklist.

---

**Next phase:** [Phase 3: Google Ads](../phase-3-google-ads/README.md)
