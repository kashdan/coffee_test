# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
    $.ajax({
      url:'/contacts.json'
      success: (contacts) ->
        for c in contacts
          $('#contacts_table').append(contact_row(c));
    })

  contact_row = (c) ->
    out = '<tr><td>' + c.name + '</td><td>' + c.phone + '</td>' +
      '<td><a href="/contacts/' + c.id + '">Show</a></td>' +
      '<td><a href="/contacts/' + c.id + '/edit">Edit</a></td>' +
      '<td><a href="/contacts/' + c.id + '" data-confirm="Are you sure?" data-method="delete" rel="nofollow">Destroy</a></td></tr>'
