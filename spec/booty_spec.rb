require File.dirname(__FILE__) + '/test_helper'
require 'booty'

describe Booty, '#call should except my booty call any dam time of the night!' do
  { 'this' => 'this', 'go' => 'sail', 'posted' => 'tacked to the yardarm' }.each do |key, value|
    it "and turn '#{key}' into '#{value}'" do
      Booty.call(key).include?(value).should be_true
    end
  end
end
