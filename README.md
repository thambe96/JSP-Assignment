# Complaint Management System (CMS)

## Project Overview

The Complaint Management System (CMS) is a prototype developed for the Municipal IT Division to facilitate the management of complaints submitted by internal employees and administrative staff. The system enables users to submit, track, and resolve complaints efficiently while adhering to strict synchronous form-based interactions. This prototype is built using JSP and Jakarta EE, ensuring a robust and user-friendly experience.

### Functional Requirements

#### Authentication Module
- **User  Login**: Secure login functionality with session management.
- **Role-Based Access**: Differentiated access for Employees and Admins to ensure appropriate permissions.

#### Complaint Management Module

##### Employee Role:
- **Submit Complaints**: Employees can submit new complaints.
- **View Complaints**: Access a personal list of submitted complaints.
- **Edit/Delete Complaints**: Modify or remove complaints that are not yet resolved.

##### Admin Role:
- **View All Complaints**: Admins can view all complaints in the system.
- **Update Status**: Ability to update the status of complaints and add remarks.
- **Delete Complaints**: Admins can delete any complaint from the system.

### Technical Requirements

### Component Technology Stack
- **Frontend**: JSP, HTML, CSS, JavaScript (limited to validation purposes only).
- **Backend**: Jakarta EE (Servlets), Apache Commons DBCP for database connection pooling.
- **Database**: MySQL, accessed via DBCP connection pooling.
- **Deployment**: Apache Tomcat (local environment).

#### Architectural Constraints
- **MVC Pattern**: The application follows the Model-View-Controller (MVC) architecture:
    - **View Layer**: Implemented using JSP.
    - **Controller Logic**: Managed by Servlets.
    - **Model**: Utilizes JavaBeans (POJOs) and DAO classes.
- **HTTP Methods**:
    - All state-changing operations must use HTTP POST with standard HTML `<form>` elements.
    - All read-only operations (e.g., complaint lists) should use HTTP GET.
- **No Asynchronous Mechanisms**: The system strictly prohibits the use of AJAX or any asynchronous HTTP mechanisms.



### Conclusion

This prototype aims to streamline the complaint management process within the Municipal IT Division, providing a structured and efficient way for employees and administrative staff to handle complaints. The system is designed with a focus on usability and adherence to specified architectural constraints.rmation about the project's license.

## Setup And Configuration Guide



## Project Configuration

Before starting the project, ensure that the Apache Tomcat server is stopped.

### Step 1: Create a New Project

1. Open IntelliJ IDEA.
2. Create a new project (for now, select a standard project, not a Jakarta EE project).

### Step 2: Link Apache Tomcat to IntelliJ IDEA

1. Navigate to **Settings**.
2. Go to **Build, Execution, Deployment** > **Application Servers**.
3. Click the **+** icon and select **Tomcat Server**.
4. Browse to the directory where Apache Tomcat is installed and select it.

### Step 3: Configure the Module

1. In the project settings, locate the **Module** section.
2. Select the appropriate module (this represents a simple unit within the project).
3. Under **Facet**, choose **Configuration**.
4. For **Artifact**, select the output file type. For this project, choose **Web Facet**.

### Step 4: Add a Module

1. Go to **Settings** > **Project Structure**.
2. Select **Modules**.
3. Choose the module you are working with.
4. Click on **Dependencies**.
5. Click the **+** icon and select **Library**.
6. Choose **Tomcat** and click **Add Selected**.
7. Click **Apply** and then **OK**.

### Step 5: Adding a Facet

1. In **Project Structure**, navigate to **Facets**.
2. Click the **+** icon and select **Web**.
3. Choose the module you are working with.

### Step 6: Create an Artifact

1. In the **Project Structure**, go to **Artifacts**.
2. Click on **Create Artifact**.
3. Do not click **Apply** and **OK** immediately; instead, create the artifact first.

### Step 7: Running the Project

1. Go to **Run** > **Edit Configurations**.
2. Select **Tomcat (Local)**.
3. Do not click **Apply** and **OK** immediately.
4. In the **Deployment** tab, click the **+** icon and select **Artifact**.
5. Choose the artifact you created earlier.

### Step 8: Start the Server

Finally, click **Run**. A web page will open, but you may encounter a 404 error initially. This indicates that the server is running, but the requested resource is not found. Ensure that your application is correctly deployed and that the necessary resources are available.




###  Make sure to add all the dependencies to the pom.xml file
  -  https://mvnrepository.com/artifact/com.mysql/mysql-connector-j 
  -  https://mvnrepository.com/artifact/jakarta.servlet/jakarta.servlet-api  
  -  https://mvnrepository.com/artifact/org.apache.commons/commons-dbcp2  
  -  https://mvnrepository.com/artifact/org.projectlombok/lombok   


 
