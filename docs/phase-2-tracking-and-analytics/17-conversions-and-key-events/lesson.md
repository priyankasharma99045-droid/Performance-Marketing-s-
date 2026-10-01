# Lesson 17: Conversions and key events

**Phase 2 · Week 4 · Day 2** · 25 minutes

## Why this matters

Conversions are the most important numbers in performance marketing. Ad platforms use them to
decide who sees your ads. Bidding strategies use them to set prices. If conversion tracking is
missing or wrong, the platforms optimize toward the wrong thing, and you can't tell.

## Key ideas

### What counts as a conversion?

A conversion is an action with business value:

| Business | Primary conversion | Secondary conversions |
|---|---|---|
| Online store | `purchase` | `add_to_cart`, `begin_checkout` |
| Lead generation | `generate_lead` | `form_start`, phone number click |
| Software trial | `sign_up` | Pricing page view |

**Primary** conversions are what you optimize and judge campaigns on. **Secondary** ones help
you diagnose. Tell the ad platforms to optimize only for primary conversions. If you include
cheap, low-effort actions such as page views, the platform finds people who do those instead of
buying.

### Three ways to detect a conversion

| Method | How it works | Reliability |
|---|---|---|
| **Thank-you page** | Fire when the URL contains `/thank-you` | Good, if the page can only be reached by converting |
| **Form Submission trigger** | GTM detects the form submitting | Often fails on modern forms |
| **Data layer event** | The site pushes `generate_lead` after success | Best |

Your practice page uses a data layer event.

### Building it in GTM

```
Trigger:   Custom Event, event name = generate_lead
Variable:  Data Layer Variable, name = roast
Tag:       GA4 Event, event name = generate_lead, parameter roast = {{DLV - roast}}
```

Use `generate_lead`, a GA4 recommended event name, not something like `form_done`.

### Marking it as a key event in GA4

Sending the event isn't enough. In GA4, go to **Admin**, then **Events** under **Data
display**, and select the star next to `generate_lead`. If the event hasn't arrived yet, select
**Create event**, type its exact name, and turn on **Mark as key event**.

### Adding a value

Even leads can carry a value. If a lead is worth $40 on average (from lesson 4), add the
parameters `value = 40` and `currency = USD`. Ad platforms can then optimize for value, not
only volume.

### Counting

- **Purchases:** Count every one. Two purchases are worth twice as much.
- **Leads:** Count one per person or session. The same person filling a form twice is still one
  lead. In Google Ads, this is the **One** counting option.

### Testing with DebugView

**DebugView** in GA4 (**Admin**, then **DebugView** under **Data display**) shows events from
test sessions in real time, with all their parameters. When you connect to your site with GTM
preview, your test visit is in debug mode. Always check:

1. The event name is spelled exactly right.
2. The parameters have real values, not `undefined`.
3. It fires once per action, not twice.

### Sending conversions to ad platforms

Ad platforms need the conversion too:

- **Google Ads:** Import GA4 key events, or use a Google Ads conversion tag. Lesson 18 compares
  the two.
- **Meta:** Send a matching Meta event, such as `Lead`, with the Meta Pixel and Conversions API.

## Common mistakes

- **Optimizing for micro-conversions:** You get lots of cheap, useless actions.
- **Firing on button click instead of success:** Counts failed and empty form attempts.
- **Never testing:** A typo in an event name silently breaks reporting.

## Learn more

Pick one (about 10 minutes):

- [Recommended events](https://support.google.com/analytics/answer/9267735): Look up `generate_lead` and `purchase`.
- [Mark events as key events](https://support.google.com/analytics/answer/13128484)
- [Monitor events in DebugView](https://support.google.com/analytics/answer/7201382)

## Key terms

Conversion, key event, primary conversion, secondary conversion, Custom Event trigger, Data
Layer Variable, DebugView, conversion value. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 17](practice.md)
