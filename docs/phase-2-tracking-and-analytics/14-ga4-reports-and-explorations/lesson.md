# Lesson 14: GA4 reports and explorations

**Phase 2 · Week 3 · Day 4** · 25 minutes

## Why this matters

Standard reports answer common questions quickly. Explorations answer your own questions:
"Where in the checkout do mobile users give up?" Knowing which one to reach for, and how to
build a funnel, turns GA4 from a dashboard into a diagnostic tool.

## Key ideas

### Standard reports

The **Reports** section is pre-built and fast:

| Report | Answers |
|---|---|
| **Realtime** | Who's on the site right now? Useful for testing tags. |
| **Acquisition** | Where do users and sessions come from? |
| **Engagement** | Which pages and events get the most activity? |
| **Monetization** | What sells, and how much revenue? |
| **Retention** | Do users come back? |

Useful controls in any report:

- **Date range and comparison:** Compare this month with last month.
- **Add comparison:** Compare segments side by side, such as mobile and desktop.
- **Secondary dimension:** Select **+** next to the main dimension to split each row further.

### Explorations

The **Explore** section lets you build custom analyses. The main types:

| Technique | Use it to |
|---|---|
| **Free form** | Build any table or chart from dimensions and metrics |
| **Funnel exploration** | See how many people complete each step of a process |
| **Path exploration** | See what people do before or after an event |
| **Segment overlap** | See how groups of users overlap |
| **Cohort exploration** | See how groups that started at the same time behave later |

Explorations only cover data within the property's retention period: 2 or 14 months for
standard properties.

### Building a funnel

A funnel exploration needs a list of **steps**. Each step is an event or a page:

```
1. session_start
2. view_item
3. add_to_cart
4. begin_checkout
5. purchase
```

Settings that change the result:

- **Open funnel:** Users can enter at any step. **Closed funnel:** Users must start at step 1.
  Closed is stricter and usually what you want for a checkout.
- **Breakdown:** Split each step by a dimension, such as device category. Problems often hide
  in one segment.
- **Elapsed time:** Shows how long users take between steps.

The output shows the **abandonment rate** at each step. That's where you focus.

### Segments

A **segment** is a subset of your data:

- **User segment:** People who did something, ever. "Users who purchased."
- **Session segment:** Visits where something happened. "Sessions from Paid Social."
- **Event segment:** Individual events that match. "Purchases over $100."

Apply a segment to compare groups, such as converters with non-converters.

### From numbers to insight

A report shows **what** happened. Your job is to ask **why**, and **so what?**

- **What:** Mobile checkout completion is 20% lower than desktop.
- **Why (hypothesis):** The payment form is hard to use on small screens.
- **So what:** Test a mobile wallet payment option. Expected impact: more mobile sales.

## Common mistakes

- **Using an open funnel for a checkout:** It counts people who skipped steps.
- **No breakdown:** Averages hide problems that live in one device or channel.
- **Reporting numbers without a "so what":** A manager wants the action, not the table.

## Learn more

Pick one (about 10 minutes):

- [Get started with Explorations](https://support.google.com/analytics/answer/7579450)
- [Funnel exploration](https://support.google.com/analytics/answer/9327974)

## Key terms

Report, exploration, funnel exploration, open funnel, closed funnel, breakdown, abandonment
rate, segment. See the [glossary](../../reference/glossary.md).

---

**Next:** [Practice 14](practice.md)
