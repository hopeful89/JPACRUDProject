### JPACRUDProject
This project was created as a simple CRUD to keep track of of the current animes im watching. With a small bit of informations of some videos to get the idea of what the show is.

### How to run
- Project address for AWS ec2: http://3.139.183.62/JPACRUDProject
- You can create a new anime from the nav bar
- edit and delete functions once you are inside a single anime
- there is currently a bug with cookies that if you don't see the video or your page isnt loading please refresh

### Technologies used
* Java - OOP
* JPA - ORM
* MySQL
* JPQL
* Gradle
* Spring Boot
* Hibernate
* MVC Pattern

### Lessons learned

Attention to detail of passing the data around from java out to the jsp in expression language.  The ease of having spring annotations has completely changed the way we do things.  I really really really liked have all the transactions handle by @Transactional and letting @PersistenceContext take care of my connections with the database.  The managed entity is really nice though I need to learn more on the update side of things.  I am getting much more comfortable working from examples and piecing the code together.  What is the code doing or not doing? What should it be doing? Questions I find myself asking a lot.  Also, Object Relational Mapping with JPA entities is great.

## If I had more time

I would would like to add a log in system, flesh out some of the perspective and translate issues, the mobile view needs work for the initial search and to have finished the card details. I had some grand ideas of having a view by rating and a carousel of sorts that would allow individual rows to scroll...think like a netflix or hulu
