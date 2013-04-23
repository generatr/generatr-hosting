Rails.application.config.stripe = {
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  secret_key: ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.application.config.stripe[:secret_key]
Stripe.api_version = "2013-02-13"

STRIPE_PUBLISHABLE_KEY = Rails.application.config.stripe[:publishable_key]
