# Workforce Diversity & Inclusion Analytics

## HR Analytics | People Analytics | Workforce Analytics | Power BI | MySQL | Excel

---

## 📊 Project Overview

The **Workforce Diversity & Inclusion Analytics** project is an HR/People Analytics solution designed to analyze workforce representation, leadership diversity, promotion patterns, retention, compensation, employee experience, training access, and inclusion indicators.

The project simulates how an HR Analytics or People Analytics team within a multinational organization could use workforce data to identify representation patterns, monitor inclusion-related indicators, investigate potential disparities, and support evidence-based HR decisions.

The project uses **synthetic/anonymized employee data** and does not contain real employee identities or confidential organizational information.

The analysis is designed for aggregate workforce auditing and monitoring rather than automated employment decisions.

---

## 🎯 Business Problem

Organizations need reliable workforce analytics to understand whether employees across different workforce groups have broadly comparable access to:

- Career opportunities
- Promotions
- Leadership positions
- Training and development
- Internal mobility
- Recognition
- Competitive compensation
- Positive employee experiences
- Inclusive workplace practices

Traditional HR reports often focus only on headcount.

However, workforce diversity analytics requires looking beyond headcount to understand how workforce representation changes across:

- Departments
- Job roles
- Job levels
- Locations
- Leadership positions
- Promotion opportunities
- Compensation
- Employee experience

This project demonstrates how HR analytics can convert workforce data into actionable business insights.

---

# 🎯 Project Objectives

The primary objectives are to:

1. Analyze workforce representation.
2. Measure leadership representation.
3. Analyze promotion rates.
4. Monitor internal mobility.
5. Analyze attrition and retention indicators.
6. Examine compensation distribution.
7. Analyze employee inclusion and belonging.
8. Measure training participation.
9. Analyze recognition patterns.
10. Identify representation pipeline gaps.
11. Compare workforce and leadership representation.
12. Analyze intersectional workforce patterns where sample sizes permit.
13. Build a privacy-aware HR dashboard.
14. Generate evidence-based HR recommendations.

---

# 🏢 Company Scenario

For this project, a fictional multinational organization is assumed.

### Company Name

**Nexora Global Technologies**

### Industry

Technology & Business Services

### Business Model

Nexora Global Technologies provides:

- Technology services
- Business consulting
- Data and analytics solutions
- Cloud services
- Digital transformation services

### Workforce

Approximately 5,000 employees are assumed for the business scenario.

For this portfolio project, a smaller synthetic sample is used to demonstrate the analytics workflow.

### Major Departments

- Human Resources
- Finance
- Information Technology
- Data & Analytics
- Sales
- Marketing
- Operations
- Customer Success
- Legal & Compliance

### Locations

The simulated workforce includes multiple business locations to represent a multinational organization.

---

# 📁 Dataset

The project uses a synthetic workforce dataset.

The dataset contains employee-level records using an anonymous Employee ID rather than employee names.

### Dataset Fields

| Field | Description |
|---|---|
| employee_id | Anonymous employee identifier |
| department | Employee department |
| job_role | Employee job role |
| job_level | Career level |
| location | Work location |
| employment_type | Full-time, contract, etc. |
| joining_date | Employee joining date |
| tenure_band | Employee tenure category |
| age_band | Age category |
| gender_category | Aggregate gender category |
| workforce_diversity_category | Workforce diversity classification |
| salary_band | Compensation band |
| annual_compensation_lpa | Annual compensation in LPA |
| performance_rating | Performance rating |
| promotion_status | Promotion indicator |
| promotion_eligibility | Promotion eligibility indicator |
| leadership_position | Leadership indicator |
| training_hours | Training hours |
| engagement_score | Employee engagement score |
| inclusion_score | Workplace inclusion score |
| belonging_score | Sense of belonging |
| manager_support_score | Manager support score |
| psychological_safety_score | Psychological safety indicator |
| recognition_count | Recognition received |
| career_opportunity_score | Perceived career opportunity |
| internal_mobility | Internal mobility indicator |
| attrition_status | Attrition indicator |
| attrition_type | Voluntary/involuntary |
| exit_reason | Recorded exit category |
| hiring_source | Recruitment source |
| review_period | Analytical review period |
| inclusion_index | Composite inclusion indicator |

---

# 🔐 Data Privacy & Ethics

This project follows a privacy-aware approach to HR analytics.

The dataset is:

- Synthetic
- Anonymized
- Created for educational and portfolio purposes
- Free of real employee identities

No employee names, personal contact details, addresses, or other direct identifiers are included.

### Privacy Principles

The project follows:

- Data minimization
- Anonymization
- Aggregation
- Small-group suppression
- Access control principles
- Confidentiality
- Ethical use of demographic information

Demographic information is used primarily for **aggregate workforce auditing and monitoring**.

It should not be used to automatically determine:

- Hiring decisions
- Promotion decisions
- Compensation decisions
- Termination decisions
- Performance decisions

Observed differences are treated as signals for further investigation rather than automatic evidence of discrimination.

---

# 📊 Key HR Analytics Areas

The project covers the following analytical areas:

### 1. Workforce Representation

Measures workforce composition across:

- Gender
- Age bands
- Departments
- Job roles
- Job levels
- Locations

---

### 2. Leadership Representation

Compares overall workforce representation with representation among leadership positions.

Leadership analysis includes:

- Managers
- Senior Managers
- Directors

The purpose is to identify potential representation pipeline gaps.

---

### 3. Promotion Analysis

Promotion rate is calculated using eligible employees as the denominator.

### Formula

Promotion Rate =

Promoted Employees / Promotion-Eligible Employees × 100

Promotion patterns are analyzed by:

- Department
- Job level
- Location
- Tenure
- Aggregate demographic groups

Comparisons are made among reasonably comparable populations.

---

### 4. Internal Mobility

Internal mobility measures employees who move internally within the organization.

This includes:

- Career progression
- Internal transfers
- Lateral movement
- Promotions

### Formula

Internal Mobility Rate =

Employees with Internal Moves / Eligible Workforce × 100

---

### 5. Attrition Analysis

Attrition is analyzed across:

- Departments
- Job levels
- Locations
- Tenure bands
- Leadership positions
- Attrition types

### Formula

Attrition Rate =

Employees with Attrition / Relevant Workforce × 100

The project distinguishes between:

- Voluntary attrition
- Involuntary attrition

---

### 6. Retention Analysis

The dataset supports attrition analysis and a retention proxy.

Retention Proxy =

100 − Attrition Rate

A true cohort retention calculation would require employee snapshots at defined start and end periods.

---

### 7. Compensation Analysis

Compensation is analyzed using:

- Average compensation
- Median compensation
- Salary bands
- Job level
- Department
- Location
- Aggregate demographic groups

Raw compensation differences are treated as descriptive indicators.

They do not automatically establish discrimination or causation.

More advanced analysis should control for legitimate job-related factors such as:

- Job level
- Role
- Location
- Tenure
- Experience
- Performance

---

### 8. Employee Experience

Employee experience is analyzed using:

- Engagement
- Inclusion
- Belonging
- Manager support
- Psychological safety
- Career opportunity
- Recognition

These indicators help HR understand employee experience across different organizational areas.

---

### 9. Inclusion Index

An illustrative Inclusion Index is created using:

- Belonging
- Manager Support
- Psychological Safety
- Recognition
- Career Opportunity

Example weighting:

- Belonging = 25%
- Manager Support = 20%
- Psychological Safety = 25%
- Recognition = 15%
- Career Opportunity = 15%

The weighting is illustrative and should be validated before organizational use.

---

### 10. Training & Development

Training access is analyzed through:

- Training participation
- Training hours
- Department
- Job level
- Location
- Aggregate workforce groups

The objective is to identify potential differences in development access.

---

# 📈 Representation Pipeline

The project examines representation across the career pipeline:

Entry Level
     ↓
Junior
     ↓
Mid-Level
     ↓
Senior
     ↓
Manager
     ↓
Senior Manager
     ↓
Director
