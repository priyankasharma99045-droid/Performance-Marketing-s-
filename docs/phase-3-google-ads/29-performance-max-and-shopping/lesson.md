# Lesson 29: Performance Max and Shopping

**Phase 3 · Week 6 · Day 4** · 25 minutes

## Why this matters

For online stores, Shopping ads and Performance Max (PMax) often bring in more revenue than
Search. They work differently: no keywords, much more automation, and less visibility. You need
to know what you can still control, and the risks of handing the rest to Google.

## Key ideas

### Shopping ads and Merchant Center

Shopping ads show a product image, title, price, and store name. They come from a **product
feed**: a list of your products uploaded to **Google Merchant Center**.

Key feed fields:

| Field | Example | Why it matters |
|---|---|---|
| `id` | PEB-ETH-250 | A unique ID per product |
| `title` | Ethiopia Yirgacheffe Coffee Beans, Light Roast, 250 g | **The most important field.** Google matches searches to it. |
| `description` | Floral, citrus notes. Roasted weekly. | Extra matching and context |
| `link` | The product page URL | Must show the same price and availability |
| `image_link` | The product photo URL | Clean image, no promotional text over the product |
| `price` | 18.00 USD | Must match the website |
| `availability` | in_stock | Must match the website |
| `brand`, `gtin` | Pebble, product barcode | Identify the product |

There are no keywords in Shopping. **The feed is your keyword list.** Better titles, with the
words people search, bring better matches.

Products in Merchant Center can also appear in **free listings** on Google, with no ad spend.

### Performance Max

**Performance Max** is one campaign that runs across all of Google's inventory: Search,
Shopping, YouTube, Display, Discover, Gmail, and Maps. You give it:

| Input | What it is |
|---|---|
| **Goal** | A conversion goal and, optionally, a target CPA or ROAS |
| **Asset groups** | Bundles of headlines, descriptions, images, videos, and logos for one theme |
| **Audience signals** | Hints about who your customers are. Google can go beyond them. |
| **Feed** (optional) | Your Merchant Center products |

Google decides where to show ads, to whom, and which assets to combine.

### The trade-off

| Benefit | Risk |
|---|---|
| Reaches people across every Google channel | Less control over where ads show |
| Strong results with good conversion data | Can claim credit for brand searches and returning customers who would have bought anyway |
| Less manual work | Harder to see what's driving results |

Google has added controls over time, such as brand exclusions, negative keywords, and channel
reporting. Use them, and check whether PMax brings **new** customers or recycles existing ones.
Lesson 40 covers how to test that.

### When to use it

- **Good fit:** A store with a healthy product feed, working conversion values, and enough
  conversion volume.
- **Poor fit:** A brand-new account, broken tracking, or a business that needs tight control over
  placements.

## Common mistakes

- **Weak product titles:** "Yirgacheffe 250" matches far fewer searches than a descriptive title.
- **Launching PMax with no exclusions:** It can take over brand searches and look better than it
  is.
- **Judging PMax on its own ROAS alone:** Check total business results before and after.

## Learn more

Pick one (about 10 minutes):

- [About Performance Max campaigns](https://support.google.com/google-ads/answer/10724817)
- [Get started with Merchant Center](https://support.google.com/merchants/answer/12159157)
- [Product data specification](https://support.google.com/merchants/answer/7052112)

## Key terms

Shopping ads, Merchant Center, product feed, free listings, Performance Max, asset group,
audience signal, brand exclusion. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 29](practice.md)
