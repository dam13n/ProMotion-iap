# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "ProMotion-iap must be required within a RubyMotion project."
end

Motion::Project::App.setup do |app|
  lib_dir_path = File.dirname(File.expand_path(__FILE__))
  app.files.unshift [
    File.join(lib_dir_path, "ProMotion/iap.rb"),
    File.join(lib_dir_path, "ProMotion/product.rb"),
  ]
  app.frameworks << "StoreKit"
end
