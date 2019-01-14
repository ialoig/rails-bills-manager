module IconsHelper
  FONTAWESOME_ICONS = {
    user:           'user',
    item:           'shopping-basket',
    category:       'tag',
    categories:     'tags',
    email:          'envelope',
    password:       'lock',
    logout:         'sign-out',
    login:          'sign-in',
    signup:         'user-plus',
    edit:           'pencil',
    group_creator:  'gavel',
    calendar: 		'calendar'
  }

  def input_group_addon_icon(name, options = {})
  	logger.debug "IconsHelper:input_group_addon_icon: name= #{name}, options = #{options}"
  	classes = "fa fa-"
    classes.concat name.to_s
    logger.debug "IconsHelper:input_group_addon_icon: name= #{classes}"
    content_tag :span, class: 'input-group-addon' do
      content_tag(:i, nil, options.merge(:class => classes))
    end
  end

end