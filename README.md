🐦 Bird Observations Dashboard
The project aims to analyze the distribution and diversity of bird species in two distinct ecosystems: forests and grasslands. This Power BI project explores detailed bird observation data across various environmental and temporal dimensions. It is designed to assist ecologists, researchers, and conservationists in identifying patterns and trends in bird behavior, habitat use, and conservation needs.

📁 Project Structure

Bird_Species_Observation_Analysis_Project/

│
├── |notebooks/

|   ├──01_DataCleaning_And_Preprocessing.ipynb  # Python code for data preprocessing

|   ├── Bird_Monitoring_Data_FOREST.XLSX        # Raw data (excluded via .gitignore)

│   ├── Bird_Monitoring_Data_GRASSLAND.XLSX     # Raw data (excluded via .gitignore)

├── Scrip for Project.sql                       # SQL script to create normalized database tables

├── BirdSpeciesReport.pbix                      # Power BI report file

├── README.md

└── .gitignore

🔧 Workflow Overview
Data Preprocessing (Python)

    Clean and transform raw Excel bird observation data.

    Normalize data into separate tables for location, species, observations, etc.

    Script: 01_DataCleaning_And_Preprocessing.ipynb

Database Setup (SQL Workbench)

    Use ScripforProject.sql to create and populate relational tables.

    Data is stored in MySQL using SQL Workbench.

Visualization (Power BI)

    Load data from SQL Workbench into Power BI.

    Design multiple report pages focusing on ecological, behavioral, and conservation patterns.


📊 Dashboard Pages
1. Bird Observations over Time – Grassland and Forest
Tracks bird sightings over time across two habitat types.

Visualizes trends in bird counts by date, filtered by species.

2. Time of Day Analysis
Examines observation frequency across different times of the day.

Helps identify peak activity periods.

3. Spatial Analysis
Maps bird diversity and abundance by Location_Type and Plot_Name.

Reveals biodiversity hotspots and plot-specific patterns.

4. Species Analysis
Highlights species diversity and distributions.

Includes sex ratio analysis and activity types (e.g., singing, foraging).

5. Environmental Conditions
Correlates bird observations with weather variables like temperature, humidity, wind, and sky conditions.

6. Wind and Disturbance Effects
Analyzes the impact of wind speed and disturbance levels on bird sightings.

Includes data transformation using lookup codes.

7. Distance and Behaviour
Visualizes average bird distance from observers.

Categorizes birds by proximity (e.g., ≤50m, 50–100m) and flyover behavior.

8. Observer Trends
Tracks potential observer bias and repeated visit patterns.

Compares observations and species count by individual observers.

9. Conservation Insights
Identifies at-risk species using PIF_Watchlist_Status and Regional_Stewardship_Status.

Links species with their AOU codes for conservation prioritization.

📂 Files Included
01_DataCleaning_And_Preprocessing.ipynb: Jupyter Notebook to clean and prepare raw Excel files.

ScripforProject.sql: SQL script to create and populate relational tables in SQL Workbench.

PowerBI_Report.pbix: Power BI file with all dashboards and visualizations.

.gitignore: Excludes data files, virtual environments, and outputs.

💾 Requirements
Python (for preprocessing)

    pandas, numpy, etc.

SQL Workbench / MySQL

Power BI Desktop


🛠️ Tools Used
Power BI for data modeling and visualization

DAX for calculated columns and measures

✅ Features
Slicers for filtering species, dates, and plots

Calculated measures for average distance, flyover frequency, diversity metrics

Dynamic charts and page-level filters


📬 Contact
For questions, suggestions, or collaboration inquiries, please reach out via GitHub Issues.
