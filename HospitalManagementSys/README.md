<h1>Java Project "Medicover Hospital Demo"</h1>

<p><strong>Project Name:</strong> Medicover Hospital Demo<br>
<strong>Java Developers:</strong> Sergiu But & Laura Voicu</p>

<h2>Technologies Used</h2>
<ul>
  <li><strong>Web Technologies:</strong> JSP (JavaServer Pages), Servlets, HTML, CSS</li>
  <li><strong>Programming Language:</strong> Java</li>
  <li><strong>Database:</strong> Microsoft SQL Server 2005</li>
  <li><strong>Web Server:</strong> Apache Tomcat</li>
  <li><strong>Operating System:</strong> Windows</li>
</ul>

<h2>Overview</h2>
<p>The "Medicover Hospital Demo" is a web-based application designed as a demo for managing operations within a medical facility. This application demonstrates functionalities typically required by hospitals or clinics, such as managing user roles, handling patient data, and scheduling appointments. The system is structured to provide secure, role-based access to its features, ensuring that different users have access to functionalities pertinent to their roles.</p>

<h2>Key Functionalities</h2>
<h3>User Roles and Permissions</h3>
<p>The application defines three primary user roles:</p>
<ol>
  <li><strong>Admin:</strong> Has the highest level of access, capable of managing doctors, receptionists, patients, and appointments.</li>
  <li><strong>Doctor:</strong> Can manage their patient list and appointment schedules.</li>
  <li><strong>Receptionist:</strong> Manages patient registrations and appointment bookings.</li>
</ol>

<p>Each role is granted specific permissions to interact with the system's data, ensuring a clear separation of duties and data security.</p>

<h3>Login System</h3>
<ul>
  <li>The application features a secure login page where users (admins, doctors, and receptionists) can authenticate themselves using credentials stored in the <code>h_user</code> table of the database.</li>
  <li>Upon successful login, users are redirected to their respective dashboards, where they can perform tasks according to their roles.</li>
</ul>

<h3>Role-based Functionalities</h3>
<ul>
  <li><strong>Admin Role:</strong> Search/List/Add/Edit: Admins have full CRUD (Create, Read, Update, Delete) capabilities for managing doctors, receptionists, patients, and appointments.</li>
  <li><strong>Doctor Role:</strong> Search/List/Edit: Doctors can view and modify their patient list and appointment schedules.</li>
  <li><strong>Receptionist Role:</strong> Search/List/Add/Edit: Receptionists handle patient registration and appointment management, including booking, rescheduling, and canceling appointments.</li>
</ul>

<h3>Database Interaction</h3>
<ul>
  <li>All data related to users (admins, doctors, receptionists) is stored in the SQL Server 2005 database. The <code>h_user</code> table specifically holds user credentials and role information necessary for authentication and role-based access control.</li>
  <li>CRUD operations for patients, appointments, doctors, and receptionists are performed through SQL queries managed by Java servlets.</li>
</ul>

<h3>Web Technologies and Architecture</h3>
<ul>
  <li>The application utilizes JSP for the dynamic generation of web pages and Java Servlets to handle backend processing. This architecture allows for a clean separation of concerns, where JSP handles the presentation layer, and servlets manage the business logic and data processing.</li>
  <li>HTML and CSS are used to design the user interface, ensuring a user-friendly and responsive design.</li>
  <li>The application is deployed on the Apache Tomcat server, a widely-used open-source Java servlet container, providing a robust and scalable environment for running Java-based web applications.</li>
</ul>

<h3>Deployment Environment</h3>
<p>The entire application is designed to run on a Windows operating system environment with the Apache Tomcat server acting as the web server and SQL Server 2005 serving as the backend database.</p>

<h2>How to Use the Application</h2>
<h3>Login Process</h3>
<ol>
  <li>Users must navigate to the login page and enter their credentials.</li>
  <li>The system checks the credentials against the <code>h_user</code> table in the database. If valid, users are granted access to their respective dashboards.</li>
</ol>

<h3>Managing Data</h3>
<p>Depending on the user role, the dashboard presents different functionalities. Admins can manage all data entities, while doctors and receptionists have restricted access based on their responsibilities.</p>

<h3>Database Configuration</h3>
<p>To log in as an admin, doctor, or receptionist, ensure that the correct credentials are entered into the <code>h_user</code> table in the SQL Server database.</p>

<h2>Conclusion</h2>
<p>The "Medicover Hospital Demo" is a comprehensive web application built with Java-based technologies, designed to demonstrate typical functionalities required by healthcare facilities. It is structured to provide a secure, scalable, and user-friendly environment for managing hospital operations through a role-based access control system.</p>
