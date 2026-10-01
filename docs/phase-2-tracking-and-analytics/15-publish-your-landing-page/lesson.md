# Lesson 15: Publish your landing page

**Phase 2 · Week 3 · Day 5** · 25 minutes

## Why this matters

Reading about tracking only goes so far. For the rest of phase 2, you set up real tracking on a
real page that you control. Today you publish the page for free and connect it to your own GA4
property.

## Key ideas

### What you need for a measurable website

```
Hosting  → somewhere the files live (GitHub Pages, free)
Address  → a URL people can visit (yourname.github.io/pm-landing-page)
Page     → the HTML file (the practice kit's landing page)
Tags     → code that sends data to GA4 and ad platforms
```

Real businesses use their own domain name and a website builder or developer. The tracking
works the same way.

### Your practice page

The page in [`practice-kit/landing-page/`](../../../practice-kit/landing-page/index.html) is
built for practice:

- A hero section with a headline and a call-to-action button (`id="cta-hero"`).
- A sign-up form that never sends data anywhere. When submitted, it shows a thank-you message
  and pushes a `generate_lead` event to the data layer. You use that event in lesson 17.
- Comments marking where to paste tags in lessons 16 and 19.

You can edit the text to match your practice business. Keep the IDs and the script at the
bottom unchanged.

### Two ways to install GA4

| Method | How | Good for |
|---|---|---|
| **Google tag (gtag.js)** | Paste Google's snippet into the page's `<head>` | One tool on a simple site |
| **Google Tag Manager** | Paste the GTM snippet once, then add every tag inside GTM | Several tools and events, with no more code edits |

Today you install the Google tag directly, to see data arrive. Tomorrow you replace it with GTM.
That swap teaches an important rule: **never install the same tag both ways**, or every page
view counts twice.

### Creating a GA4 property

1. **Account:** Usually the company name.
2. **Property:** One per website or app. Set the **time zone** and **currency** correctly.
   Reports use them.
3. **Data stream:** Choose **Web**, enter the site URL, and keep **Enhanced measurement** on.
4. **Measurement ID:** Copy the `G-` ID. You need it in lesson 16 too.

### Checking it works

**Realtime** reports show visits within seconds. Open your page on your phone, and Realtime
shows 1 user. Standard reports can take up to 24–48 hours to fill in.

### Your own visits

Your test visits are real data in GA4. On a real business site, you'd set up an **internal
traffic** filter so the team's visits don't count. For this practice site, your visits are the
only data, so keep them.

## Common mistakes

- **Wrong time zone or currency:** Daily numbers and revenue look wrong forever after.
- **Installing the tag in the wrong place:** It belongs in the `<head>`, as high as possible.
- **Waiting for standard reports to test:** Use Realtime or DebugView.

## Learn more

Pick one (about 10 minutes):

- [Set up Analytics for a website](https://support.google.com/analytics/answer/9304153)
- [Creating a GitHub Pages site](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site)

## Key terms

Hosting, data stream, measurement ID, Google tag, Realtime report, internal traffic. See the
[glossary](../../reference/glossary.md).

---

**Next:** [Practice 15](practice.md)
