# Spring MVC Film C.R.U.D.

## Overview
This dynamic web application is used to pull information from a not-real mad libs generated database. It contains Customer Data (such as address, names, creation dates, country), Business data (rental store ID's, staff, movie rentals, payments), and films(titles, film categories, actors, languages, inventory). While the database contains all this information, this console application only allows the viewing of movies and their actors, as well as the creation and insertion of user-generated movies. </br>


<p float="left">
<img src="pngegg.png" alt = "git" width="100" height="100" align="center"/>
<img src="kisspng-eclipse-foundation-integrated-development-environm-eclipse-5ac24212bdda89.2215472915226803387777.png" alt = "eclipse" width="150" height="150" align="center"/>
<img src="kisspng-java-logo-programming-language-java-plum-5ac7bef24d5452.5438873115230399863168.png" alt = "eclipse" width="75" height="100" style="margin-right: 25px" align="center"/>
<img src="mySQLp.png" alt = "MySQL" width="100" height="100" style="margin-right: 25px" align="center"/>
</p>

### Technologies Used
* [Java](https://en.wikipedia.org/wiki/Java_)</br>
* [Object-Oriented design](https://stackabuse.com/object-oriented-design-principles-in-java)</br>
* [Eclipse](https://www.eclipse.org/ide/)</br>
* [Git](https://git-scm.com/)</br>
* [Unix Terminal](https://en.wikipedia.org/wiki/Unix_shell)</br>
* [MySQL](https://www.mysql.com/)</br>
* [Spring Framework](https://en.wikipedia.org/wiki/Spring_Framework#Spring_Boot)<br>
* [MVC / Model-View-Controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)<br>

### Lessons Learned
* How to manipulate data within an SQL server, specifically using MySQL as a relational database management system.
* How to manipulate data with MySQL using using the JDBC API.
* Better Object Oriented practices in regards to file structure and encapsulation.
* MVC design pattern using Spring.
  * Model
  * View
  * Controller
* Spring Framework Features
  * Beans
  * Command Objects
  * Pojos
  * Annotations
* POST -> Redirect -> GET

### Usage
You can search a movie up by its Id or search a list of movies using a keyword. The menu is easy to follow along by pressing 1, 2, or 3.

### Further thoughts
As this project was our first time using Spring the learning experience was quite interesting. The ability for Spring to handle all
servlet activity through the DispatcherServlet was a huge time saver and definitely increases efficiency. I was particularly fond of
Command Objects. They, like the DispatcherServlet, seemed like the answer to a problem I wasn't even aware I had, but which definitely
existed. After using them it became clear just how valuable they are.

Design wise, the MVC pattern helped break down the projects's *problem* into digestible chunks. Deepening our understanding of the Model, View,
and Controller and how everything passes back and forth will go a long way towards creating better programs. At a higher level view, the MVC
pattern, in my opinion, demonstrates that many programs and problems can potentially share common attributes. Identifying these attributes, and
identifying how they can be solved with other patterns will make it easier to tackle future projects.

In this project we also learned to implement Post-Redirect-Gets. Without this, we might have inadvertently allowed for the user to initiate invoke a servlet action multiple times. While this may not be a big issue with a mock database such as this one, in the real world, this could lead to an order being placed many times. Thankfully the redirect allows for the user input to be separated from the transaction after it is initiated.

Moving forward, I feel there is a need for exploring and learning ways to implement more defensive coding. The nature of databases in the real world, I feel,
necessitates robust built-in protections in the DAO. Confirmation queries could be implemented to ensure that a query is doing what you think it is doing, and I would like to explore ways of capturing SQL errors in Javaland and reacting to them in the DAO.
