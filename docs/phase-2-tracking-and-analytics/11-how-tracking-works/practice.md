# Practice 11: Inspect tags on real websites

**30 minutes** · **You need:** Chrome · **Save to:** `my-work/notes/lesson-11.md`

## Goal

See tracking in action on real sites and record which tools each one uses.

## Steps

1. Pick 3 websites: a large online store, a small local business, and one competitor from
   practice 8. Visit them directly, not through ads.
2. For each site, open Chrome developer tools: right-click, select **Inspect**, then open the
   **Network** tab.
3. Reload the page. In the filter box, type each of these in turn and note whether any
   requests appear:

   | Filter | Means the site uses |
   |---|---|
   | `collect` | GA4 (look for `google-analytics.com/g/collect`) |
   | `googletagmanager` | Google Tag Manager or the Google tag |
   | `facebook.com/tr` | Meta Pixel |
   | `clarity` | Microsoft Clarity |
   | `tiktok` | TikTok Pixel |

4. Select one GA4 `collect` request. In the **Payload** tab, find the `en` parameter. That's
   the event name, such as `page_view`.
5. Open the **Application** tab, then **Cookies**. Look for `_ga` (GA4) and `_fbp` (Meta).
   Note whether each one exists.
6. Open [Google Tag Assistant](https://tagassistant.google.com/), enter one of the sites, and
   note which tags it finds.
7. Record everything in this table in your notes:

   | Site | GA4 | GTM | Meta Pixel | Other tags | `_ga` cookie | `_fbp` cookie |
   |---|---|---|---|---|---|---|

8. Did any site show a cookie banner? Did tags fire before you accepted it? Note what you saw.

## Done when

- [ ] 3 sites are inspected and the table is complete.
- [ ] You found and noted at least one GA4 event name from a payload.
- [ ] You noted the cookie banner behavior for each site.

## Check yourself

1. What's the difference between a tag and a pixel?

   <details><summary>Answer</summary>

   A pixel is a tag that sends data to an ad platform. All pixels are tags, but not all tags
   are pixels. A GA4 tag, for example, sends to an analytics tool.
   </details>

2. Someone clicks a Google ad and the URL contains `gclid=abc123`. What is that for?

   <details><summary>Answer</summary>

   It's Google's click ID. Tags store it, so a later conversion can be linked back to that
   exact ad click.
   </details>

3. Name three causes of signal loss.

   <details><summary>Answer</summary>

   Any three of: declined consent, ad blockers, Apple's App Tracking Transparency, browser
   cookie limits, and cross-device journeys.
   </details>

4. Why is the `_ga` cookie a first-party cookie?

   <details><summary>Answer</summary>

   It's set on the website's own domain, not on a Google domain.
   </details>

---

**Next:** [Lesson 12: UTMs and naming conventions](../12-utms-and-naming/lesson.md)
