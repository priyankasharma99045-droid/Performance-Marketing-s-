# Lesson 39: Reporting and dashboards

**Phase 4 · Week 8 · Day 4** · 25 minutes

## Why this matters

Your analysis only matters if someone acts on it. Clients and managers don't want a data dump.
They want to know whether marketing is working, why, and what happens next. A clear weekly report
and a good dashboard build trust faster than anything else you do.

## Key ideas

### Report for your audience

| Audience | Wants to know | Level of detail |
|---|---|---|
| **Business owner or executive** | Are we making money? Spend, revenue, MER, CPA against target | One page, few numbers |
| **Marketing manager** | Which channels and campaigns are working, and what's next | Channel and campaign level |
| **Specialist** | Which ads, keywords, and audiences to change | Full detail, in the platforms |

### The weekly report structure

1. **Summary, in three lines:** result, why, next.
2. **Numbers:** KPIs against target and against last week.
3. **What changed:** Your changes and outside events.
4. **Insights:** What, why, and so what.
5. **Next actions:** With expected results.

The [weekly report template](../../../templates/weekly-report.md) follows this structure.

Lead with the conclusion. "ROAS fell 2% because generic search got less efficient. We're adding
negatives this week" is better than three tables and no point.

### Dashboard design

A dashboard is a live report that updates itself. Good dashboards:

- **Put the KPIs first:** Scorecards across the top: spend, revenue, conversions, CPA, ROAS.
- **Show trends:** A time series of spend and revenue reveals changes that a single number hides.
- **Allow breakdown:** A table by channel or campaign.
- **Have controls:** A date range selector and a channel filter.
- **Stay simple:** Five charts that answer questions beat twenty that don't.
- **Define every metric:** Note how ROAS is calculated and which attribution it uses.

### Data Studio

[Data Studio](https://datastudio.google.com/) is Google's free dashboard tool. It was called
Looker Studio from 2022 to 2026.

| Concept | Meaning |
|---|---|
| **Data source** | A connection to data: GA4, Google Ads, Google Sheets, BigQuery, and more |
| **Report** | The dashboard pages you build |
| **Chart** | A scorecard, time series, table, bar chart, or other view |
| **Control** | A date range picker or filter that viewers can change |
| **Calculated field** | A new metric, such as `SUM(revenue) / SUM(spend)` for ROAS |

The same averaging trap from lesson 5 applies: build ratio metrics from sums, never from averages
of ratios.

### Reporting rhythm

| Rhythm | Format |
|---|---|
| Daily | Glance at the dashboard for anything broken or unusual |
| Weekly | Written report, using the template |
| Monthly | Deeper review: trends, tests, budget plan for next month |

## Common mistakes

- **No conclusion:** Tables without "so what" leave the reader to guess.
- **Too many charts:** Important signals get lost.
- **Averaging ratios in calculated fields:** Wrong ROAS and CPA.
- **Mixing attribution models without saying so:** Numbers that can't be compared.

## Learn more

Pick one (about 10 minutes):

- [Data Studio quick start guide](https://docs.cloud.google.com/data-studio/quick-start-guide)
- [Create a Data Studio report from Google Sheets](https://docs.cloud.google.com/data-studio/create-a-report-from-google-sheets)

## Key terms

Weekly report, dashboard, scorecard, time series, data source, control, calculated field, Data
Studio. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 39](practice.md)
