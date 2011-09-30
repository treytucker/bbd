class BasicEditsController < ApplicationController
  uses_tiny_mce(:options => {
    :theme => 'advanced',
    :theme_advanced_buttons1 => "bold,italic,underline,separator,bullist,numlist",
    :theme_advanced_buttons2 => "link, unlink, spellchecker",
    :theme_advanced_buttons3 => "",
    :plugins => %w{contextmenu paste spellchecker},
    :spellchecker_languages => "+English=en",
  })
  before_filter :bomb_dot_com
  
# BASIC_CONTROLLERS is defined in #{rails_root}/config/initializers/constants.rb

  BASIC_CONTROLLERS.each do |f|
    # This sets up all the needed variables for use later in the script
    
    create = "#{f.first}_create" # Defines the create method name
    edit = f.first # Defines the edit method name
    models = f.last[:model] # used for refactoring the models
    url = f.last[:url].to_sym # Used for redirections
    form = f.last[:form]
    @page = f.last[:form]
    # @widget_order = f.last[:widget_order]
    # @widgets = Widget.all
    # # unless f.last[:layout] == "full-width"
    # #   @widgets = Widget.find(:all, :conditions=>["#{f.last[:form].to_s + "_active"}=?", true], :order => f.last[:widget_order]) 
    # # end
    # This dynamically creates all the actions needed to edit/create new content based on if there is content in the DB or not.
    define_method(edit) {
      @edit_page = "true"
      @layout = f.last[:layout]
      @widgets = Widget.all
      if @content = ActiveRecord.const_get(models).last
        @title = "Edit #{f.last[:title]} Page"
      else
        @content = ActiveRecord.const_get(models).new
        @title = "Edit #{f.last[:title]} Page"
      end
    }

# This dynamically creates the action for each of the constants in constants.rb file
# It Pulls down the last record and updates it. 
# If there isn't a record, it creates a new record. 

    define_method(create) {
      @layout = f.last[:layout]
      if @content = ActiveRecord.const_get(models).last
        if @content.update_attributes(params[form])
          redirect_to url
        else
          render edit.to_sym
        end
      else 
        @content = ActiveRecord.const_get(models).new(params[form])
        if @content.valid?
          @content.save
          redirect_to url
        else
          render edit.to_sym
        end
      end
    }
  end
end