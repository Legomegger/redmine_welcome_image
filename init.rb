Redmine::Plugin.register :redmine_welcome_image do
  name 'Redmine Welcome Image plugin'
  author 'Askarov Alikhan'
  description 'This is a plugin for Redmine which allows you to add image to the welcome page'
  version '0.1.0'
  url 'http://example.com/path/to/plugin'
  author_url 'http://github.com/legomegger'

  # load hooks
  require_dependency 'redmine_welcome_image/hooks'
end
