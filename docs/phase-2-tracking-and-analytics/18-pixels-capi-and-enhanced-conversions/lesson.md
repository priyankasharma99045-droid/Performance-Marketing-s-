# Lesson 18: Pixels, Conversions API, and enhanced conversions

**Phase 2 · Week 4 · Day 3** · 25 minutes

## Why this matters

Ad platforms run on machine learning. They learn who converts from the conversion data you
send them, then find more people like them. Send less data, or worse data, and the ads get
more expensive. Browser tracking loses more data every year, so modern setups add server-side
and first-party data on top of the classic pixel.

## Key ideas

### Why ad platforms need conversions

When Meta sees that 200 people bought after seeing your ad, it studies what they have in
common and shows the ad to more people like them. With only 20 recorded purchases, because
tracking lost the rest, it learns much less. **Better data means better targeting means lower
CPA.**

### The Meta Pixel

The Meta Pixel is Meta's browser tag. It sends **standard events** with fixed names:

| Meta standard event | Matching GA4 event |
|---|---|
| `PageView` | `page_view` |
| `ViewContent` | `view_item` |
| `AddToCart` | `add_to_cart` |
| `InitiateCheckout` | `begin_checkout` |
| `Purchase` | `purchase` |
| `Lead` | `generate_lead` |
| `CompleteRegistration` | `sign_up` |

You can install it through GTM, directly in the site code, or through a platform integration
such as Shopify's.

### Conversions API (CAPI)

The **Conversions API** sends the same events from your **server** to Meta, instead of from
the visitor's browser. Ad blockers and browser limits can't stop it.

Best practice is to run **both**: the Pixel and CAPI. That creates a risk of counting each
conversion twice, so Meta **deduplicates**: if a browser event and a server event share the
same `event_name` and `event_id`, Meta counts one.

```
Browser:  Lead, event_id = L-8812  ─┐
                                    ├─→ Meta counts 1 Lead
Server:   Lead, event_id = L-8812  ─┘
```

Meta scores how well it can match your events to people with an **Event Match Quality**
score. Sending hashed customer details, such as email, raises it.

Setting up CAPI usually needs a developer, a partner integration, or Meta's own setup tools.
As a marketer, you need to know when it's missing and how to ask for it.

### Google Ads conversion tracking

There are two main ways to get conversions into Google Ads:

| Method | How | Good for |
|---|---|---|
| **Import GA4 key events** | Link GA4 and Google Ads, then import | Simple setups, one source of truth |
| **Google Ads conversion tag** | A separate tag, often in GTM | Most accurate for Google Ads bidding. Supports enhanced conversions directly. |

Many advertisers use the Google Ads tag for their primary conversion and import the rest from
GA4.

### Enhanced conversions

**Enhanced conversions** send hashed first-party data, such as the email address someone
entered in your form, with the Google Ads conversion. **Hashing** scrambles the email into a
fixed code, such as with SHA-256, so Google can match it to a signed-in Google user without
seeing the raw email. This recovers conversions that cookies miss.

### Offline conversion imports

For lead generation, the real sale happens later, in a CRM or on the phone. You can send that
back:

1. When someone submits the form, store the click ID (`gclid` for Google) with the lead.
2. When the lead becomes a paying customer, record it in the CRM.
3. Upload the conversion with its click ID to Google Ads, manually or automatically.

Now Google Ads can optimize toward **customers**, not form fills. Meta supports the same idea
by sending CRM events through the Conversions API.

### Apple and Aggregated Event Measurement

After Apple's App Tracking Transparency, Meta introduced **Aggregated Event Measurement** to
measure web conversions from iPhone users who opted out. It needs a **verified domain**, and
it limits and models what's reported. Expect Meta's numbers for iPhone users to be partly
estimated.

## Common mistakes

- **Pixel only, no CAPI:** Meta misses a big share of conversions and optimizes worse.
- **Pixel and CAPI without matching `event_id`:** Every conversion counts twice.
- **Optimizing lead campaigns on form fills only:** You get cheap leads that never buy. Import
  offline conversions when you can.

## Learn more

Pick one (about 10 minutes):

- [About Conversions API](https://www.facebook.com/business/help/2041148702652965)
- [About enhanced conversions](https://support.google.com/google-ads/answer/9888656)
- [About offline conversion imports](https://support.google.com/google-ads/answer/2998031)

## Key terms

Meta Pixel, standard event, Conversions API, deduplication, event ID, Event Match Quality,
enhanced conversions, hashing, offline conversion import, Aggregated Event Measurement. See
the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 18](practice.md)
