# Lesson 13: GA4 core concepts

**Phase 2 · Week 3 · Day 3** · 25 minutes

## Why this matters

Google Analytics 4 (GA4) is the most widely used website analytics tool, and it's free. Ad
platforms tell you what happened after an ad. GA4 tells you what happened on the site, across
every channel. Most marketing jobs expect you to find your way around it.

## Key ideas

### How GA4 is organized

```
Account          (your company)
  └── Property   (one website or app, or both together)
        └── Data stream   (the website or app sending data)
```

Each web data stream has a **measurement ID** that starts with `G-`. That ID goes in the tag
on the site.

### Everything is an event

GA4 records every interaction as an **event**: a page view, a scroll, a click, a purchase.
Each event can carry **parameters**: extra details about it.

```
Event:      purchase
Parameters: value = 36.00, currency = USD, transaction_id = T1001
```

### Four kinds of events

| Kind | Who sets it up | Examples |
|---|---|---|
| **Automatically collected** | GA4, always | `first_visit`, `session_start`, `user_engagement` |
| **Enhanced measurement** | GA4, on by default and adjustable | `page_view`, `scroll` (90% of page), `click` (outbound links), `file_download`, `view_search_results`, `form_start` |
| **Recommended** | You, using Google's suggested names | `generate_lead`, `sign_up`, `add_to_cart`, `begin_checkout`, `purchase` |
| **Custom** | You, with your own names | `cta_click`, `quiz_complete` |

Use a recommended name whenever one fits. GA4 builds some reports around those names.

### Key events

A **key event** is an event you mark as important to the business, such as `generate_lead` or
`purchase`. GA4 called these "conversions" until 2024. In Google Ads they're still called
conversions.

### Users, sessions, and engagement

- **User:** One person, as best GA4 can tell. Really one browser or device, unless the site
  sends a login ID.
- **Session:** One visit. It ends after 30 minutes of inactivity by default.
- **Engaged session:** A session that lasted more than 10 seconds, had a key event, or had at
  least 2 page views.
- **Engagement rate:** Engaged sessions ÷ sessions. GA4's main measure of visit quality.
- **Bounce rate:** The opposite: 1 − engagement rate.

### Dimensions and metrics

Every report combines two kinds of fields:

- **Dimensions** describe: page, country, device, source, campaign.
- **Metrics** count: users, sessions, events, key events, revenue.

"Sessions by device category" means the metric `sessions`, split by the dimension `device
category`.

### Where a visit came from

GA4 stores traffic source at different levels:

- **First user source:** How the user first found the site. Shown in **User acquisition**.
- **Session source:** How this particular visit started. Shown in **Traffic acquisition**.

The same person can have a first user source of `facebook` and a session source of `google`
on a later visit. Both are true.

### The demo account

Google gives everyone free read-only access to a real GA4 property: the **Google Merchandise
Store**, an online shop selling Google-branded products. You use it in the next two practices.

## Common mistakes

- **Treating users as people:** One person on a phone and a laptop counts as two users.
- **Inventing event names when a recommended one exists:** You lose built-in reports.
- **Confusing User acquisition with Traffic acquisition:** One shows first visits, the other
  every visit.

## Learn more

Pick one (about 10 minutes):

- [About events](https://support.google.com/analytics/answer/9322688)
- [Enhanced measurement events](https://support.google.com/analytics/answer/9216061)
- [About Analytics sessions](https://support.google.com/analytics/answer/9191807)

## Key terms

Property, data stream, measurement ID, event, parameter, key event, user, session, engaged
session, engagement rate, dimension, metric. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 13](practice.md)
