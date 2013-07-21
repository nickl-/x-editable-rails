# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "x-editable-rails"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jiri Kolarik"]
  s.date = "2013-07-21"
  s.description = "X-editable for Rails"
  s.email = ["jiri.kolarik@imin.cz"]
  s.files = ["lib/x-editable-rails", "lib/x-editable-rails/version.rb", "lib/x-editable-rails/view_helpers.rb", "lib/x-editable-rails.rb", "vendor/assets", "vendor/assets/images", "vendor/assets/images/editable", "vendor/assets/images/editable/clear.png", "vendor/assets/images/editable/loading.gif", "vendor/assets/javascripts", "vendor/assets/javascripts/editable", "vendor/assets/javascripts/editable/bootstrap-editable.js", "vendor/assets/javascripts/editable/jquery-editable-poshytip.js", "vendor/assets/javascripts/editable/jqueryui-editable.js", "vendor/assets/javascripts/editable/rails.js.coffee", "vendor/assets/stylesheets", "vendor/assets/stylesheets/editable", "vendor/assets/stylesheets/editable/bootstrap-editable.css", "vendor/assets/stylesheets/editable/jquery-editable.css", "vendor/assets/stylesheets/editable/jqueryui-editable.css", "LICENSE.txt", "README.md"]
  s.homepage = "https://github.com/werein/x-editable-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.5"
  s.summary = "X-editable for Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 0"])
  end
end
