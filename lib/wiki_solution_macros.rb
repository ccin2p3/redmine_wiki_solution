module WikiSolutionMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a solution to the wiki page:\n\n" +
      " @!{{show_solution(text)}}@\n" +
      " @!{{start_solution}}@\n" +
      " @!{{end_solution}}@\n"

    macro :show_solution do |obj, args|
      o = '<script>'
      o << '$(document).ready(function() {'
      o << "  wiki_solution_show_solution(#{args[0]});"
      o << '});'
      o << '</script>'
      return o.html_safe
    end

    macro :start_solution do |obj, args|
      o = '<div class="solution">'
      return o.html_safe
    end

    macro :end_solution do |obj, args|
      o = '</div>'
      return o.html_safe
    end
 
  end
end
