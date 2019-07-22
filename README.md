## Chat app with a [React front-end](https://github.com/leshkacore/action_cable_frontend) and a Rails API back-end

This is a chat app with a React front-end and a Rails API back-end. I made it with the goal of familiarizing myself with WebSockets, and Rails’ tool for implementing them, Action Cable.

## Technology

* [Ruby 2.5.1+](https://www.ruby-lang.org/)
* [Rails 5.2.2](http://rubyonrails.org/)
* [React 16.8.6](https://reactjs.org/) for FE part

## Running the demo locally

* Clone this repository
* Run `bundle` to install all dependencies
* Create `.env` file with database credentials
* Run `rake db:setup` to initialize the database
* Run `rails server` to start the app
* Visit [React front-end](https://github.com/leshkacore/action_cable_frontend) and clone front-end repository
* Run `npm install` to intall all dependecies of front-end part
* Run `npm start` and select `Yes` to start on localhost:3001.
* Visit `http://localhost:3001/` and register
* In a separate browser or on a different machine create a second account.
* Start a conversation

## Useful links

* [Base Guide](https://guides.rubyonrails.org/action_cable_overview.html)
* [The Practical Guide to Using ActionCable](https://hackernoon.com/the-practical-guide-to-using-actioncable-30d570d8988c)
* [Getting Started with React](https://facebook.github.io/create-react-app/docs/getting-started)
