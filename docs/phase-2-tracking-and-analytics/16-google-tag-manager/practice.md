# Practice 16: Move GA4 into GTM and track clicks

**30–45 minutes** · **You need:** Your live page and GA4 measurement ID from practice 15 · **Save to:** `my-work/notes/lesson-16.md`

## Goal

Install GTM on your page, send GA4 page views through it, and track clicks on the main button.

## Steps

### Part 1: Install GTM (15 minutes)

1. Go to [Google Tag Manager](https://tagmanager.google.com/) and select **Create account**.
   Enter an account name, your country, a container name (your page URL), and choose **Web**.
   Accept the terms.
2. GTM shows two snippets. Keep that window open.
3. On GitHub, edit your page's `index.html`:
   1. **Delete** the Google tag snippet you added in practice 15.
   2. Paste the first GTM snippet where the `<!-- LESSON 16 ... <head> -->` comment is.
   3. Paste the second GTM snippet (the `<noscript>` one) where the
      `<!-- LESSON 16 ... <noscript> -->` comment is, right after `<body>`.
   4. Commit the change.

### Part 2: Send page views to GA4 (5 minutes)

1. In GTM, go to **Tags > New**.
2. Select **Tag Configuration > Google tag**. Enter your `G-` measurement ID.
3. Under **Triggering**, choose **Initialization - All Pages**.
4. Name it `Google tag - GA4` and save.

### Part 3: Track the button (10 minutes)

1. Go to **Variables > Configure** and turn on **Click ID**, **Click Text**, and **Click URL**.
2. Go to **Triggers > New**. Choose **Click - Just Links**, then **Some Link Clicks**. Set the
   condition **Click ID equals `cta-hero`**. Name it `Click - CTA hero` and save.
3. Go to **Tags > New**. Choose **Google Analytics: GA4 Event**. Enter your measurement ID and
   the event name `cta_click`.
4. Add an event parameter: name `cta_location`, value `hero`.
5. Set the trigger to `Click - CTA hero`. Name the tag `GA4 - Event - CTA Click` and save.

### Part 4: Test and publish (10 minutes)

1. Select **Preview**, enter your page URL, and select **Connect**. Your page opens with Tag
   Assistant connected.
2. In Tag Assistant, check that `Google tag - GA4` fired on **Initialization**.
3. On your page, select the **Get 20% off your first bag** button. In Tag Assistant, select the
   new **Link Click** event and check that `GA4 - Event - CTA Click` fired.
4. In GA4, open **Admin**, then **DebugView** under **Data display**. Check that `page_view` and `cta_click` appear.
   Screenshot it.
5. Back in GTM, select **Submit**. Name the version `GA4 via GTM + CTA click` and publish.

## Done when

- [ ] The old Google tag snippet is removed, and GTM is installed in both places.
- [ ] The Google tag fires on every page through GTM.
- [ ] `cta_click` fires only when the hero button is clicked.
- [ ] DebugView shows `cta_click`, and the screenshot is saved.
- [ ] The container is published with a clear version name.

## Troubleshooting

- **Tag Assistant can't connect:** Make sure the GTM snippet is committed and the page has
  refreshed. Disable ad blockers for your page.
- **Click tag didn't fire:** In Tag Assistant, select the click event, open **Variables**, and
  check the value of **Click ID**. It must be exactly `cta-hero`.

## Check yourself

1. You set up a tag but forget the trigger. What happens?

   <details><summary>Answer</summary>

   It never fires. Every tag needs at least one trigger.
   </details>

2. What's the difference between preview and publish?

   <details><summary>Answer</summary>

   Preview tests your changes on your own browser only. Publish makes them live for every
   visitor.
   </details>

3. Why is a data layer event more reliable than a Form Submission trigger?

   <details><summary>Answer</summary>

   Many modern forms don't submit in the standard HTML way, so GTM can't detect them. A data
   layer push is sent by the site exactly when the action succeeds.
   </details>

4. Your page shows twice as many page views as expected. What's the likely cause?

   <details><summary>Answer</summary>

   GA4 is installed twice, for example with both the gtag snippet and the Google tag in GTM.
   </details>

---

**Next:** [Lesson 17: Conversions and key events](../17-conversions-and-key-events/lesson.md)
