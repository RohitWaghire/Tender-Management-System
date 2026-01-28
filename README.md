# Tender Management System

A Java Web Application for managing the complete tender process, facilitating interactions between administrators and vendors. Use this system to publish tenders, place bids, and manage the entire procurement lifecycle.

## 🚀 Features

### Admin Module
*   **Login Support**: Secure access for administrators.
*   **Manage Tenders**: Create, update, and remove tenders.
*   **View Bids**: Review bids submitted by vendors for specific tenders.
*   **Award Tenders**: Accept or reject bids.
*   **Notices**: Publish crucial announcements and notices.

### Vendor Module
*   **Registration & Login**: Vendors can sign up and log in to the portal.
*   **Search Tenders**: Browse available tenders based on varied criteria.
*   **Bid Management**: Place bids on active tenders and view bid history.
*   **Profile Management**: Update personal and company details.
*   **Notifications**: View notices and tender status updates.

## 🛠️ Technology Stack
*   **Backend**: Java Servlets, JSP (JavaServer Pages)
*   **Frontend**: HTML5, CSS3, JavaScript, Bootstrap
*   **Database**: MySQL
*   **Build Tool**: Apache Maven
*   **Server**: Apache Tomcat (or any Servlet Container)

## ⚙️ Setup & Installation

### 1. Database Setup
1.  Install **MySQL Server**.
2.  Import the database schema:
    *   Open your MySQL Command Line or Workbench.
    *   Create a database named `tender` (or as preferred).
    *   Import the SQL dump file located at `DataBase/tender.sql`.
    ```bash
    mysql -u root -p tender < DataBase/tender.sql
    ```

### 2. Application Configuration
1.  Open the file `src/dbdetails.properties`.
2.  Update the database connection details to match your local setup:
    ```properties
    driverName=com.mysql.cj.jdbc.Driver
    connectionString=jdbc:mysql://localhost:3306/tender
    username=your_mysql_username
    password=your_mysql_password
    ```

### 3. Build and Run
1.  **Build the Project**:
    Open a terminal in the project root and run:
    ```bash
    mvn clean install
    ```
2.  **Deploy**:
    *   Copy the generated `.war` file (from the `target` folder) to your Tomcat `webapps` directory.
    *   Or run directly from Eclipse/IntelliJ by configuring a Tomcat server.
3.  **Access**:
    Open your browser and navigate to:
    `http://localhost:8080/tendermanagement`

## 🔑 Default Credentials

### Admin Login
*   **Username**: `Admin`
*   **Password**: `Admin`

### Vendor Login
*   You can register a new vendor account on the login page.
*   Or use an existing sample user from the database:
    *   **Username/VID**: `V20190725022813`
    *   **Password**: `aaina`

## 📂 Project Structure
*   `src/`: Java source code (Servlets, Beans, DAO).
*   `WebContent/`: JSP pages, CSS, JS, and images.
*   `DataBase/`: SQL scripts for database initialization.
