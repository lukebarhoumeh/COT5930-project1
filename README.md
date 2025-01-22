# Cloud Native Image Upload App

This project is a cloud-native image upload web application built with **Python** and **Flask**, deployed on **Google Cloud Run**. It allows users to upload images, store them in a **Google Cloud Storage bucket**, and view/download the uploaded files.

## Features

- Upload JPEG images via a web interface.
- View a list of uploaded images.
- Retrieve and download individual images from the storage bucket.
- Deployed to a **public URL** using **Google Cloud Run**.
- Fully containerized using **Docker** and managed with **Google Cloud Build**.

## Architecture

- **Flask Application:** Handles image upload, file listing, and retrieval.
- **Google Cloud Storage:** Stores uploaded images.
- **Google Cloud Run:** Hosts the containerized Flask app with a public URL.
- **Google Cloud Build:** Automates the containerization and deployment process.
- **Google Container Registry:** Stores the built container image.

## Usage Instructions

1. **Access the Application:**
   Visit the public URL: [https://imaging-app-856239458079.us-east1.run.app](https://imaging-app-856239458079.us-east1.run.app).

2. **Upload Images:**
   - Use the upload form on the homepage to upload JPEG images.
   - Click "Submit" after selecting the image.

3. **View Uploaded Files:**
   - The app displays a list of uploaded files.
   - Click on any file link to view or download it.

## Project Structure

- **main.py:** Contains the Flask application logic.
- **storage.py:** Helper functions for interacting with Google Cloud Storage.
- **Dockerfile:** Used for containerizing the application.
- **requirements.txt:** Lists the Python dependencies for the app.

## Prerequisites

To run this project locally, ensure you have the following:

- Python 3.x
- Google Cloud SDK
- A configured Google Cloud Storage bucket

## Deployment

To deploy the application to Google Cloud Run:

1. Build and push the Docker image:
   ```bash
   gcloud builds submit --tag gcr.io/<project-id>/imaging-app
