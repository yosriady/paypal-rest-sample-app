## PayPal REST API Sample Rails App

![Sample App](http://i.imgur.com/LAOs4jh.png)

> This is a sample Rails application showcasing PayPal's Express Checkout and Recurring Payments using the [PayPal Ruby SDK](https://github.com/paypal/PayPal-Ruby-SDK). Written for [Orbital](http://orbital.comp.nus.edu.sg/).

[Pull Requests](https://github.com/Leventhan/paypal-rest-sample-app/pulls) are most welcome!

## Getting Started

Have Git, Ruby, and Rails installed.

```
git clone git@github.com:Leventhan/paypal-rest-sample-app.git
cd paypal-rest-sample-app
bundle
rails s
```

Go to `localhost:3000` to start the demo. :confetti:

> Note that you may want to specify your own PayPal Client ID and Secret at `config/paypal.yml` instead of using the default pair provided.