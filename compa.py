import pandas as pd

# Data for the table
data = {
    "Planner": ["GSP (A*)", "HSP (A*)", "FF (EHC)"],
    "Execution Time (s)": [2.05, 2.17, 280.58],
    "Memory Used (MB)": [11.30, 11.30, 3.95],
    "Plan Length": [30, 30, 60]
}

# Create DataFrame
df = pd.DataFrame(data)

# Save to CSV
df.to_csv("planner_performance_comparison.csv", index=False)

print("CSV file 'planner_performance_comparison.csv' has been created.")