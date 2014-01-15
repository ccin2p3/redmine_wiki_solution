require 'redmine'
class WikiSolutionApplicationHooks < Redmine::Hook::ViewListener

  render_on :view_layouts_base_html_head, :partial => 'wiki_solution/html_header'

end
