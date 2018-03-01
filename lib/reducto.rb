#!/bin/env ruby
# encoding: utf-8
require "reducto/version"

module Reducto
# Your code goes here...
  def self.reduceString(string_val)
    if string_val.gsub(/[^0-9-]/, '').split('').include?('-')
      raise Exception.new("Negative number not allowed")
    else
      string_val.gsub(/[^0-9-]/, '').split('').map(&:to_i).inject {|sum, n| sum + n }
    end
  end
end
