require 'white_lister'
require 'white_list_helper'
require 'white_list_parameter_filtering'
ActionView::Base.send :include, WhiteListHelper
ActionController::Base.send :include, WhiteListParameterFiltering