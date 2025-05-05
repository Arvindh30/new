# 🔥 AI-Powered Log Analysis & Forecasting Web App

A Flask-based web application that performs intelligent **Log File Analysis**, **Anomaly Detection**, and **Future Severity Forecasting** using Machine Learning and Time Series Modeling.

![Python](https://img.shields.io/badge/Python-3.9-blue?logo=python)
![Flask](https://img.shields.io/badge/Flask-2.0-lightgrey?logo=flask)
![Machine Learning](https://img.shields.io/badge/ML-IsolationForest-yellowgreen)
![Forecasting](https://img.shields.io/badge/ARIMA-TimeSeries-orange)

---

## 🧠 Features

- 📝 Upload or paste raw log text into the web interface
- 🔍 Clean and preprocess logs into structured tabular data
- 📊 Visualize log patterns with **Beautiful Charts** (severity, time gaps, keyword hits)
- 🚨 Detect **Anomalies** using **Isolation Forest**
- ⏳ Predict **Future Log Severity** using **ARIMA**
- 📥 Automatically saves result images and displays them

---

## 🖼️ Sample UI Pages

### 🏠 `index.html` – Input Page
![image](https://github.com/user-attachments/assets/abb78483-6aa6-4b03-83bf-8013c7639af5)

### 📈 `result.html` – Output Page
![image](https://github.com/user-attachments/assets/80fdd6a2-bd4f-47c5-8b96-98d9e2fed0ac)

![image](https://github.com/user-attachments/assets/9c99285e-cd44-47ef-a227-14a8cf2e9bf0)

---

## 📦 Tech Stack

| Layer          | Technology          |
|----------------|---------------------|
| Backend        | Python, Flask       |
| ML/Analytics   | Scikit-learn, Pandas, Matplotlib, Seaborn, Statsmodels |
| Frontend       | HTML, CSS, Bootstrap |
| Forecasting    | ARIMA (AutoRegressive Integrated Moving Average) |
| Anomaly Detection | Isolation Forest |

---

## 📌 How It Works

### 🔹 Step 1: Log Input
Users input raw log text via the web interface (or file upload).

### 🔹 Step 2: Data Processing
Logs are parsed into structured format:
- **Timestamp**
- **Log level** (INFO, WARNING, ERROR, etc.)
- **Message content**

Then engineered with:
- Message length
- Keyword presence (error-related)
- Time difference between logs

### 🔹 Step 3: Anomaly Detection – **Isolation Forest**

> **Isolation Forest** is an unsupervised machine learning algorithm ideal for anomaly detection.  
It isolates anomalies by randomly selecting a feature and splitting the data. Since anomalies are few and different, they get isolated quickly, giving them a higher anomaly score.

In this project, features used:
- Log level score
- Message length
- Keyword hit
- Time gap between logs

Logs classified as:
- ✅ Normal
- 🚨 Anomaly

### 🔹 Step 4: Severity Forecast – **ARIMA**

> **ARIMA (AutoRegressive Integrated Moving Average)** is a statistical time series forecasting model.  
It predicts future values based on past observations, trend, and noise patterns.

Here, it forecasts **log severity levels** for the next few minutes:
- INFO (1) → CRITICAL (4)
- Trend is visualized with confidence intervals

---

## 📷 Visual Outputs

- Log Level Distribution  
- Message Length Histogram  
- Error Keyword Frequency  
- Time Gaps Between Logs  
- Detected Anomalies  
- Predicted Log Severity Trends  

---

## 🚀 Getting Started

### 🔧 Requirements

- Python 3.9+
- Flask
- Pandas
- Scikit-learn
- Statsmodels
- Seaborn
- Matplotlib

### 🔨 Run the App

```bash
git clone https://github.com/your-username/ai-log-analyzer.git
cd ai-log-analyzer
pip install -r requirements.txt
python app.py
