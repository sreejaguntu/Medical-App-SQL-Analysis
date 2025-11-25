📊 Product Feature Analysis – Medical App
🎯 Objective

Analyze how users interact with features inside a medical app to understand engagement, retention, and conversion patterns.
The project uses SQL-based event analytics to evaluate feature usage, funnels, power users, session behavior, and subscription performance.

🏗️ Project Overview

This project simulates a real-world medical application environment using a relational database containing:

📌 1. Users

User demographics

Signup date

Device type

📌 2. Feature Events

Tracks every in-app action a user performs, such as:

Search

Buy

Subscribe

Appointment Book

Wishlist

Profile Update

Notifications

📌 3. Sessions

When a user opens and closes the app

Helps calculate engagement time

📌 4. Subscriptions

When users start and end paid plans

Supports retention and conversion analysis

🔍 Analysis Performed
✅ Basic Analytics

Total feature interactions

Most and least used app features

Unique users per feature

Daily active users (DAU)

Most active users (event count per user)

✅ Intermediate Analytics

Power users (multi-feature usage)

Feature adoption over time

Session duration patterns

Basic conversion funnel (Search → Buy → Subscribe)

✅ Advanced Analytics

Cohort-style retention analysis using first feature used

Funnel conversion rates between Search → Buy → Subscribe

Stickiness score for each feature

🧠 Key Insights
⭐ 1. Search is the core feature

Most users begin and end their journeys with Search—making it the app’s primary engagement driver.

⭐ 2. Buy and Appointment Booking show strong intent

These transactional features have healthy usage, suggesting users rely on the app for practical needs.

⭐ 3. Subscription conversion is weak

There is a major drop-off between:

Users who Search

Users who Buy

Users who Subscribe

This indicates a poor subscription flow or unclear value proposition.

⭐ 4. Underperforming Features

Features like:

Profile Update

Share

have very low engagement → may require redesign or removal.

⭐ 5. High-value user segment identified

Power users (those who use 3+ features) are a small but highly engaged group → ideal for subscription targeting.

⭐ 6. Search has the highest stickiness

Users repeatedly rely on Search, meaning it is crucial for retention and overall experience.

📌 Business Recommendations
🔧 1. Improve Subscription Journey

Place subscription prompts:

After appointment bookings

After checkout

Inside high-intent actions

🔍 2. Optimize Search

Add filters

Autocomplete

Recent searches list

🔔 3. Promote Appointment Booking

Use:

Push notifications

Email reminders

In-app banners

🎨 4. Redesign Underperforming Features

Consider combining, simplifying, or removing:

Profile Update

Share

🎯 5. Target Power Users

Offer:

Discounts

Loyalty rewards

Early access features

📝 Case Study Summary

This project replicates an analytics workflow used in real product teams.
Using SQL, the analysis uncovers:

Which features drive engagement

Where users drop off

Which users are most valuable

How sessions and subscriptions relate to feature use

The findings highlight the importance of Search, weaknesses in subscription conversion, and opportunities to eliminate low-value features. Recommended improvements focus on boosting conversions, improving discoverability, and enhancing key workflows to increase user retention and revenue.
