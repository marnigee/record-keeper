class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :conditions

  def conditions
    return if Condition.all.count > 0
    preset_condition_values = [
      { name: 'Mint', description: 'Absolutely perfect in every way.' },
      { name: 'Near Mint', description: 'A nearly perfect record.' },
      { name: 'Very Good', description: 'The record shows some signs that it was played and otherwise handled.' },
      { name: 'Very Good Plus', description: 'Surface noise will be evident upon playing, especially in soft passages.' },
      { name: 'Good', description: 'Absolutely perfect in every way.' },
      { name: 'Poor', description: 'The record is cracked, badly warped, and will not play through without skipping.' }
    ]

    preset_condition_values.each do |name_desc_hash|
      condition = Condition.create(name: name_desc_hash[:name], description: name_desc_hash[:description])
      condition.save
    end

    @conditions = Condition.all
  end
end
