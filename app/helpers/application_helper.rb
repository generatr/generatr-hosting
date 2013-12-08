module ApplicationHelper

  def meta_tags

    tags = [
      { charset: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1.0" },
      { name: "description", content: "generatr hosting" },
      { name: "keywords", content: "generatr hosting" }
    ]

    html = ""

    tags.each do |data|
      html += tag("meta", data, true) + "\n"
    end

    return html.chomp.html_safe

  end

  def stripe_meta_tag
    tag "meta", name: "stripe-publishable-token",
      content: "#{STRIPE_PUBLISHABLE_KEY}"
  end

  def stripe_javascript_tag(version = "v2")
    javascript_include_tag "https://js.stripe.com/#{version}/"
  end

  def html5shim_javascript_tag
    javascript_include_tag
      "https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"
  end

  def respondjs_javascript_tag
    javascript_include_tag
      "https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"
  end

end
