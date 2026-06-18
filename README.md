## **Project Overview**
This end-to-end data analytics project explores the underlying relationships between music audio features and track popularity using a dataset of 114,000+ tracks across 125 genres. Instead of relying solely on traditional genre metadata, this project utilizes Unsupervised Machine Learning (K-Means Clustering) to segment tracks into data-driven mood quadrants.

## How It Works

### 1. Data Prep (PostgreSQL)
* **Fast Loading:** Used the `COPY` command to instantly import all 114,000 tracks into the database.
* **Smart Sorting:** Wrote advanced queries (window functions) to group songs by genre and automatically rank the top 3 tracks in each category.
* **Data Cleaning:** Removed rare genres with fewer than 100 songs to keep the trend analysis accurate.

### 2. Mood Grouping (Python Machine Learning)
* **Measuring the Vibe:** Balanced the "Happiness" (valence) and "Intensity" (energy) scores of every song using `StandardScaler`.
* **AI Clustering:** Ran a K-Means algorithm to automatically sort all 114,000 tracks into four natural mood piles:
  * Happy/Energetic (High Energy + High Happiness)
  * Angry/Intense (High Energy + Low Happiness)
  * Sad/Calm (Low Energy + Low Happiness)
  * Peaceful/Chill (Low Energy + High Happiness)

### 3. Visual Dashboard (Power BI)
* **Spotify Theme:** Styled the app canvas with a custom dark-mode theme to match the actual Spotify interface.
* **The Hero Chart:** Built a scatter plot mapping every song by its vibe, split evenly into four boxes by crossing reference lines at 0.5.
* **Interactive Filtering:** Added metric counters and a Top 10 chart. Clicking any mood or genre automatically updates the entire screen to show just those tracks.
