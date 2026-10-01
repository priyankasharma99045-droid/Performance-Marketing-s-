# Lesson 16: Google Tag Manager

**Phase 2 · Week 4 · Day 1** · 25 minutes

## Why this matters

A real site might run GA4, a Google Ads tag, a Meta Pixel, a TikTok Pixel, and a heatmap
tool, each tracking several events. Editing site code for every change is slow and risky.
Google Tag Manager (GTM) puts all of it in one place that marketers can manage, test, and roll
back without a developer.

## Key ideas

### The container

You paste the GTM code into the site once. That code loads a **container**. Everything else
lives inside the container and is managed from the GTM website.

```
Site code: GTM snippet (once)
  └── Container
        ├── Tags       what to send, and where
        ├── Triggers   when to send it
        └── Variables  values that tags and triggers use
```

### Tags, triggers, and variables

| Part | Question it answers | Example |
|---|---|---|
| **Tag** | What happens? | Send a `cta_click` event to GA4 |
| **Trigger** | When does it happen? | When someone clicks the link with ID `cta-hero` |
| **Variable** | What value is needed? | The clicked element's ID, or the page URL |

A tag without a trigger never fires. A trigger can fire many tags.

### Common trigger types

| Trigger | Fires when |
|---|---|
| **Initialization - All Pages** | First, before anything else on every page. Google recommends it for the Google tag. |
| **Page View** | A page starts loading |
| **Click - Just Links** | Someone clicks an `<a>` link |
| **Click - All Elements** | Someone clicks anything |
| **Form Submission** | A standard HTML form submits. Often unreliable on modern sites. |
| **Custom Event** | The site pushes a named event to the data layer. Lesson 17. |

### Built-in variables

GTM has ready-made variables such as **Page URL**, **Click ID**, **Click Text**, and **Click
URL**. Some are off by default. Turn them on under **Variables > Configure**.

### The data layer

The **data layer** is a list on the page that the site uses to hand information to GTM:

```js
window.dataLayer.push({
  event: 'generate_lead',
  roast: 'Medium'
});
```

GTM listens to it. A **Custom Event** trigger can fire on `generate_lead`, and a **Data Layer
Variable** can read `roast`. This is the most reliable way to track actions.

### Preview, then publish

Nothing you change in GTM goes live until you **publish**. Before publishing:

1. Select **Preview**. GTM opens your site with **Tag Assistant** connected.
2. Do the action, such as clicking the button.
3. Tag Assistant lists every event and shows which tags fired and which didn't.
4. When everything works, select **Submit** and name the version, such as "Add CTA click
   tracking".

Every published version is saved. If something breaks, you can roll back to an earlier version.

### The Google tag in GTM

To send data to GA4 through GTM, you add a **Google tag** with your measurement ID. Then you
add **Google Analytics: GA4 Event** tags for each extra event.

## Common mistakes

- **Leaving the old gtag snippet on the page:** Double counting. Remove it when you move to GTM.
- **Publishing without previewing:** You find out it's broken from wrong numbers a week later.
- **Vague names:** "Tag 1" means nothing in six months. Use names like `GA4 - Event - CTA Click`.

## Learn more

Pick one (about 10 minutes):

- [Introduction to Tag Manager](https://support.google.com/tagmanager/answer/6102821)
- [About triggers](https://support.google.com/tagmanager/answer/7679316)
- [Preview and debug containers](https://support.google.com/tagmanager/answer/6107056)

## Key terms

Container, tag, trigger, variable, built-in variable, data layer, preview mode, version,
publish. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 16](practice.md)
