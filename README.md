# First Assignment: City Hall Planner
Suppose a town hall has a Prolog knowledge base in which it stores information about the families registered in its town hall. The figure below shows how the information for each family can be structured. Each family is stored as one statement. Note that because the number of children is not the same for each family, a list is used that can handle any number of children. (Some queries require the use of arithmetic operators shown on page 214 of the slides.)

Represent the family and 1-2 more families (your choice) using the family/3 predicate and appropriate compound terms.

Given the child/1 child(X) predicate:- family(_, _, Children), member(X, Children). define dateofbirth/2 and use them to retrieve all children born in a given year.

![Screenshot 2023-04-28 at 8 47 54 PM](https://user-images.githubusercontent.com/118211341/235217991-c836174b-37a2-416d-a725-1ed48a1a46e1.png)

# Second Assignment: Lists Time

proceed_list(X, Y) which is true when Y list follows X list, i.e., if Y is a sublist of any of the first rightmost elements of X. Example:

?-proceed_list([1,2, 3], [1, 3]).
No

?-proceed_list([1,2], [2]).
Yes

# Third Assigment: Computer Parts

Develop a Prolog program that represents an object such as e.g. a personal computer.

The program should contain:

Facts that indicate the components of the object (eg power supply, monitor, etc.) and their components (eg for the power supply such as cable, fan, transformer, etc.), component's components (e.g. the transformer consists of wire, core, etc.), and so on. The depth of the component hierarchy is not predetermined.
Facts that indicate whether the components are made of metal or plastic.
The program should be able to answer questions such as:

Finding components and their sub-components.
Finding components that contain metal or plastic.
The sum of the components that make up the computer.

# General Info

This is individual course work in Logical Programming class, 5th semester.
Programming Language: Prolog 
Editor that helped me with development: Visual Studio Code with Prolog plugin. 
