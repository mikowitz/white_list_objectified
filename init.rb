require 'white_lister'
require 'white_list_helper'
ActionView::Base.send :include, WhiteListHelper
ActionController::Base.send :include, WhiteListParameterFiltering