# SMARTCRYPT: Secure Storing and Sharing of Time Series Data Streams in IIoT

SMARTCRYPT is a secure data management platform designed for Industrial IoT (IIoT) environments. It facilitates the secure storage, monitoring, and controlled sharing of time-series data collected from IIoT sensors and devices.

## 🔐 Key Features

- **Time-Series Data Handling**: Efficient ingestion and management of time-stamped IIoT data.
- **Data Encryption**: Ensures confidentiality and integrity of stored data using encryption protocols.
- **Access Policies**: Role-based and policy-driven access to data streams.
- **Cloud-Based Architecture**: Built on a Django backend with a modular and scalable design.
- **User & Admin Interfaces**: Web-based dashboards for both data providers and administrators.
- **Audit & Monitoring**: Tracks and logs access to ensure data compliance and traceability.

## 🏗️ Tech Stack

| Frontend           | Backend              | Database            | Tools                                                                |
|--------------------|----------------------|---------------------|----------------------------------------------------------------------|
| HTML, CSS,         | Django (Python)      | SQLite (development)|Localhost (development) - supports deployment on cloud infrastructure |
| JavaScript         |                      |                     |                                                                      |

## 📂 Project Structure

cloudmanagementproject/
├── adminapp/ # Admin views and logic
├── userapp/ # User-facing views and functionality
├── templates/ # HTML templates
├── static/ # Static files (CSS, JS, images)
├── manage.py # Django management script
└── db.sqlite3 # SQLite database

## 🚀 Getting Started

1. Clone the repository  
   <pre>git clone https://github.com/your-username/smartcrypt.git  
   cd smartcrypt/cloudmanagementproject
2. Create and activate a virtual environment  
   <pre>python -m venv venv  
   source venv/bin/activate  # On Windows: venv\Scripts\activate  
3. Install dependencies  
   `pip install -r requirements.txt`  
4. Run migrations  
   `python manage.py migrate`  
5. Start the development server  
   `python manage.py runserver`  
6. Access the app  
   Open your browser and go to:  
   `http://127.0.0.1:8000/`  
