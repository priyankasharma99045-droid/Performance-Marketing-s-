# Lesson 19: Privacy and Consent Mode

**Phase 2 · Week 4 · Day 4** · 25 minutes

## Why this matters

In many countries, you need a visitor's permission before setting tracking cookies. Breaking
these rules risks fines and loses trust. Google also requires consent signals before it uses
data from visitors in the European Economic Area (EEA) for ads. A performance marketer has to
understand how consent changes what you can measure.

## Key ideas

### The laws, in brief

| Law | Where | Main idea |
|---|---|---|
| **GDPR** and **ePrivacy** rules | European Union and EEA (UK has its own version) | Ask before setting non-essential cookies. Consent must be opt-in. |
| **CCPA**, amended by **CPRA** | California | Tell people what you collect, and let them opt out of the "sale" or "sharing" of their data |

Many other countries and US states have similar laws. This lesson isn't legal advice. Real
businesses check with a lawyer.

### Consent banners and CMPs

A **consent banner** asks visitors to accept or decline tracking. Larger sites use a **consent
management platform (CMP)**, a tool that shows the banner, stores choices, and passes them to
tags. Google keeps a list of certified CMPs.

### Google Consent Mode

**Consent Mode** lets Google tags adjust their behavior based on the visitor's choice. Consent
Mode v2 uses four main settings:

| Setting | Controls |
|---|---|
| `analytics_storage` | Cookies for analytics, such as GA4 |
| `ad_storage` | Cookies for advertising |
| `ad_user_data` | Sending user data to Google for advertising |
| `ad_personalization` | Using data for personalized ads, such as remarketing |

Each is `granted` or `denied`.

### How it works on a page

1. **Default:** Before any tag loads, the page sets every setting to `denied`. In regions
   without opt-in laws, some sites default to `granted`.
2. **Banner:** The visitor chooses.
3. **Update:** The page sends the new state, such as `granted`, and tags adjust.

```html
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('consent', 'default', {
    ad_storage: 'denied',
    ad_user_data: 'denied',
    ad_personalization: 'denied',
    analytics_storage: 'denied'
  });
</script>
<!-- The Google Tag Manager snippet goes after this. -->
```

The default must run **before** GTM loads. Otherwise tags fire before consent is known.

### Basic and advanced Consent Mode

| Mode | When consent is denied |
|---|---|
| **Basic** | Google tags don't load at all. No data. |
| **Advanced** | Google tags load but send **cookieless pings**: anonymous signals with no identifiers. Google uses them to **model** the missing conversions. |

Advanced mode recovers more measurement, so it's widely used. Some legal teams prefer basic.
Either way, expect fewer measured users and conversions when many people decline.

### What this means for your numbers

- GA4 and ad platforms see fewer people than really visited.
- Some reported conversions are **modeled**, not counted.
- Comparing data across regions with different consent rules needs care.

## Common mistakes

- **Setting the default after GTM loads:** Tags fire before consent is known.
- **A banner that does nothing:** Clicking "Decline" must actually change tag behavior.
- **Ignoring the two v2 settings:** Without `ad_user_data` and `ad_personalization`, Google's
  EEA ad features stop working.

## Learn more

Pick one (about 10 minutes):

- [Consent mode overview](https://developers.google.com/tag-platform/security/concepts/consent-mode)
- [Set up consent mode on websites](https://developers.google.com/tag-platform/security/guides/consent)

## Key terms

GDPR, CCPA, consent banner, CMP, Consent Mode, `analytics_storage`, `ad_storage`,
`ad_user_data`, `ad_personalization`, basic mode, advanced mode, cookieless ping, modeled
conversions. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 19](practice.md)
