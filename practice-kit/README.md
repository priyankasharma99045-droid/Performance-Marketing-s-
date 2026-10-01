# Practice kit

Everything you need to practice without spending money on ads.

| Folder | What's inside | Used in |
|---|---|---|
| `data/` | Sample campaign data for a fictional store | Lessons 3, 5, 20, 21, 27, 28, 34, 35, 39, and 40 |
| `landing-page/` | A one-page website you publish free on GitHub Pages | Lessons 9, 15, 16, 17, and 19 |
| `templates/` | A spreadsheet layout for building a Search campaign offline | Lesson 26 |

## The fictional business

All sample data belongs to **Pebble Coffee Co.**, a made-up online store. The numbers are
invented for practice, but they follow realistic patterns.

| Fact | Value |
|---|---|
| What it sells | Specialty coffee beans, one-off bags and subscriptions |
| Average order value (AOV) | About $36 |
| Gross margin | 40% |
| Break-even ROAS | 2.5 (1 ÷ 0.40) |
| Break-even CPA | $14.40 ($36 × 0.40) |

Keep these numbers nearby. Most data exercises ask whether something is above or below
break-even.

## How to open the data

1. Go to [Google Sheets](https://sheets.google.com) and create a blank spreadsheet.
2. Select **File > Import > Upload**, and upload one CSV file from `data/`.
3. Choose **Insert new sheet(s)**, then select **Import data**.

To download a single CSV from GitHub, open the file and select the **Download raw file**
button.

## Data files

### `data/campaign-daily.csv`

14 days of results for 4 campaigns across Google Ads and Meta. One row per campaign per day.

| Column | Meaning |
|---|---|
| `date` | Day of activity |
| `channel` | Ad platform: Google Ads or Meta |
| `campaign` | Campaign name |
| `impressions` | Times an ad was shown |
| `clicks` | Clicks on the ad |
| `spend` | Money spent, in US dollars |
| `conversions` | Purchases |
| `revenue` | Sales value of those purchases |

### `data/search-terms.csv`

30 days of search terms from the **Search - Generic** campaign: what people actually typed
before they saw and clicked the ad.

| Column | Meaning |
|---|---|
| `search_term` | The exact search |
| `keyword` | The keyword in the account that matched the search |
| `match_type` | Match type of that keyword |
| `ad_group` | Ad group that holds the keyword |
| `impressions`, `clicks`, `cost`, `conversions`, `conv_value` | Results for that search term |

### `data/search-keywords.csv`

30 days of keyword results for the same campaign, with Quality Score and impression share.

| Column | Meaning |
|---|---|
| `quality_score` | Google's 1–10 diagnostic score |
| `expected_ctr`, `ad_relevance`, `landing_page_experience` | The three Quality Score components |
| `search_impr_share` | Share of eligible auctions where the ad showed |
| `search_lost_is_budget` | Share lost because the budget ran out |
| `search_lost_is_rank` | Share lost because Ad Rank was too low |

### `data/meta-ads.csv`

14 days of Meta results at ad level, from a later period than `campaign-daily.csv`, after Pebble
restructured its Meta account. Numbers don't match the earlier file.

| Column | Meaning |
|---|---|
| `ad_set`, `ad`, `format` | Where the ad sits and what type it is |
| `reach` | Unique people who saw the ad |
| `frequency` | Average times each person saw it (impressions ÷ reach) |
| `link_clicks` | Clicks that went to the website |
| `video_3s_plays` | Video plays of at least 3 seconds (0 for images) |
| `thruplays` | Plays to 15 seconds or to the end (0 for images) |
| `adds_to_cart`, `purchases`, `revenue` | Website actions after the ad |
| `delivery` | Delivery status shown in Ads Manager |

### `data/meta-ad-weekly.csv`

Four weeks of trend data for two ads, used to spot creative fatigue.

### `data/ab-tests.csv`

Results of four A/B tests, used to practice judging whether a difference is real.

### `data/conversion-paths.csv`

12 customer journeys. Each row lists the channels a customer touched, in order, before
buying. Used to compare attribution models by hand.
