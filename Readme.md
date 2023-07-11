
# How to use this?

- See below "Training Plan" for topics and subtopics, there you will find in which session which topic is covered
- See below "Training Session Video link(drive folder)" for the drive-link, there you will find the session videos
- You can start watching the videos from the session1 and start following the codes examples explained in video.
- Also all codes are uploaded in this github repo

# Training Session Video link(drive folder)

- https://drive.google.com/drive/folders/1vLpVXAICKV5TnyOfkTRzfb2xA3ExXrXe?usp=drive_link

# Training Plan

| | | | | | | | |
|-|-|-|-|-|-|-|-|
|##|Session #|Topic|Sub topic|Date|Status|Attendence - Present|Absent|
|1|S1|Karate intro|What is Karate?  It is a testing tool which supports API, Perf, Web, Mobile automation.   It is created by Peter thomas in 2017.   It was written in Java and most people expected its files also to be in the same language, however, fortunately, that’s not the case.  It uses the BDD approach(Gherkin files),   It has its own DSL syntaxes using which you can achieve the automation of your choice.  Its syntax is very easy to understand by non-programmers.   It provides the users with the ability to execute the test cases in Parallel and perform the JSON & XML checks.   We need API testing because  - Results are published faster, hence no more waiting to see if the API is working fine.  - With the faster response, the deployment of these APIs also becomes faster, hence allows for quick turnaround time.  - Early failure detection, even before the UI of the app is created, allow us to mitigate risks and correct faults.  - Large-scale delivery possible in a shorter period.   Coding knowledge required?  - Cucumber must know  - Karate DSL must know  - API Basic understanding   Features of karate  Makes use of easy-to-understand Gherkins language.  It requires no technical programming knowledge like Java.  It is based on the popular Cucumber standards.  Easy to create a framework.  Parallel testing is the core functionality that is provided by the Karate itself, hence we need not depend on Maven, Gradle, etc.  UI for debugging the Test.  Calling a feature file from another file.  Provides supports for the Data Driver Testing that is built in-house, hence no need to depend on external frameworks.  Built-in Native Rest Reports. Plus, it can be integrated with the Cucumber for better UI Reports and more clarity.  Provides in-house support for switching configuration across different testing environments (QA, Stage, Prod, Pre-Prod).  Seamless support for CI/CD integration that can be useful.  Capable of handling various HTTP calls:   Web Socket support   SOAP request   HTTP   Browser cookie handling   HTTPS   HTML-form data   XML request  Tools Required For Working With Karate Framework  Eclipse/IntelliJ idea  Maven  Java  Junit  Prject structure  - pkg   - tests    - .feature    - .java   Creating the first basic karate test script  --> NEXT SESSION  Resources  - https://www.softwaretestinghelp.com/api-testing-with-karate-framework/  - https://github.com/karatelabs/karate|May 31 2023|Done|Jayant, Nancy, Himanshu, Shailendra, Ankit J, Vishal, Ankit G, Pavan, Ashok|Disha, Devyani|
|2|S2|Karate project structure explanation|* Java * Eclipse * Eclipse plugins * Maven * Maven Dependencies * Packages|Jun 14 2023|Done|Jayant, Nancy, Himanshu, Shailendra, Ankit J, Vishal, Ankit G, Pavan, Disha|Devyani, Ashok|
|3|S2|Karate "Hello world" demo| |Jun 14 2023|Done| | |
|4|S2|Karate api demo, GET request|* Karate DSL keywords * url * path * param * method * status * response|Jun 14 2023|Done| | |
|5|S2|Karate api demo, POST request|* Karate DSL keywords * request|Jun 14 2023|Done| | |
|6|S2|Karate api demo, PUT request| |Jun 14 2023|Done| | |
|7|S2|Karate api demo, DELETE request| |Jun 14 2023|Done| | |
|8|S2|Karate syntax understanding, and identifying/resolving syntax errors|* Feature file * Feature keyword * Scenario keyword * Background keyword * Given, When, And, Then keywords * tags * star(*) keyword * print keyword|Jun 14 2023|Done| | |
|9|S2|Karate Single line, multi line comments| |Jun 14 2023|Done| | |
|10|S2|Karate variables + concetanate + calculations|* def keyword * Print variable * Do math * Print message + result|Jun 14 2023|Done| | |
|11|S3|Karate json handling|* Single line json * Multi line json * Json from external file * Fetch any key:value from the json and store in variable|Jun 20 2023|Done|Jayant, Himanshu, Shailendra, Vishal, Ankit G, Pavan|Devyani, Ashok, Nancy, Ankit J, Disha|
|12|S3|Karate json response verification|* Matching individual data * Matching whole json object|Jun 20 2023|Done| | |
|13|S3|Set|* Manipulating data * Set single/multiple in json * remove in json * delete in json|Jun 20 2023|Done| | |
|14|S4|Match|* header verification * contains & not-contains check|Jun 21 2023|Done|Jayant, Himanshu, Shailendra, Vishal, Ankit G, Ankit J, Pavan, Ashok, Nancy|Devyani, Disha|
|15|S4|Match|* equality check using match * non-equality check using match * Fuzzy matching(dynamic) * Self validation expressions(javascript)|Jun 21 2023|Done| | |
|16|S5|Match|* Understading the LHS and RHS of the syntax * Schema validation * matching array length * match text or binary * match karate.lowerCase()|Jun 28 2023|Done|Shailendra, Vishal, Ankit G, Ankit J, Pavan, Ashok|Devyani, Disha, Jayant, Himanshu, Nancy|
|17|S6|Match|* match contains only * match contains any * match each|Jul 4 2023|Done|Jayant, Himanshu, Shailendra, Vishal, Ankit J, Pavan, Ashok, Devyani|Ankit G, Nancy, Disha|
|18|S6|Parallel Execution using Junit5 Java class|* run scenarios in parallel * ignore scenarios * set env|Jul 4 2023|Done| | |
|19|S7|Passing headers in request|* Passing headers in request individually using key:value pairs * Passing headers in request as json * configure headers|Jul 5 2023|Done|Jayant, Himanshu, Shailendra, Vishal, Ankit J, Ashok, Nancy|Ankit G, Disha, Devyani, Pavan|
|20|S7|Config parameters|* set env * set global variable * set timeouts|Jul 5 2023|Done| | |
|21|S7|Dynamic data passing in request payload|* passing token in request header * Using js function * Accessing json file stored in other folders|Jul 5 2023|Done| | |
|22|S8|Few important topics|* Not Contains check within array * Type conversion > string to number * Commonly Needed Utilities - Calling java codes in karate scripts|Jul 11 2023|Done|Jayant, Himanshu, Shailendra, Vishal, Pavan, Ankit G, Devyani|Ankit J, Disha, Ashok, Nancy|
|23|S8|Calling other feature/scenarios|* Calling entire feature file  & passing data * Calling individual scenario & passing data|Jul 11 2023|Done| | |
|24|S8|Data driven testing|* Scenario outline with example * If else in match(nested)|Jul 11 2023|Done| | |


# Karate Cheat Sheet

- https://priyankab85.medium.com/cheat-sheet-for-karate-assertions-and-matching-d248383546e0

# Sample sites for performing the api tests
	
- https://dev.to/promode/7-demo-websites-which-you-can-use-to-perform-api-testing-1p6c
- https://httpbin.org/
- https://reqres.in/
- https://gorest.co.in
	
# Main source

- https://github.com/karatelabs/karate
