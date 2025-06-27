# Pin npm packages by running ./bin/importmap
#
pin "application", preload: true

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

# Bootstrap and jQuery from CDN
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
pin "jquery", to: "https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"
