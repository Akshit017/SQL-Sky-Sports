# ⚽ World Cup Team Performance Analysis using SQL

## 📌 Project Overview
This project analyzes **international football team performance** using structured SQL queries.  
The dataset contains match statistics, team performance metrics, and group-stage information from a World Cup tournament.

The goal of this project is to extract meaningful insights related to:
- Team performance
- Match outcomes
- Group-wise comparisons
- Scoring efficiency
- Discipline and gameplay metrics

---

## 🗂️ Database Used
**Database Name:** `sky_sports`

### Tables Used:
1. **group_stage_team_stats**
2. **overall_wc_stats**

---

## 📊 Key SQL Analyses Performed

### 🔹 Team & Group Analysis
- Retrieved all unique team names
- Identified teams by group placement
- Counted total teams in each group
- Found which group each team belongs to
- Analyzed number of matches played per team

---

### 🔹 Performance Metrics
- Calculated win percentage for each team
- Identified teams with maximum goals scored
- Computed average goal difference across teams
- Extracted teams with equal goals scored and conceded
- Calculated win, draw, and loss percentages

---

### 🔹 Goal & Match Insights
- Identified teams with:
  - Highest goals scored
  - Zero points
  - More goals conceded than scored
- Found teams where expected goals were less than expected goals conceded
- Evaluated teams with extreme offensive or defensive behavior

---

### 🔹 Discipline & Gameplay Analysis
- Analyzed fouls committed by teams
- Evaluated yellow and red card distribution
- Identified teams with zero errors and low touches
- Studied offsides distribution across teams

---

### 🔹 Team & Group Comparison
- Compared total matches played per group
- Analyzed total fouls per group
- Compared total players used by each group
- Analyzed average passes completed per group
- Ranked groups based on performance indicators

---

## 🧠 SQL Concepts Used
- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
- Aggregate functions (`SUM`, `AVG`, `MAX`, `MIN`)
- Conditional filtering
- Joins between multiple tables
- Subqueries for advanced analysis
- Sorting and grouping for analytical insights

---
