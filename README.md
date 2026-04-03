# Ad Experience Impact on User Behavior (OTT Analysis)

## Problem

While watching OTT content, excessive and repetitive ads disrupt user experience and may lead to user frustration and churn.

## Objective

Analyze how ad frequency, repetition, and timing impact:

* User drop-off
* Session completion
* Next-day retention

## Dataset

This project uses a simulated dataset representing user sessions on an OTT platform.

### Data Generation

The initial dataset contained 15 sample user sessions.
To simulate real-world behavior, the dataset was expanded to ~300 sessions using Excel-based probabilistic logic.

Behavior was modeled based on:

* Ad frequency thresholds
* Ad repetition impact
* Ads triggered after pause
* Probabilistic user drop-off and retention

This ensures realistic, non-deterministic user behavior patterns.

## Key Analysis

* Ad Frequency vs Drop-off
* Repeat Ads vs Retention
* Ads After Pause Impact
* Ads vs Completion Rate

## Tools Used

* SQL
* Excel (Data processing & dashboard)
* Power BI (Interactive dashboard)

## Key Insights

* Higher ad frequency significantly increases user drop-off
* Repeated ads reduce next-day retention (creative fatigue)
* Ads after pause disrupt user control and increase churn
* Excessive ads reduce session completion rates

## Recommendations

* Implement ad frequency caps per session
* Introduce ad creative rotation to avoid repetition
* Avoid ads immediately after pause/resume actions
* Optimize ad placement around natural content breaks

## Dashboard Preview

### Excel Dashboard

<img width="1308" height="578" alt="excel_dashboard" src="https://github.com/user-attachments/assets/eb77bc42-2506-4d9e-a7ad-2fab3a50df15" />


### Power BI Dashboard

<img width="1001" height="559" alt="PowerBI_Dashboard" src="https://github.com/user-attachments/assets/16f98304-5074-426a-a7a2-be5997c8b1a6" />


## Note

This is a simulated project inspired by real-world OTT user experience patterns.
