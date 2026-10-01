# Practice 17: Track the lead form as a key event

**30 minutes** · **You need:** Your GTM container from practice 16 · **Save to:** `my-work/notes/lesson-17.md`, with a screenshot in `my-work/notes/img/`

## Goal

Track form submissions as `generate_lead`, with a parameter and a value, and mark it as a key
event in GA4.

## Steps

### Part 1: Build it in GTM (15 minutes)

1. **Trigger:** Go to **Triggers > New > Custom Event**. Set **Event name** to
   `generate_lead`. Name it `CE - generate_lead` and save.
2. **Variable:** Go to **Variables > User-Defined Variables > New > Data Layer Variable**. Set
   **Data Layer Variable Name** to `roast`. Name it `DLV - roast` and save.
3. **Tag:** Go to **Tags > New > Google Analytics: GA4 Event**.
   - Measurement ID: your `G-` ID
   - Event name: `generate_lead`
   - Event parameters:

     | Parameter | Value |
     |---|---|
     | `roast` | `{{DLV - roast}}` |
     | `value` | `40` |
     | `currency` | `USD` |

   - Trigger: `CE - generate_lead`
   - Name it `GA4 - Event - generate_lead` and save.

### Part 2: Test (10 minutes)

1. Select **Preview** and connect to your page.
2. Fill in the form, choose **Dark** roast, and submit.
3. In Tag Assistant, select the `generate_lead` event. Check that `GA4 - Event - generate_lead`
   fired.
4. Open its **Variables** tab and check that `DLV - roast` shows `Dark`.
5. In GA4 **DebugView**, select the `generate_lead` event and check that `roast`, `value`, and
   `currency` arrived. Screenshot it.
6. Reload the page and submit again with **Light**. Check that the event fires once, not twice.

### Part 3: Mark it and publish (5 minutes)

1. In GA4, go to **Admin**, then **Events** under **Data display**. Find `generate_lead` and
   select the star next to it. If it isn't listed yet, select **Create event**, enter
   `generate_lead`, turn on **Mark as key event**, set the counting method to once per session,
   and select **Create**.
2. In GTM, select **Submit** and publish a version named `generate_lead key event`.
3. Copy [`templates/tracking-plan.md`](../../../templates/tracking-plan.md) to
   `my-work/projects/02-tracking-plan.md`. Fill in sections 1 and 2 with the events you have so
   far: `page_view`, `cta_click`, and `generate_lead`.

## Done when

- [ ] `generate_lead` fires once per form submission, with the right roast.
- [ ] DebugView shows all three parameters, and the screenshot is saved.
- [ ] `generate_lead` is a key event in GA4.
- [ ] The container is published.
- [ ] The tracking plan has sections 1 and 2 filled in.

## Check yourself

1. Why fire the conversion on the data layer event and not on the **Send my code** button
   click?

   <details><summary>Answer</summary>

   A button click fires even if the form fails validation or is empty. The data layer event
   only fires after a successful submission.
   </details>

2. A campaign is set to optimize for `cta_click`. What might happen?

   <details><summary>Answer</summary>

   The platform finds people who click buttons, not people who become leads. Clicks rise, and
   lead quality and volume may fall.
   </details>

3. In DebugView, `roast` shows `undefined`. Where do you look first?

   <details><summary>Answer</summary>

   The Data Layer Variable's name. It must match the key in the `dataLayer.push` exactly,
   including capitals: `roast`.
   </details>

4. Does a lead form count every conversion, or one per person?

   <details><summary>Answer</summary>

   One. The same person submitting twice is still one lead. Purchases count every time.
   </details>

---

**Next:** [Lesson 18: Pixels, Conversions API, and enhanced conversions](../18-pixels-capi-and-enhanced-conversions/lesson.md)
