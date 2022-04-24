# SE-Sprint01-Team25


<h1>Sprint 1</h1>
  
<h2>Contributors</h2>
<ul>
  <li>Vahid Menu Nesro</li>
  <li>Valdrin Smakaj</li>
</ul>

<h2>Built with</h2>
<ul>
  <li>HTML5</li>
  <li>CSS3</li>
  <li>PHP</li>
  <li>MySQL</li>
  </ul> 
 
  <h2>Getting Started</h2>
  <h3>Pre-requisites</h3>
    <ul>
    <li>XAMP -- or equivalent service to host local server</li>
    <li>Most suitable browser(s) -- Chrome/Firefox</li>
    </ul> 
    
   <h3>Installation</h3>
    <ol>
      <li>Clone Repository to your local machine</li>
      <li>Open Installation folder</li>
            <li>Run the sql script within local://phpmyadmin or equivalent</li>
            <li>Move all folders (installation folder not neccesary at this point) to htdocs under XAMPP</li>
      <li> Run XAMPP and start all services</li>
  <li> Return to main page and hit "Open Application"</li>
    </ol> 
      
    
 <h1>File Structure</h1>
 <h3> General Information to Helo Process Above Image</h3>
Each Directory that includes "Registration-Login" handle Sign Up and Login for each user class.
dbconnect.php and dberror.php manage the database connection and error handling respectively.
Some media files are included in directories img and video. These are particularly used throughout the Front-End UI.

![Untitled](https://user-images.githubusercontent.com/63849626/158934114-018f57c7-802b-4615-a3cc-d619af41b955.png)


<h1>SPRINT 1 Acheivements</h1>

✅ Created Landing page using HTML and CSS

✅ Implemented Database Design in MySQL and included specified relational constraints

✅ Created SQL Script to increase modularity during development step

✅ Implemented Database Connection using PDO API in order to simplify Data Sanitization

✅ Sanitized Input Forms

✅ Implemented Visitor Registration and Login.

✅ Implemented Place Registration and Login.

✅ Implemented Hospital Login.

✅ Implemented Agency and Login.

✅ Added project installation guide to README.

✅ Created Database User and included it in SQL Script.

In short, we implmented the front-end for the landing page and registration and login pages for all users. We also laid-down the back-end as well as a framework for handling the database connection inside dbconnect.php. Additonality, we formatted the code to make it modular using, SQL scripts and minimizing the amount of external dependencies to run our code base.   
