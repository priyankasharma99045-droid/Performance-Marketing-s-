# Lesson 11: How tracking works

**Phase 2 · Week 3 · Day 1** · 25 minutes

## Why this matters

Every number in an ad report comes from tracking code on a website. When the tracking is
wrong, every decision built on it is wrong too. You don't need to be a developer, but you need
to know how data travels from a visitor's browser into a report, and where it gets lost.

## Key ideas

### Tags

A **tag** is a small piece of JavaScript code on a web page. When the page loads, or when the
visitor does something, the tag sends a message to a tool. That message is often called a
**hit** or an **event**.

```
Visitor's browser loads the page
  → GA4 tag sends "page_view" to Google Analytics
  → Meta Pixel sends "PageView" to Meta
  → Google Ads tag notes the visit for remarketing
```

A **pixel** is a tag for an ad platform. The name comes from early tracking, which used a
1×1 invisible image.

### Cookies

A **cookie** is a small text file the browser stores for a website. Tracking tools use cookies
to recognize the same visitor across pages and visits.

| Type | Set by | Example | Status |
|---|---|---|---|
| **First-party** | The website you're on | GA4's `_ga` cookie, set on your own domain | Widely allowed |
| **Third-party** | A different domain | An ad network's cookie that follows you across sites | Blocked by default in Safari and Firefox |

### Click IDs

When someone clicks an ad, the platform adds an ID to the link:

- Google Ads adds `gclid=...`
- Meta adds `fbclid=...`

The tags on the landing page read this ID and store it. When that visitor later converts, the
platform can link the conversion back to the exact click.

### Where tracking loses data

Tracking is never complete. Common causes of **signal loss**:

- **Consent:** Visitors decline cookies. Lesson 19.
- **Ad blockers and privacy browsers:** They block tags completely.
- **Apple's App Tracking Transparency (ATT):** Since 2021, iPhone apps must ask before tracking
  people across apps. Many people say no, which hit Meta's measurement hard.
- **Cookie limits:** Safari shortens the life of cookies set by JavaScript, so returning
  visitors look new.
- **Cross-device journeys:** Seeing an ad on a phone and buying on a laptop often looks like two
  different people.

Platforms fill some gaps with **modeled conversions**: statistical estimates of what they
couldn't see. This is why the industry has moved toward first-party data and server-side
tracking. Lesson 18 covers those.

### How to see tags on any website

1. **Browser developer tools:** In Chrome, right-click the page, select **Inspect**, and open
   the **Network** tab. Reload the page. Type `collect` in the filter box to see GA4 hits, or
   `facebook.com/tr` to see Meta Pixel hits.
2. **[Google Tag Assistant](https://tagassistant.google.com/):** Enter a URL to see which Google
   tags load and what they send.
3. **[Meta Ads Data Advisor](https://developers.facebook.com/documentation/meta-pixel/support/meta-ads-data-advisor):**
   A Chrome extension, formerly called Meta Pixel Helper, that shows Meta Pixel activity.

## Common mistakes

- **Assuming tracking is complete:** It never is. Expect gaps of 10–30% or more between
  tools.
- **Clicking competitors' ads to test them:** It costs them money. Inspect their landing pages
  by visiting directly.
- **Installing the same tag twice:** Every page view counts double. You see this risk in
  lesson 16.

## Learn more

Pick one (about 10 minutes):

- [How Google Analytics works](https://support.google.com/analytics/answer/12159447)
- [About the Meta Pixel](https://www.facebook.com/business/help/742478679120153)

## Key terms

Tag, pixel, hit, event, cookie, first-party, third-party, click ID, signal loss, modeled
conversions. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 11](practice.md)
