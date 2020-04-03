
module RedmineWelcomeImage
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_welcome_index_right,
      partial: 'infographics/infographics'
  end
end
