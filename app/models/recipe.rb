class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :tags
  has_many :amounts
  has_many :ingredients, through: :amounts
  has_many :reviews

  def display_difficulty
    str = "#{self.difficulty}"
    case self.difficulty
      when 1
        str << " (No sweat)"
      when 2
        str << " (Easy)"
      when 3
        str << " (Medium)"
      when 4
        str << " (Hard)"
      when 5
        str << " (Experts Only)"
    end

    str
  end
end