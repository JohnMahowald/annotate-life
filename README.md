# Annotate-Life

Annotate is a project I built to refine my backbone.js an Ruby on Rails skills. The backend is built on Rails with a Postgres DB using a custom built BCrypt authentication. After login, Rails serves up a static page for backbone anchor content. By creating a custom Animated View and Composite View JavaScript class, subviews are recursively rendered on screen without triggering a refresh. AJAX requests are quietly handled ensuring client content is always updated without refresh. The result is a clean, performant website 

## Key Features:

1. Extends Backbone's View class to manage composite views that recursively render subviews within their parent.
2. Clean RESTful Rails API renders JSON for backbone models and collections with custom jbuilder responses and singular database queries.
3. Creates personalized welcome message that changes throughout the day & assigns new background image with url stored in users session.
4. Utilizes Filepicker.io allowing users to import images. Associated URLs are persisted in db through Rails associations.

## Design:

I personally developed the design for the entire project. I began by creating wireframes for each of the primary views before writing any code:

![alt wireframe1](/app/assets/images/wireframe1.png "Login")
![alt wireframe2](/app/assets/images/wireframe2.png "Journals Index")
![alt wireframe3](/app/assets/images/wireframe3.png "Journal Show")
![alt wireframe4](/app/assets/images/wireframe4.png "Journal Show")
![alt wireframe5](/app/assets/images/wireframe5.png "Story Edit")

## Implementation:

My project was built in four stages using the agile development methodology.

1. Rails authentication pages
2. Journals Index Composite View with associated styling & Rails backend.
3. Journals Show Composite View with associated styling & Rails backend.
4. Story Show View with associated styling.

## About:

To learn more about me and my work as a developer, please visit my website at: [www.johnmahowald.com](http://www.johnmahowald.com)