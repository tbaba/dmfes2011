module ApplicationHelper

  def current_tab(name)
    name == current_tab_name ? "current #{name}" : name
  end

  def current_tab_name
    c, a = controller_name, action_name

    case [c, a]
    when ['welcome', 'index']
      'top'
    when ['welcome', 'about']
      'about'
    when ['welcome', 'access']
      'access'
    when ['welcome', 'news']
      'news'
    when ['news', a]
      'news'
    when ['welcome', 'artists']
      'artists'
    end
  end
end
