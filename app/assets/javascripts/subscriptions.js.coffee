jQuery ->

  card = new AbleHosting.Models.CreditCard
  card.setPublishableKey $('meta[name="stripe-publishable-token"]').attr('content')

  subscription = $('#new_subscription')
  _.extend(subscription, Backbone.Events);

  subscription.listenTo card, 'able:creditcard:processed', ->
    $('#stripe_token').val(card.get('token'))
    $('#new_subscription').get(0).submit()

  $('#new_subscription').submit ->
    console.log $('input[type="submit"]')
    $('button[type="submit"]').attr('disabled', true).addClass('disabled')
    card.set
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    card.process()
    return false
