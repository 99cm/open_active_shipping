(function() {
  ($('#cancel_link')).click(function(event) {
    event.preventDefault()
    ($('.no-objects-found')).show()
    return ($('#new_product_package_link')).show()
  })

  ($('#product_packages')).html('')

}).call(this)
