# Practice 13: Explore the GA4 demo account

**30 minutes** · **You need:** A Google account · **Save to:** `my-work/notes/lesson-13.md`

## Goal

Find your way around GA4 reports using a real store's data.

## Steps

1. Open the [GA4 demo account](https://support.google.com/analytics/answer/6367342) help page
   and follow its link to get access to the **Google Merchandise Store** web property.
2. Set the date range, top right, to **Last 28 days**.
3. Find the answer to each question. Write the answer **and** the menu path where you found it.
   Menu names can change, so if one is missing, look for the same idea nearby.

   | # | Question | Hint |
   |---|---|---|
   | 1 | How many active users? | **Reports > Reports snapshot** |
   | 2 | Which session default channel group brought the most sessions? | **Reports > Acquisition > Traffic acquisition** |
   | 3 | What is the engagement rate for that channel? | Same report, scroll right |
   | 4 | Which channel brought the most new users? | **Reports > Acquisition > User acquisition** |
   | 5 | Which page has the most views? | **Reports > Engagement > Pages and screens** |
   | 6 | List the 5 most frequent event names. | **Reports > Engagement > Events** |
   | 7 | Which recommended e-commerce events can you see? | Same report |
   | 8 | What share of users are on mobile? | **Reports > Tech > Overview** |
   | 9 | Which country has the most users? | **Reports > User attributes > Overview** or the demographics report |
   | 10 | How much total revenue did the store make? | **Reports > Monetization > Overview** |

4. Select one event, such as `add_to_cart`, in the Events report. Look at the parameters
   GA4 shows for it.
5. In the Traffic acquisition report, select **Add comparison** and compare **Device category =
   mobile** with **Device category = desktop**. Note one difference in engagement rate.

## Done when

- [ ] All 10 questions are answered, each with its menu path.
- [ ] You looked at one event's parameters.
- [ ] You compared mobile and desktop and noted one difference.

The demo data changes daily, so there are no fixed answers for the numbers. Use the questions
below to check your understanding.

## Check yourself

1. You found the top channel in **Traffic acquisition**, but a different top channel in
   **User acquisition**. Is something wrong?

   <details><summary>Answer</summary>

   No. User acquisition counts how users **first** arrived. Traffic acquisition counts how
   every **session** started. Returning visitors often come back through a different channel,
   such as Direct or Organic Search.
   </details>

2. Is `add_to_cart` an automatically collected, enhanced measurement, recommended, or custom
   event?

   <details><summary>Answer</summary>

   Recommended. Google suggests the name, and the site's developers send it.
   </details>

3. A session lasts 6 seconds and has one page view and no key event. Is it engaged?

   <details><summary>Answer</summary>

   No. It needs to last over 10 seconds, have a key event, or have at least 2 page views.
   </details>

4. In "sessions by country", which is the dimension and which is the metric?

   <details><summary>Answer</summary>

   Country is the dimension. Sessions is the metric.
   </details>

---

**Next:** [Lesson 14: GA4 reports and explorations](../14-ga4-reports-and-explorations/lesson.md)
