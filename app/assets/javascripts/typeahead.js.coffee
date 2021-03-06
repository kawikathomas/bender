$(->
  $('[data-typeahead]').on 'keyup', (e)->
    $this = $(this)
    pattern = $this.val().toLowerCase()
    searchClass = $this.data("typeahead-search")
    $($this.data("typeahead")).children().each (idx)->
      if $(this).find("#{searchClass}").text().toLowerCase().search(pattern) == -1
        $(this).slideUp(200)
      else
        $(this).slideDown(200)
)