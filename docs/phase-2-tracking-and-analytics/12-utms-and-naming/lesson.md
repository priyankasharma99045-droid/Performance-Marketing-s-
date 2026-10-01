# Lesson 12: UTMs and naming conventions

**Phase 2 · Week 3 · Day 2** · 25 minutes

## Why this matters

GA4 needs to know where each visitor came from. For many links it can't tell, so you add
labels to the link yourself. These labels are UTM parameters. Combined with consistent
campaign names, they let you answer "which campaign brought this sale?" months later.

## Key ideas

### What a UTM looks like

```
https://pebble.example/coffee?utm_source=facebook&utm_medium=paid_social&utm_campaign=peb_sales_prosp_us&utm_content=barista_video
```

Everything after `?` is a parameter. GA4 reads them and stores them with the session.

| Parameter | Answers | Example |
|---|---|---|
| `utm_source` | Which site or platform? | `google`, `facebook`, `newsletter` |
| `utm_medium` | What type of traffic? | `cpc`, `paid_social`, `email` |
| `utm_campaign` | Which campaign? | `peb_sales_prosp_us` |
| `utm_content` | Which ad or link? | `barista_video` |
| `utm_term` | Which keyword? | `coffee_subscription` |

Source, medium, and campaign are the essentials. Content and term add detail.

### Medium decides the channel

GA4 groups traffic into **channels**, such as Paid Search, Paid Social, and Email, mostly using
`utm_medium` and `utm_source`. If the medium is wrong, the traffic lands in the wrong channel or
in **Unassigned**.

| Traffic | Source | Medium |
|---|---|---|
| Meta ads | `facebook` or `instagram` | `paid_social` |
| Email newsletter | `newsletter` | `email` |
| LinkedIn ads | `linkedin` | `paid_social` |
| Influencer post | `influencer_name` | `social` (unpaid) or `paid_social` (paid) |

### When you don't need UTMs

**Google Ads auto-tagging** adds `gclid` to every click. When Google Ads and GA4 are linked, GA4
gets full campaign detail from it. Don't add UTMs to Google Ads unless you have a specific
reason.

### UTM rules

1. **Lowercase only:** GA4 treats `Facebook` and `facebook` as two different sources.
2. **No spaces:** Use `_` or `-`.
3. **One spelling, forever:** Pick `paid_social` and never write `paidsocial` or `social_paid`.
4. **Never tag internal links:** A UTM on a link inside your own site restarts attribution, and
   the original source is lost.
5. **Keep a UTM sheet:** Build every link from one spreadsheet so the team stays consistent.

### Campaign naming conventions

Ad accounts get messy fast. A naming convention makes every campaign readable and quick to
filter in a spreadsheet:

```
BRAND_CHANNEL_OBJECTIVE_AUDIENCE_GEO
PEB_META_SALES_PROSP_US
PEB_GADS_SEARCH_GENERIC_US
```

Use the same parts in the same order everywhere: ad platforms, UTMs, and reports. Then
`SUMIF` and pivot tables work across all of them.

### Dynamic parameters

Meta can fill in values for you. In the ad's **URL parameters** field, you can write
`utm_campaign={{campaign.name}}`, and Meta replaces it with the real campaign name. That keeps
UTMs in sync with your naming convention.

## Common mistakes

- **Mixed capitals:** Splits one source into several rows in GA4.
- **UTMs on Google Ads links:** Can conflict with auto-tagging.
- **UTMs on internal banners:** Overwrites the real source.
- **Free-typing campaign names:** Leads to `Spring Sale`, `spring-sale`, and `SpringSale2`.

## Learn more

Pick one (about 10 minutes):

- [Campaign URL Builder](https://ga-dev-tools.google/campaign-url-builder/): Google's tool for building UTM links.
- [Scopes of traffic-source dimensions](https://support.google.com/analytics/answer/11080067): How GA4 stores source and medium.

## Key terms

UTM parameter, source, medium, campaign, channel, auto-tagging, naming convention. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 12](practice.md)
