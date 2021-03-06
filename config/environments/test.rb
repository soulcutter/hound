ENV["HOST"] = "test.host"
ENV["SECRET_KEY_BASE"] = "test-key"
ENV["HOUND_GITHUB_USERNAME"] = "houndci"
ENV["HOUND_GITHUB_TOKEN"] = "houndgithubtoken"
ENV["ENABLE_HTTPS"] = "no"
ENV["CHANGED_FILES_THRESHOLD"] = "300"
ENV["REDISTOGO_URL"] = "http://localhost:6379"
ENV["STRIPE_API_KEY"] = "sk_test_123"
ENV["STRIPE_PUBLISHABLE_KEY"] = "pk_test_123"

Houndapp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb
  config.eager_load = false

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Configure static asset server for tests with Cache-Control for performance
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=3600"

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = true

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection    = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { host: ENV["HOST"] }

  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr
end
