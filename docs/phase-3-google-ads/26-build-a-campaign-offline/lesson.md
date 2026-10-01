# Lesson 26: Build a campaign offline

**Phase 3 · Week 6 · Day 1** · 25 minutes

## Why this matters

Professionals rarely build large campaigns click by click in the web interface. They plan in a
spreadsheet and build in **Google Ads Editor**, a free desktop app that works offline and only
sends changes when you choose. Campaign settings are also where many costly mistakes hide, so
you need a pre-launch checklist.

## Key ideas

### Campaign settings that matter

| Setting | Recommended starting choice | Why |
|---|---|---|
| **Campaign type** | Search | You're building a Search campaign |
| **Networks** | Turn off the **Display Network**. Consider turning off **Search partners** at first. | Display placements in a Search campaign behave very differently and muddy results |
| **Locations** | Your target area | |
| **Location options** | **Presence**: people in or regularly in your locations | The default can include people merely **interested** in the location, who may be anywhere |
| **Languages** | The languages your customers use | |
| **Budget and bidding** | From lesson 25 | |
| **AI Max** | Off, unless you deliberately want it | Easier to learn and control at first. Lesson 22. |
| **Conversion goals** | Your primary conversion only | So Google optimizes for the right action |
| **Ad schedule** | All hours at first | Change it later, based on data |

At account level, check that **auto-tagging** is on, so GA4 gets campaign data through `gclid`.

### Google Ads Editor

The workflow:

1. **Download** the account into Ads Editor.
2. **Make changes** offline: add campaigns, paste keywords, edit ads in bulk.
3. **Check** for errors. Ads Editor flags missing fields and policy issues.
4. **Post** the changes to the live account. Nothing changes online until you post.

Ads Editor can **import** a spreadsheet of campaigns, ad groups, keywords, and ads. The
practice kit has a [template](../../../practice-kit/templates/search-campaign-build.csv) in the
column format it expects.

### The spreadsheet layout

Each row is one item. Blank columns mean "doesn't apply to this row":

| Campaign | Ad Group | Keyword | Criterion Type | Headline 1 |
|---|---|---|---|---|
| PEB_Search_Generic_US | | | | |
| PEB_Search_Generic_US | Coffee Beans | | | |
| PEB_Search_Generic_US | Coffee Beans | buy coffee beans online | Exact | |
| PEB_Search_Generic_US | Coffee Beans | free | Negative Phrase | |
| PEB_Search_Generic_US | Coffee Beans | | | Fresh Roasted Coffee Beans |

### Pre-launch checklist

Before any campaign goes live:

- [ ] Conversion tracking is tested and the primary conversion is selected.
- [ ] Auto-tagging is on.
- [ ] Locations use **Presence**.
- [ ] Display Network is off for Search campaigns.
- [ ] AI Max and broad match are deliberate choices.
- [ ] Negative keyword lists are applied.
- [ ] Every ad group has at least one RSA, with no policy problems.
- [ ] Assets are added.
- [ ] Landing pages load fast and work on mobile.
- [ ] Budget and bid strategy match the plan.
- [ ] Brand terms are excluded from non-brand campaigns.

## Common mistakes

- **Leaving the Display Network on in a Search campaign:** Cheap, low-intent clicks.
- **The default location option:** Pays for people outside your area who only searched about it.
- **Posting from Ads Editor without a final review:** Bulk mistakes go live in seconds.

## Learn more

Pick one (about 10 minutes):

- [Google Ads Editor](https://business.google.com/en-all/ad-tools/google-ads-editor/)
- [About campaign settings](https://support.google.com/google-ads/answer/1704395)
- [Create a campaign](https://support.google.com/google-ads/answer/6324971)

## Key terms

Google Ads Editor, post, import, Search partners, Display Network, location options, presence,
auto-tagging, pre-launch checklist. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 26](practice.md)
