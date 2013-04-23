module ApplicationHelper

  def viewport_tag
    tag "meta", name: "viewport", content: "width=device-width, initial-scale=1.0"
  end

  def stripe_javascript_tag(version = "v2")
    javascript_include_tag "https://js.stripe.com/#{version}/"
  end

  def stripe_meta_tag
    tag "meta", name: "stripe-publishable-token", content: "#{STRIPE_PUBLISHABLE_KEY}"
  end

end
