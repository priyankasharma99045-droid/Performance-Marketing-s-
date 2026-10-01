# Lesson 23: Account structure and negative keywords

**Phase 3 · Week 5 · Day 3** · 25 minutes

## Why this matters

Structure decides two things: where your budget goes, and how relevant each ad is to its
keywords. Negative keywords decide what you **don't** pay for. Together they're the difference
between an account that's clear to manage and one that quietly wastes money.

## Key ideas

### What each level controls

| Level | Controls |
|---|---|
| **Campaign** | Budget, bid strategy, locations, languages, networks, schedule |
| **Ad group** | A theme: a set of closely related keywords and the ads written for them |
| **Keywords and ads** | What you match, and what people see |

So: **split campaigns when you need different budgets or settings**. **Split ad groups when you
need different ads.**

### Common ways to split campaigns

- **Brand compared with non-brand:** Always separate. Brand searches are cheap and convert very
  well. Mixed in with generic keywords, they hide how generic keywords really perform, and Smart
  Bidding shifts budget toward them.
- **By product line:** When margins or targets differ.
- **By location:** When budgets or performance differ by country or region.
- **Competitor keywords:** Bidding on competitors' names is allowed in many places but usually
  converts poorly and costs more. Keep it in its own campaign so you can judge it.

### Ad groups

An ad group holds 5–20 keywords that share one meaning, so one set of ads fits them all:

```
Campaign: PEB_GADS_SEARCH_GENERIC_US
  ├── Ad group: Coffee Beans          → ads about fresh beans
  ├── Ad group: Coffee Subscription   → ads about delivery schedules
  └── Ad group: Coffee Gifts          → ads about gifting
```

Older advice was to create one ad group per keyword. With close variants and Smart Bidding,
that's no longer needed. Today's trend is **consolidation**: fewer, larger campaigns give Smart
Bidding more data to learn from.

### Negative keywords

A negative keyword stops your ad showing for searches that contain it.

| Negative match type | Blocks searches that | Negative | Blocks | Doesn't block |
|---|---|---|---|---|
| **Negative broad** | Contain all the words, in any order | `free samples` | "samples coffee free" | "free coffee" |
| **Negative phrase** | Contain the exact phrase, in order | `"cold brew"` | "how to make cold brew" | "brew cold coffee" |
| **Negative exact** | Are exactly the phrase | `[coffee]` | "coffee" | "coffee beans" |

Negatives **don't** match close variants. If you exclude `job`, also add `jobs`.

### Where negatives live

- **Ad group level:** Blocks a search in one ad group so another ad group gets it.
- **Campaign level:** Blocks it in the whole campaign.
- **Negative keyword lists:** Shared lists you apply to many campaigns, such as a list of
  universal exclusions.

### Common negatives to start with

| Category | Examples |
|---|---|
| Jobs | jobs, job, careers, hiring, salary |
| Free or cheap | free, cheap, discount (if you're premium) |
| Learning and DIY | how to, diy, tutorial, recipe |
| Wrong product | used, repair, parts, wholesale |
| Your brand, in non-brand campaigns | Your brand name, so brand searches go to the brand campaign |

Some depend on the business: a repair shop wants "repair".

## Common mistakes

- **Brand and non-brand mixed together:** Generic performance looks far better than it is.
- **No negatives at launch:** The first week's budget pays for clearly irrelevant searches.
- **Over-excluding:** A negative like `best` can block "best coffee subscription", one of your
  most valuable searches.

## Learn more

Pick one (about 10 minutes):

- [About negative keywords](https://support.google.com/google-ads/answer/2453972)
- [Google Ads best practices](https://support.google.com/google-ads/answer/6154846)

## Key terms

Campaign, ad group, brand campaign, non-brand campaign, consolidation, negative keyword,
negative keyword list. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 23](practice.md)
