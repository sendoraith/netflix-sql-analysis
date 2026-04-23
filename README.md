# Netflix Content Analysis (SQL)

## Objective
Analyze Netflix's content catalog to identify trends in content type, genre distribution, and geographic production using SQL-based data analysis.

## Dataset
Netflix Titles dataset (Kaggle)

## Methodology
- Performed data cleaning to handle multi-value fields (genres and countries)
- Used SQL queries to aggregate and analyze content trends
- Transformed comma-separated fields into structured data within SQL for accurate aggregation

## Key Questions
- What type of content dominates Netflix?
- How has content changed over time?
- What are the most common genres?
- Which countries produce the most content?

## Key Findings

### 1. Content Type Distribution
Movies make up the majority of Netflix’s overall catalog. However, over time the share of TV Shows increases steadily, and by 2021 TV Shows slightly exceed Movies in annual title count, indicating a gradual shift toward serialized content.

### 2. Genre Distribution
The most common genres on Netflix include International Movies, Dramas, and Comedies. This suggests a strong emphasis on broadly appealing and globally distributed content.

### 3. Geographic Distribution
The United States produces the largest share of Netflix content by a significant margin. After cleaning the data to account for multi-country productions, countries such as the United Kingdom, Canada, and France show a substantially stronger presence than initial counts suggest.

## Limitations

This analysis is based on catalog data and does not include viewership or popularity metrics. As a result, conclusions reflect content availability rather than audience engagement or performance.

## Business Recommendation

Netflix should continue investing in internationally produced content, particularly in high-volume genres such as dramas and comedies. In addition, the long-term rise of TV Shows—and their lead over Movies in the most recent year of the dataset—suggests continued strategic value in serialized content. This may indicate an opportunity to expand long-form programming alongside the platform’s already large movie catalog.