require_relative 'base_model'

class Customer < BaseModel
  attr_reader :address

  def initialize(attributes = {})
    super({id: attributes[:id], name: attributes[:name]})
    @address  = attributes[:address]
  end

  def self.build_headers
    return ['id', 'name', 'address']
  end

  def build_for_csv
    [@id, @name, @address]
  end
end
