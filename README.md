**Karate API Automation with Eclipse - Readme**
This README file provides a guide on setting up and using Karate API automation with Eclipse.

**Prerequisites**
Before starting, ensure that you have the following installed:
Java Development Kit (JDK)
Eclipse IDE
Getting Started
Clone the project repository from GitHub:

**Clone code**
git clone git@github.com:vidhyapasupathy/Karate.git
Launch Eclipse IDE and import the project:

**Click on File -> Open Projects from File System.**
Select the project directory you cloned and click Finish.
Install the required dependencies:

**Right-click on the project in the Package Explorer.**
Select Build Path -> Configure Build Path.
Go to the Libraries tab and click Add External JARs.
Navigate to the project's libs folder and select all the JAR files.
Click Apply and Close.


**Run Karate tests:**
Right-click on the test class or package.
Select Run As -> JUnit Test.
![Screenshot](https://github.com/vidhyapasupathy/Karate/blob/master/Images/Run.png)

Karate will execute the tests and display the results in the Eclipse console.

**Reporting**
The project uses the built-in Karate HTML reports for test reporting. After running your tests, a target directory will be created. Open the target/karate-reports/index.html file in a web browser to view the test report.
![Screenshot](https://github.com/vidhyapasupathy/Karate/blob/master/Images/reports.png)



