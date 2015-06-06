# NoCMS Job Offers

## What's this?

This is a very simple Rails engine with some models, controllers and views to manage information about job offers.

## How do I install it?

Right now there's no proper gem, although we have a couple of projects making extensive use of it.

To install it just put the repo in your Gemfile:

```ruby
gem "nocms-job-offers", git: 'git@github.com:simplelogica/nocms-job-offers.git'
```

And then import all the migrations:

```
rake no_cms_job_offers:install:migrations
```

Optionally, you may be interested on adding this engine routes to your app. You just have to mount the engine in your routes.rb file [just like any other standard engine][http://edgeguides.rubyonrails.org/engines.html#highlighter_95949].

```ruby
  mount NoCms::Jobs::Engine => "/job-offers/"
```

If you prefer not to mount the whole engine just take a look at the config/routes.rb file of the engine to see which controllers and actions are used.

## Which controllers and models offers?

### Models

We have two models:

  - `NoCms::JobOffers::JobOffer` with a title, a slug and a description.
  - `NoCms::JobOffers::Applicant` with a name, a position and a message. This `Applicant` model belongs to a `JobOffer`

### Controllers / Views

It has two controllers.


  - `NoCms::JobOffers::JobOffersController` that shows the index and details of a `JobOffer`.
  - `NoCms::JobOffers::ApplicantsController` that creates a new `Applicant`.

In the show view of the `JobOffer` an applicant form partial is used for the user to introduce information.

## Where is the admin interface?

`nocms-job-offers` is a gem with the minimum dependencies and that includes the admin interface.

Main idea is that this gem can be used in a project with a Rails Admin, an Active Admin or a home made admin.

As soon as we started using this gem we started our own admin interface, which is contained in another gem [nocms-admin-job-offers](https://github.com/simplelogica/nocms-admin-job-offers) and you can use it.

If your project already has another standard admin interface such as Rails Admin and you manage to embed nocms-job-offers on it, please, let us know and we will make a note here giving you full credit for the development :)




