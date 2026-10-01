# Practice 14: Build a purchase funnel

**30 minutes** · **You need:** GA4 demo account access from practice 13 · **Save to:** `my-work/notes/lesson-14.md`, with screenshots in `my-work/notes/img/`

## Goal

Build a closed purchase funnel, find where buyers drop off, and turn it into a recommendation.

## Steps

### Part 1: The funnel (20 minutes)

1. In the demo property, open **Explore** and create a **Funnel exploration**.
2. Set the date range to the last 28 days.
3. Edit the steps so you have five:
   1. `session_start`
   2. `view_item`
   3. `add_to_cart`
   4. `begin_checkout`
   5. `purchase`
4. Make it a **closed funnel**.
5. Add **Device category** as the breakdown.
6. Screenshot the result.
7. Record in your notes, for all devices together:

   | Step | Users | Completion rate to next step | Abandonment rate |
   |---|---|---|---|

8. Find the step with the highest abandonment rate. Does it differ between mobile and desktop?

### Part 2: A free-form table (10 minutes)

1. Create a **Free form** exploration.
2. Add the dimension **Session default channel group**, and the metrics **Sessions**,
   **Engagement rate**, **Key events**, and **Total revenue**.
3. Put the channel in rows and the four metrics in values.
4. Find the channel with the most sessions but low revenue per session.

### Part 3: So what? (5 minutes)

Write one recommendation in this format:

- **What:** <the finding, with numbers>
- **Why (hypothesis):** <a possible cause>
- **So what:** <one action to test>

## Done when

- [ ] The funnel table is complete and the screenshot is saved.
- [ ] You named the biggest drop-off step and compared devices.
- [ ] The free-form table is built and you named one weak channel.
- [ ] Your recommendation follows the what, why, and so what format.

## Check yourself

1. Why use a closed funnel for a checkout analysis?

   <details><summary>Answer</summary>

   A closed funnel only counts people who started at step 1 and went in order. An open funnel
   also counts people who entered mid-way, which inflates later steps.
   </details>

2. The overall funnel looks fine, but the mobile breakdown shows a big drop at
   `begin_checkout`. What does this teach you about averages?

   <details><summary>Answer</summary>

   Averages hide problems that live in one segment. Always break down by device, channel, or
   another key dimension.
   </details>

3. You want to see what users do right after `add_to_cart`. Which exploration technique fits?

   <details><summary>Answer</summary>

   Path exploration, starting from the `add_to_cart` event.
   </details>

---

**Next:** [Lesson 15: Publish your landing page](../15-publish-your-landing-page/lesson.md)
