# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "use_jquery", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/datatables", under: "datatables"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.2.3/dist/js/bootstrap.esm.js"
pin 'jquery', to: "https://ga.jspm.io/npm:jquery@3.6.1/dist/jquery.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.7/lib/index.js"
pin "datatables.net", to: "https://cdn.datatables.net/1.13.1/js/jquery.dataTables.mjs"