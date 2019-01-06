# [DevMatch](http://gentle-gorge-79360.herokuapp.com/)

Welcome to DevMatch, a fully functional, responsive Software-as-a-Service (Saas) Ruby on Rails web app dedicated to bringing developers, investors, and entrepreneurs together.

## Inspiration
The students of today require modern solutions for modern problems. For many of us, not only in the US but also around the world, access to definitive pipelines for industry connections and educational resources is severely lacking, and thus DevMatch rose as a streamlined path to help the innovators, developers, and entrepreneurs of the future get a headstart.

## What DevMatch does
DevMatch has several functions. The social networking community and site are intended to help users identify key people established in industry so they can make more informed decisions and gain vital contact information from leading professionals. I also implemented DevMatch as an entirely RESTful web application, built with multiple contact functionalities and messaging services. This is all compiled into an accessible, user-friendly website which includes resources to industry insights and economic outlooks.

## How I built it
### RESTful APIs and Bootstrap
DevMatch's creation required building and utilizing functional RESTful APIs and packages to create a responsive site. The site is styled mainly with Twitter's Bootstrap.js library and is compiled via Amazon's AWS Cloud9. The backend server is supported by Heroku.

### Ruby on Rails, SQL, Gems, Stripe API
The site is primarily built in Ruby using the established Ruby on Rails framework. Development database querying is handling by SQLite3 whereas production querying is handled through PostgreSQL (check out the Gemfile for in-depth information). The contact mailing system is handled through Heroku's integration with Mailgun, and several FOSS gems are used throughout production including Hirb Gem for database processing, Devise Gem for user auth, Figaro Gem for API handling, and Thoughtbot Gem (Paperclip) for image containment. Major languages/frameworks used include **HTML5, CSS3/Sass, Javascript, SQL, and Ruby**.

## Challenges I ran into
In the process of making the site, I ran into several production issues with Heroku. Additionally, I encountered difficulties connecting to the development server on several instances, and the rails versioning proved challenging for the back-end.

## Accomplishments that I'm proud of
I amazed that I was able to complete DevMatch over such a small duration, especially considering my lack of experience with Ruby on Rails and SQL. I faced many set-backs with the site interface, so ultimately having a working version of the site pushed into production was extremely fulfilling.

## What I learned
Coming into this project as a Ruby novice, I had absolutely no experience with anything related to the Rails framework, and minimal experience with Heroku servers and design. However, I managed to bridge this gap by constantly pushing myself to learn more about Ruby, poring over documentation, and seeking help when needed on StackOverflow and Google. Ultimately, I needed to think and rethink the overall coding process, and finding that common ground and challenging myself to truly understand code instead of haphazardly copying it from forum pages really allowed me to progress. I was also able to experiment with new technologies such as AWS Cloud9, PostgreSQL, Paperclip, and others.

## What's next for DevMatch
I hope to expand the site into a fully integrated site complete with enhanced user experiences and design. I'm also actively pushing myself to create an iOS app for DevMatch, which I hope to push into production soon! Stay tuned for more updates!

Made with ♥ in 2018
