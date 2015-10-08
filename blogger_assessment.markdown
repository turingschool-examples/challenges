# Module 4 Reassessment

For your final assessment, you'll be building a blogging application.

## Base Expectations

* The application must be deployed and working in production.
* You should work on this individually. You are not allowed to ask for help from mentors, classmates, instructors or any other individuals.
* You are not allowed to review other implementations of this challenge.
* You are allowed to use any tools that you choose to facilitate your workflow (text editor, testing framework, etc.).
* You can reference external resources such as documentation, blog posts, etc.
* You should commit often, and expect to explain and justify your implementation.

### Overview

The application follows a familiar blogging pattern -- users can create "Posts" on the site and add "Comments" about existing posts.

The application does not require users to register or log in, so any descriptions involving "authors"
should simply require a User to provide their name (such as when creating a post or comment).

In order to provide a fluid user experience, several interactions will need to be performed without requiring a full page reload.

### Posts

* A post has a title, a body, and an author.
* A post starts out as a draft.
* Once created, a post can be published.
* By default, users browsing the listing of posts should only see published posts.
* A user should have an additional option to view a list of unpublished posts.
* A post body can be written in __Markdown__ and rendered as HTML when it is viewed.
  (You are free to use any existing Markdown libraries such as RedCarpet)
* A post has many comments.
* When viewing a post, a user should have a form for adding a comment.

### Comments

* A comment has the name of the author who wrote it.
  (The author will provide this via the form when creating the Comment)
* A comment has a body.
* A comment belongs to a post.
* A comment can be written in __Markdown__ and rendered as HTML when it is viewed.

### User Interface and Experience

* The form to add a new comment on a post should appear when viewing that post,
  and the user should be able to see their comment appear after it is submitted __without reloading the page__.
* A user should be able to filter posts in a list by name without reloading the page.
* A user should be able to filter posts in a list by author without reloading the page.

## Extensions

If you finish early, consider implementing one of these extensions:

### Sorting

* When viewing a list of posts, the user have the option to sort the posts by either their number of comments or their titles. This sorting should happen without reloading the page.

### Email

* A user can create an post by sending an email to an email address.
* The subject will be for the post title.
* The email body will be used for the post body.
* The name of the sender will be used as the post author.

### Image Uploading

* When creating a Post, a user should have an option to upload an image file
* The image should be stored persistently somewhere on the network (S3, VPS, etc) so that it's still available on subsequent visits
* The image should be displayed when viewing the post

## Rubric

### 1. Features

* 4: All of the base expectations were completed as well as one or more extensions
* 3: All of the base expectations were met, with one or two minor gaps in functionality
* 2: Missing one or two features from the base expectations
* 1: Missing more than two base expectations and/or the application is not deployed and working in production

### 2. Testing

* 4: Project has a running test suite that exercises the application at multiple levels
* 3: Project has a running test suite that tests and multiple levels but fails to cover some features
* 2: Project has sporadic use of tests and multiple levels
* 1: Project did not really attempt to use TDD

### 4. Rails Style

* 4: Developer is able to craft Rails features that make smart use of Ruby, follow the principles of MVC, and push business logic down where it belongs
* 3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack
* 2: Developer struggles with some concepts of MVC and pushing logic down the stack
* 1: Developer shows little or no understanding of how to craft Rails applications

### 5. Ruby Style

* 4: Developer writes code that is exceptionally clear and well-factored
* 3: Developer solves problems with a balance between conciseness and clarity and often extracts logical components
* 2: Developer writes effective code, but does not breakout logical components
* 1: Developer writes code with unnecessary variables, operations, or steps which do not increase clarity

### 6. Javascript Usage & Style

* 4: Developer uses Javascript
* 3: Developer uses Javascript effectively and in the right places, and demonstrates understanding
     of the client/server divide.
* 2: Developer can accomplish basic tasks using Javascript, but struggles to effectively combine
	 pieces of the application.
* 1: Developer struggles to manipulate basic Javascript or jQuery concepts.
