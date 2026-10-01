# Practice 19: Add Consent Mode and a banner

**30 minutes** · **You need:** Your live page and GTM container · **Save to:** `my-work/notes/lesson-19.md`, with screenshots in `my-work/notes/img/`

## Goal

Add Consent Mode defaults and a simple consent banner to your page, then see how tags behave
when consent is denied and granted.

This banner is for learning. A real business uses a certified consent management platform.

## Steps

### Part 1: Add the code (10 minutes)

1. On GitHub, edit your page's `index.html`.
2. Find the `<!-- LESSON 19 ... consent mode default ... -->` comment in `<head>`. It must be
   **above** the GTM snippet. Paste this below the comment:

   ```html
   <script>
     window.dataLayer = window.dataLayer || [];
     function gtag(){dataLayer.push(arguments);}
     var savedConsent = null;
     try { savedConsent = localStorage.getItem('pm_consent'); } catch (e) {}
     var consentState = savedConsent === 'granted' ? 'granted' : 'denied';
     gtag('consent', 'default', {
       ad_storage: consentState,
       ad_user_data: consentState,
       ad_personalization: consentState,
       analytics_storage: consentState
     });
   </script>
   ```

3. Find the `<!-- LESSON 19 ... consent banner ... -->` comment before `</body>`. Paste this
   below it:

   ```html
   <div id="consent-banner" style="display:none; position:fixed; left:16px; right:16px; bottom:16px; background:#2b211b; color:#fff; padding:16px; border-radius:12px; z-index:10;">
     <p style="margin:0 0 12px;">This practice page uses cookies to measure visits. Do you accept?</p>
     <button id="consent-accept" class="btn">Accept</button>
     <button id="consent-decline" class="btn" style="background:#6b5d53;">Decline</button>
   </div>
   <script>
     (function () {
       var banner = document.getElementById('consent-banner');
       function choose(state) {
         try { localStorage.setItem('pm_consent', state); } catch (e) {}
         gtag('consent', 'update', {
           ad_storage: state,
           ad_user_data: state,
           ad_personalization: state,
           analytics_storage: state
         });
         banner.style.display = 'none';
       }
       if (!savedConsent) { banner.style.display = 'block'; }
       document.getElementById('consent-accept').onclick = function () { choose('granted'); };
       document.getElementById('consent-decline').onclick = function () { choose('denied'); };
     })();
   </script>
   ```

4. Commit the change.

The first script reads any earlier choice and sets the default before GTM loads. The second
shows the banner only when there's no saved choice, and sends an update when the visitor
chooses.

### Part 2: Test denied, then granted (15 minutes)

1. In GTM, select **Preview** and connect to your page. The banner appears.
2. Before choosing, select the first event in Tag Assistant and open the **Consent** tab.
   Record the **On-page Default** for each setting. Check that all four are `denied`.
3. Select **Decline**. Select the CTA button. In Tag Assistant, check whether the GA4 tags
   still fire, and note what the **Consent** tab shows.
4. Clear the saved choice: open developer tools, go to **Application > Local storage**, select
   your site, and delete `pm_consent`. Reload in preview mode.
5. This time select **Accept**. Check the **Consent** tab shows an **On-page Update** to
   `granted`. Screenshot it.
6. Open **Application > Cookies** and check whether the `_ga` cookie now exists. Compare with
   step 3.

### Part 3: Document it (5 minutes)

In section 6 of your tracking plan, describe the defaults, the banner, and what happens when a
visitor declines.

## Done when

- [ ] The default script is above GTM, and the banner shows on the first visit only.
- [ ] Tag Assistant shows `denied` defaults and a `granted` update after **Accept**.
- [ ] You recorded whether `_ga` exists after **Decline** and after **Accept**.
- [ ] Section 6 of the tracking plan is complete.

## Check yourself

1. Why must the consent default run before the GTM snippet?

   <details><summary>Answer</summary>

   Tags start firing as soon as GTM loads. If the default isn't set yet, they run without
   knowing the visitor's consent state, and may set cookies before permission.
   </details>

2. After **Decline**, GA4 tags still fired in Tag Assistant, but no `_ga` cookie was set. Why?

   <details><summary>Answer</summary>

   That's advanced Consent Mode behavior. Google tags load but send cookieless pings without
   storing identifiers, and Google models the missing data.
   </details>

3. Which two Consent Mode settings were added in v2?

   <details><summary>Answer</summary>

   `ad_user_data` and `ad_personalization`.
   </details>

4. Half your EEA visitors decline consent. What happens to GA4 user counts and to conversions
   reported in Google Ads?

   <details><summary>Answer</summary>

   GA4 measures fewer users than really visited. Google Ads reports fewer observed conversions,
   with some gap filled by modeled conversions.
   </details>

---

**Next:** [Lesson 20: Attribution](../20-attribution/lesson.md)
