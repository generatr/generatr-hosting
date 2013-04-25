class AbleHosting.Models.CreditCard extends Backbone.Model

  initialize: ->
    _.bindAll @

  setPublishableKey: (key)->
    Stripe.setPublishableKey(key)

  process: ->
    Stripe.createToken(@attributes, @handleStripeResponse)

  handleStripeResponse: (status, response) ->
    if status == 200
      @set('token', response.id)
      @trigger 'able:creditcard:processed'
    else
      alert(response.error.message)
