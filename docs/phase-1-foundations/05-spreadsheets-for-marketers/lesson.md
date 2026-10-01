# Lesson 5: Spreadsheets for marketers

**Phase 1 · Week 1 · Day 5** · 25 minutes

## Why this matters

Every ad platform lets you export data as a spreadsheet. Most analysis in performance
marketing happens in Google Sheets or Excel: finding wasted spend, comparing campaigns,
building forecasts. You use a spreadsheet in more than half of the remaining practices.

## Key ideas

### Rows, columns, and raw data

Exported data usually has one row per thing per day, for example one row per campaign per
day. Each column is one field: date, campaign, impressions, spend. Keep the raw data on its own
tab and never type over it. Do your calculations on other tabs or in new columns.

### Formulas you'll use constantly

| Formula | What it does | Example |
|---|---|---|
| `=SUM(D2:D57)` | Adds a range | Total impressions |
| `=E2/D2` | Divides one cell by another | CTR for one row |
| `=IFERROR(F2/E2, 0)` | Returns 0 instead of an error when dividing by zero | CPC when a row has 0 clicks |
| `=SUMIF(C2:C57, "Prospecting", F2:F57)` | Adds values where another column matches | Total Prospecting spend |
| `=SUMIFS(F2:F57, B2:B57, "Meta", A2:A57, ">="&DATE(2026,3,9))` | Adds values that match several conditions | Meta spend in week 2 |
| `=ROUND(G2, 2)` | Rounds to 2 decimals | Clean money values |
| `=TEXT(A2, "ddd")` | Turns a date into a weekday name | `Mon`, `Tue` |
| `=XLOOKUP(key, range, result)` | Finds a value in another table | Pull a target CPA per campaign |

### Formatting

- Format ratios such as CTR as **percent** (Format > Number > Percent). Keep the formula as a
  plain division. Don't multiply by 100.
- Format money columns as **currency**.
- Freeze the header row (View > Freeze > 1 row) so it stays visible as you scroll.

### Absolute references

When you copy a formula down, cell references shift. Add `$` to stop that:

- `=F2/$J$1` divides each row's spend by the value in J1, which stays fixed when you copy the
  formula down.

### Never average ratios

This is the most common spreadsheet mistake in marketing. If you have daily CTRs, you can't
average them to get the total CTR. Big days and small days count equally in an average, but
they shouldn't.

Always add up the raw numbers first, then divide:

```
Total CTR = SUM(clicks) ÷ SUM(impressions)       correct
Total CTR = AVERAGE(daily CTR)                    wrong
```

### Pivot tables

A pivot table summarizes raw data without formulas. You pick:

- **Rows:** What to group by, such as campaign or channel.
- **Values:** What to add up, such as SUM of spend.
- **Filters:** What to include, such as only week 2.

For ratios, add a **calculated field** to the pivot table. Set **Summarize by** to
**Custom** and divide the sums, such as `=SUM(revenue)/SUM(spend)`. That calculates the ratio
from the totals, which avoids the averaging trap.

### Conditional formatting

Format > Conditional formatting colors cells that meet a rule, such as "ROAS less than 2.5"
in red. It makes problems jump out of a large table.

## Common mistakes

- **Typing over raw data:** You lose the original and can't check your work.
- **Multiplying CTR by 100 and also formatting as percent:** You get 400% instead of 4%.
- **Averaging ratios:** See the earlier section.
- **Forgetting `IFERROR`:** A single `#DIV/0!` breaks every total that depends on it.

## Learn more

Pick one (about 10 minutes):

- [Create and use pivot tables](https://support.google.com/docs/answer/1272900): Google's guide, including calculated fields.
- [Google Sheets function list](https://support.google.com/docs/table/25273): Look up `SUMIFS` and `IFERROR`.

## Key terms

Raw data, formula, absolute reference, pivot table, calculated field, conditional
formatting.

---

**Next:** [Practice 5](practice.md)
