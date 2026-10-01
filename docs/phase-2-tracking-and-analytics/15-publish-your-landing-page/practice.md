# Practice 15: Publish the page and install GA4

**30–45 minutes** · **You need:** A GitHub account and a Google account · **Save to:** `my-work/notes/lesson-15.md`

## Goal

Get your practice landing page live on the internet, tracked by your own GA4 property.

## Steps

### Part 1: Publish on GitHub Pages (15 minutes)

1. On GitHub, create a **public** repository named `pm-landing-page`. Tick **Add a README
   file**.
2. In the new repository, select **Add file > Upload files**. Upload
   [`practice-kit/landing-page/index.html`](../../../practice-kit/landing-page/index.html)
   from this course. Select **Commit changes**.
3. Open **Settings > Pages**. Under **Build and deployment**, set **Source** to **Deploy from a
   branch**, choose the `main` branch and the `/ (root)` folder, and select **Save**.
4. Wait 1–2 minutes and refresh the Pages settings. Your URL appears at the top, in the form
   `https://YOUR_USERNAME.github.io/pm-landing-page/`.
5. Open the URL on your computer and your phone. Submit the form once to see the thank-you
   message.

`YOUR_USERNAME` is your GitHub username.

**Optional:** Edit `index.html` on GitHub to match your practice business: headline, offer,
benefits. Keep every `id` attribute and the script at the bottom.

### Part 2: Create your GA4 property (10 minutes)

1. Go to [Google Analytics](https://analytics.google.com/) and select **Admin** (the gear icon).
2. Select **Create > Account**. Name it after your practice business.
3. Create a property named `Landing page`. Set your time zone and currency.
4. Fill in the business details. For objectives, choose **Generate leads**.
5. Choose **Web** as the platform. Enter your GitHub Pages URL and name the stream `Landing
   page`. Keep **Enhanced measurement** on. Select **Create stream**.
6. Copy the **measurement ID** (`G-...`) into your notes.

### Part 3: Install the Google tag (10 minutes)

1. In the stream details, select **View tag instructions**, then **Install manually**. Copy the
   snippet.
2. On GitHub, open `index.html` and select the pencil icon to edit.
3. Paste the snippet right after the `<!-- LESSON 16 ... -->` comment line inside `<head>`.
   Commit the change.
4. Wait 1–2 minutes, then open your page on your phone.
5. In GA4, open **Reports > Realtime**. Check that it shows at least 1 user. Screenshot it.

## Done when

- [ ] Your page is live at a `github.io` URL.
- [ ] Your GA4 property and web stream exist, and the measurement ID is in your notes.
- [ ] Realtime shows your visit, and the screenshot is saved.

## Troubleshooting

- **Page shows 404:** Wait a few more minutes. Check the file is named exactly `index.html` and
  is in the root of the repository.
- **Realtime shows 0 users:** Make sure you committed the change, then hard-refresh the page
  (Shift+Command+R on a Mac, Ctrl+Shift+R on Windows). Ad blockers also block GA4. Try a
  private window with extensions off.

## Check yourself

1. Why must you not keep both the Google tag snippet and a GTM container sending GA4 page
   views?

   <details><summary>Answer</summary>

   Every page view would be sent twice, doubling page views and distorting every metric built
   on them.
   </details>

2. Where do you check that a brand-new tag works: standard reports or Realtime?

   <details><summary>Answer</summary>

   Realtime, or DebugView. Standard reports can take 24–48 hours to fill in.
   </details>

3. Why do the property's time zone and currency matter?

   <details><summary>Answer</summary>

   GA4 uses the time zone to decide which day an event belongs to, and the currency for all
   revenue reporting. Wrong settings make daily and revenue numbers misleading.
   </details>

---

**Next:** Saturday is your [week 3 review](../README.md#week-3-review). After that, start [Lesson 16: Google Tag Manager](../16-google-tag-manager/lesson.md).
