# Testing
---
## What is Software Testing
Software testing is done to evaluate a software application or system to identify defects, errors, or potential issues before it is released to the end-users. The primary goal of software testing is to ensure that the software meets the specified requirements, is functional, reliable, and performs as expected.

## Principles of Software Testing
- Identifying the presence of defects: Testing is not about proving that software is error-free but about finding defects that need to be fixed. Defects can include code bugs, missing requirements, incorrect functionality, and other issues.
- Exhaustive testing is time consuming: It is impossible to test all possible combinations and scenarios in software applications, so `testers must focus on the most critical and high-risk areas`.
- Early testing saves time and money: It is more cost-effective to identify and fix defects early in the software development life cycle than later in the process.
- Defect clustering: In software development, defects often occur in clusters, meaning that a small number of modules or components are responsible for the majority of defects. Testers should focus on these high-risk areas.
- Pesticide paradox: Repeating the same tests with the same inputs can result in the same defects being identified repeatedly. `Testers must continually update and modify their test cases to find new defects`.
- Testing is context-dependent: The testing process should be tailored to the specific context and requirements of the software application being tested.
- Absence-of-errors fallacy: Finding no defects in the software application does not mean that it is error-free. Testers must be aware of potential risks and unknown issues.


## Classification of Different Types of Testing
![test](https://browserstack.wpenginepowered.com/wp-content/uploads/2023/03/Types-of-software-testing-1.png)

## Functional Testing
focuses on verifying the functionality of the software system. It is a type of testing that is done to ensure that the system works as intended and meets the functional requirements specified by the stakeholders.`Functional testing is concerned with what the software system does, and how it performs its functions.`
## Example of Functional Testing:
Let’s say you’re testing a login page of a website. The functional requirements of this login page may include:
- The user should be able to enter their username and password.
- The system should authenticate the user’s credentials and grant access if the credentials are correct.
- The system should deny access if the user’s credentials are incorrect.
To test the functionality of this login page, you may perform the following functional tests:
    - Enter valid username and password and verify that the user is able to successfully login.
    - Enter invalid username and password and verify that the user is not able to login and an appropriate error message is displayed.
    - Verify that the login page displays correctly on different browsers and devices.
    - Verify that the password field is secure and does not display the entered password.
    - Verify that the “Forgot Password” feature works correctly and allows users to reset their passwords.

## Non Functional Testing
focuses on evaluating the non-functional aspects of the software system. This type of testing includes testing for performance, usability, reliability, scalability, and security. Non-functional testing is concerned with how well the software system performs its functions, rather than what it does.

## Example of Non functional Testing:

Let’s say you’re testing the performance of a website. The non-functional requirements of this website may include:
- The website should be able to handle a certain number of concurrent users.
- The website should load pages within a certain amount of time.
- The website should be responsive and display correctly on different devices and screen sizes.
- Accessible for users who are differently abled.
- The website should be secure and protect user data.

## What are the Software Testing Techniques and How are They Different from Testing Types?
Software test techniques refer to the methods used to test a software system.
- `Black box testing`: It is a type of software testing technique that focuses on testing the functionality of a software system without any knowledge of its internal workings. This technique is used to test the system from a user’s perspective, focusing on testing whether the system works as expected and meets the user’s needs. The tester only knows the inputs and expected outputs of the system and does not know how the system works internally.
- `White box testing`: It is a software testing technique that focuses on testing the internal workings of a software system. This technique is used to test the system from a developer’s perspective, focusing on testing the system’s internal logic, performance, and efficiency. The tester has complete knowledge of the system’s internal details, including the code and its implementation.
- `Grey box testing`: Grey box testing is a software test technique that combines the approaches of both black box and white box testing. This technique is used to test the system from a developer’s perspective, where the focus is on testing some of the system’s internal workings but not all. The tester has partial knowledge of the system’s internal details, and this technique is often used in system integration testing.

On the other hand, testing types refer to the different types of testing that can be performed within these test techniques. For example, functional testing, regression testing, performance testing, security testing, usability testing, etc., are all different types of testing that can be performed within the black box, white box, or grey box test techniques. Testing types are used to test different aspects of the software system and to ensure that it meets the stakeholders’ requirements.

## Types of Functional Testing
----
## `Unit Testing` `dev`
is a software testing type in which individual units/components are tested in isolation from the rest of the system to ensure that they work as intended. A unit refers to the smallest testable part of a software application that performs a specific function or behavior. A unit can be a method, a function, a class, or even a module. They can be run in isolation or in groups. Unit tests are typically written by developers to check the correctness of their code and ensure that it meets the requirements and specifications.
## Example of Unit Testing:
A developer has scripted a password input text field with its validation ar (8 characters long, must contain special characters.); makes a unit test to test out this one specific text field (has a test that only inputs 7 characters, no special characters, empty field)

## Advantages of Unit Testing
- Early detection of Bugs: Unit tests are typically created alongside the development of code. By running these tests frequently during development, developers can catch bugs and issues early in the development process, making them easier and cheaper to fix.
- Simplifies Debugging Process: When a unit test fails, it indicates there is an issue with a specific unit of code. This makes it easier to pinpoint the source of the problem, as developers can focus on a smaller section of code rather than searching through the entire application.
- Encourages Code Reusability: Writing unit tests often requires breaking down code into smaller, more modular components. This encourages developers to write code that is more modular and reusable, as individual units can be tested and reused in different parts of the application.
- Improves Code Quality: Unit tests ensure that each unit of code functions correctly in isolation. By thoroughly testing each unit, developers can have more confidence in the reliability and quality of their code, leading to a more robust and stable application overall.
- Enables Continuous Integration: Unit tests are an essential part of the continuous integration (CI) process, where code changes are automatically tested and integrated into the codebase. By having a suite of unit tests, developers can quickly identify if their changes have introduced any issues, allowing for faster and more frequent integration of code changes.

## Types of Unit Testing
- ##### Gorilla Testing
    Gorilla testing is a software testing technique where the tester performs testing of a particular module or component of the software system rigorously and extensively to identify any issues or bugs that may arise. In other words, Gorilla testing focuses on testing a single module or component in depth to ensure that it can `handle high loads and perform optimally under extreme conditions`.
     #####  Example of Gorilla Testing
    Testing a particular unit/module extensively to ensure that it handles heavy load.

#### `Integration Testing`
Integration testing is a testing type in which different modules or components of a software application are tested together as a group to ensure that they work as intended and are integrated correctly. The main aim of integration tests is to identify issues that might come up when multiple components work together. It ensures that individual code units/ pieces can work as a whole cohesively.
### Integration testing can be further broken down to:
- Component Integration Testing: This type of testing focuses on testing the interactions between individual components or modules.
- System Integration Testing: This type of testing focuses on testing the interactions between different subsystems or layers of the software application.
- End-to-End Integration Testing: This type of integration testing focuses on testing the interactions between the entire software application and any external systems it depends on.

###### Example of Integration Tests:
A software application consists of a web-based front-end, a middleware layer that processes data, and a back-end database that stores data. Integration tests would verify if the data submitted in the front end is processed by the middleware and then stored by the backend database.

#### `System Testing`

System testing is a testing type that tests the entire software application as a whole and ensures that the software meets its functional and non-functional requirements. System testing is typically performed after integration testing. During system testing, testers evaluate the software application’s behavior in various scenarios and under different conditions, including normal and abnormal usage, to ensure that it can handle different situations effectively.

## Example of System Testing
A software application consists of a web-based front-end, a middleware layer that processes data, and a back-end database that stores data. The system test for this scenario would involve the following steps:
- The user accesses the front-end interface and submits an order, including item details and shipping information.
- The middleware layer receives the order and processes it, including verifying that the order is valid and the inventory is available.
- The middleware layer sends the order information to the back-end database, which stores the information and sends a confirmation message back to the middleware layer.
- The middleware layer receives the confirmation message and sends a response back to the front-end indicating that the order has been successfully processed.

## Advantages of System Testing
- Identifies and resolves defects or issues that may have been missed during earlier stages of testing.
- Evaluates the software application’s overall quality, including its reliability, maintainability, and scalability.
- Increases user satisfaction
- Reduces risk


## Types of System Testing


- ### End to End Testing `E2E`
     testing methodology that tests the entire software system from start to finish, simulating a real-world user scenario. The goal of end-to-end testing is to ensure that all the components work together seamlessly and meet the desired business requirements. Most often people use the term system testing and end to end testing interchangeably. However both of them are different types of testing.
    End-to-end testing, on the other hand, is a type of testing that verifies the entire software application from start to finish, including all the systems, components, and integrations involved in the application’s workflow. The focus of E2E testing is on the business processes and user scenarios to ensure that they are working correctly and meet the user requirements.
    ##### Example of End to End Testing
    E-commerce transaction: End-to-end testing of an e-commerce website involves testing the entire user journey, from product selection to payment, shipping, and order confirmation.
    ##### Advantages of End to End testing
     Allows you to test real world scenarios
     Comprehensive testing
     Improves quality

- ### Monkey Testing
    where the tester tests in a random manner with random inputs to analyze if the application breaks. The objective of monkey testing is to verify if an application crashes by giving random input values. There are no special test cases written for monkey testing.
 
    ##### Example of Monkey Testing
    A tester randomly turning off the power or unplugs the system to test the application’s ability to recover from sudden power failures.

    ##### Advantages of Monkey Testing
     Does not require extensive knowledge
     Ensures reliability
     Used to identify bugs that cannot be discovered through traditional methods
     Cost Effective

- ### Smoke Testing
    testing type that is conducted to ensure that the basic and essential functionalities of an application or system are working as expected before moving on to more in-depth testing.
    ##### Example of Smoke Testing
    Smoke testing for login will check whether the login screen is accessible and if the users can log in.
    ##### Advantages of Smoke Testing
    Quick Feedback
    Early detection of defects
- ### Sanity Testing
    Sanity testing is a testing type that is performed to quickly determine if a particular functionality or a small section of the software is working as expected after making minor changes. The main objective of sanity testing is to ensure the stability of the software system and to check whether the software is ready for more comprehensive testing.
    ##### Example of Sanity Testing
    After fixing a bug that caused a crash in a mobile application, you can perform sanity testing by opening the app and ensuring that it does not crash anymore
    ##### Advantages of Sanity Testing
    Quick and efficient
    Saves time and effort
    Cost-effective

### `Acceptance Testing`
Acceptance Testing verifies whether a software application meets the specified acceptance criteria and is ready for deployment. It is usually performed by end-users or stakeholders to ensure that the software meets their requirements and is fit for purpose.
### Acceptance Testing can be further divided into two types: 
##### User Acceptance Testing (UAT) and Business Acceptance Testing (BAT). User Acceptance Testing is performed by end-users to validate that the software meets their needs and is easy to use. Business Acceptance Testing is performed by stakeholders to ensure the alignment of business/functional requirements with the organization’s objectives.

### Example of Acceptance Testing
Conducting tests to meet if an app meets the requirements of the user. For a banking app, acceptance testing would involve testing the app for login, account management, fund transfer, statement download, card payment etc.
### Advantages of Acceptance Testing
- ###### Increased stakeholder engagement
- ###### Reduced Risk
- ###### Reduced costs

### Types of Acceptance Testing
- ### Alpha Testing `dev`
    type of testing that is performed in-house by the development team or a small group of users. It is the first phase of testing that is conducted before the software is released to the public or external users. Alpha testing is a crucial step in the software development process as it helps to identify bugs, defects, and usability issues before the product is released.
    ##### Example of Alpha Testing
    A game development company is creating a new game. The development team performs alpha testing by testing the game’s performance, such as loading times, graphics, sound effects, and gameplay.
    ##### Advantages of Alpha Testing
    Early detection of issues
    Enhanced user experience
    Feedback from internal users

- ### Beta Testing
     performed by a group of external users who are not a part of the development team. The purpose of beta testing is to gather feedback from real users and to identify any issues that were not found during the alpha testing phase.
    ##### Example of Beta Testing
    A software company is releasing a new feature of its product. The company invites a group of external users to beta test the product and provide feedback on any bugs, defects, or issues that were not found during the alpha testing phase.
    ##### Advantages of Beta Testing
    Real-world feedback
    Marketing and promotion
    Enhanced user experience
- ### User acceptance testing
    performed by the end-users of the software system. The focus of UAT is to validate the software system from a user’s perspective and to ensure that it meets their needs and requirements. UAT is typically performed at the end of the software development lifecycle.
    ##### Example of User Acceptance Testing
    A company asks a batch of its customers to test the website and provide feedback on its functionality, usability, and overall user experience. Based on the feedback, it makes the necessary changes and improvements to the website.
    ##### Advantages of user Acceptance Testing
    Reduced development costs
    Improved customer satisfaction
---
# Types of Non Functional Testing
### `Security Testing`
 type of software testing that assesses the security of a software application. It helps to identify vulnerabilities and weaknesses in the system and ensure that sensitive data is protected.
#### Examples of security testing
- penetration testing
- vulnerability scanning
- authentication testing.
#### Advantages of Security Testing
- Improved system security
- Protection of sensitive data
- Compliance with regulations
#### Types of Security Testing
- Penetration testing: This involves attempting to exploit potential vulnerabilities in the software system by simulating an attack from a hacker or other malicious actor.
- Fuzz testing: This involves sending many unexpected or malformed input data to the software system to identify potential vulnerabilities related to input validation and handling.
- Access control testing: This involves testing the software system’s access control mechanisms inorder to make sure that the access to sensitive data is granted only authorized users.
### `Performance Testing`
Performance testing is a type of software testing that assesses the performance and response time of a software application under different workloads. It helps to identify bottlenecks in the system and improve the performance of the application.
Examples of performance testing include load testing, stress testing, and volume testing.
#### Advantages of Performance Testing
- Increased customer satisfaction
- Better scalability
- Improved user experience
### Types of Performance Testing
- a. Load Testing
Load testing is a type of performance testing that assesses the performance and response time of a software application under a specific workload. It helps to identify the maximum capacity of the system and ensure that it can handle the expected user load.
Examples of Load Testing
Simulating multiple users accessing a website at the same time or performing multiple transactions on a database.
Advantages of Load Testing
Improved system reliability
Better scalability
- b. Stress Testing 
Stress testing is a type of performance testing that assesses the performance and response time of a software application under extreme workloads. It helps to identify the system’s breaking point and ensure that it can handle unexpected workloads.
Examples of Stress Testing
Simulating thousands of users accessing a website simultaneously or performing millions of transactions on a database.
Advantages of Stress Testing
Improved system reliability
Better preparedness for real-world scenarios
Better scalability
- c. Volume Testing
Volume testing is a type of testing that assesses the performance and response time of a software application under a specific volume of data. It helps to identify the system’s capacity to handle large volumes of data.
Examples of Volume Testing
Inserting large amounts of data into a database or generating large amounts of traffic to a website.
Advantages of Volume Testing
Improved system reliability
Better scalability
- d. Scalability Testing
Scalability testing evaluates the software’s ability to handle increasing workload and scale up or down in response to changing user demands. It involves testing the software system under a range of different load conditions to determine how it performs and whether it can handle increasing levels of traffic, data, or transactions.
Examples of Scalability Testing
Testing a website by gradually increasing the number of simulated users accessing the website and tracking how the system responds to it.
Advantages of Scalability Testing
Optimize system performance
Better scalability
- e. Endurance Testing
The goal of endurance testing is to identify how well a software system can handle a workload over an extended period of time without any degradation in performance or stability. It involves simulating a normal or average workload or traffic scenario over a period of a few weeks to months.
Examples of Endurance Testing
Testing a website for performance with normal or average user traffic over an extended period.
Advantages of Endurance Testing
Identifies long-term performance issues
Reduces downtime
Enhances user experience
### `Usability Testing`
Usability testing is focused on evaluating the user interface and overall user experience of a software application or system. It involves testing the software with real users to assess its ease of use, learnability, efficiency, and overall user satisfaction.
Types of Usability Testing
- a. Exploratory Testing
Exploratory Testing is a software testing type that is unscripted, meaning that the tester does not follow a pre-defined test plan or test case. Instead, the tester relies on their own expertise, intuition, and creativity to explore the software and find defects.
Example of Exploratory Testing
A tester testing for different actions, such as tapping different buttons, swiping screens, and inputting different types of data . The tester might look for crashes, freezes, errors, and unexpected behaviors throughout the exploration.
Advantages of End to End testing
Exploratory testing allows testers to be more flexible.
Exploratory testing can often be more time-efficient
Used to test real world scenarios
- b. User interface Testing
User interface testing is a type of software testing that focuses on testing the graphical user interface (GUI) of an application. The purpose of user interface testing is to ensure that the application’s GUI is functioning correctly and meets the requirements and expectations of end-user
Examples of User Interface Testing
Identifying visual bugs in the layout, design, color scheme, font size, and placement of buttons.
Advantages of User Interface Testing
Identifying visual bugs
Reduced development costs
Increased Productivity
Increased Usability
- c. Accessibility Testing
Accessibility testing is a type of testing that is focused on evaluating the accessibility of a software application or system for users with disabilities. It involves testing the software with assistive technologies, such as screen readers or voice recognition software, to make sure that differently abled users are able to access and use the software application effectively.
Examples of Accessibility Testing
Testing a website with a screen reader to ensure that the website is compatible with screen readers and its content is accessible via text-to-speech.
Advantages of Accessibility Testing
Improved User Experience
Good PR
### `Compatibility Testing`
Compatibility testing evaluates the compatibility of a software application or system with different hardware, software, operating systems, browsers, and other devices or components.
Types of Compatibility Testing
- a. Cross Browser Testing
Cross browser testing is a type of software testing that ensures a web application or website works correctly across multiple browsers, operating systems, and devices. It involves testing the website’s functionality, performance, and user interface on different web browsers such as Google Chrome, Mozilla Firefox, Microsoft Edge, Safari, and Opera, among others.
Examples of Cross Browser Testing
A tester testing on different versions of Google Chrome to identify issues that might arise in a particular version or a tester testing on different browsers to identify issues particular to a browser.
Advantages of Cross Browser Testing
Increased customer satisfaction
Enhanced brand reputation
Early detection of issues
Improved website traffic and conversion
- b. Cross platform Testing
Cross platform testing is a testing type that ensures that an application or software system works correctly across different platforms, operating systems, and devices. It involves testing the application’s functionality, performance, and user interface on different platforms such as Windows, macOS, Linux, Android, iOS, and others.
Examples of Cross Platform Testing
A software company is developing a new accounting software system. The company performs cross-platform testing to ensure that the software works correctly on different operating systems such as Windows, macOS, and Linux.
Advantages of Cross Platform Testing
Improved software quality
Competitive Advantage
Improved market reach

# Other Types of  Testing
### Regression Testing:
Regression Testing is a software testing type that ensures that changes or modifications to an existing software application do not introduce new defects or negatively impact existing functionality.
### Recovery Testing:
Recovery testing is a type of software testing that evaluates the system’s ability to recover from failures, errors, and other disruptions.
 API Testing: API testing is the process of testing the functionality, reliability, performance, and security of an application programming interface (API). An API consists of protocols, routines, and tools for building software applications.
### Active Testing:
This type of testing involves executing test cases with a specific purpose and expected outcome.
### Agile Testing:
It is a software testing approach that follows the principles and rules of Agile software development.
### Ad-hoc Testing:
This type of testing is performed without any predefined test plan or test case.
### Benchmark Testing:
This type of testing involves comparing the performance of the software system against established benchmarks or industry standards.
### Branch Testing:
This type of testing is done to ensure that all the branches of the code are tested thoroughly.
### Code-driven Testing:
This type of testing involves writing test cases in the same programming language as the code being tested. It helps in finding defects at an early stage of development.
### Context Driven Testing:
Context-driven testing is a type of software testing used before launching in the market to test it on all the parameters, including performance, UI, speed, functionalities, and other aspects of the software to identify and fix bugs.
### Dynamic Testing:
This type of testing involves you have to give input and get output as per the expectation through executing a test case
### Data Driven Testing:
In this type of testing, testers use different data sets to validate the software system’s behavior under different conditions.
### GUI Testing:
This type of testing focuses on validating the graphical user interface of the software system. Testers verify that the user interface is intuitive and easy to use.
### Localization Testing:
This type of testing ensures that the software system can be easily adapted to different demographics. Language, currency etc are tested here.
### Keyword-driven Testing:
This type of testing involves using keywords to define the test cases. Testers use predefined keywords to create test scripts that are executed by an automated testing tool.
### Parallel Testing:
This type of testing involves executing the same test cases on multiple systems simultaneously. It helps in identifying performance issues and defects that are specific to certain configurations.
### Path Testing:
This type of testing involves testing all possible paths through the code to ensure that each path has been executed, and all the expected outcomes are met.
### Retesting:
Retesting is when a test is carried out again on a specific feature that was known to not be functional during the previous test in order to check for its functionality.
### Static Testing:
This type of testing involves analyzing the code and other artifacts without executing them. Testers review the code, documentation, and other artifacts to identify defects and potential issues.











