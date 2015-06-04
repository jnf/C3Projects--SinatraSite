module Kitties
  NAMES = %w(
    apple aubergin avocado brocoli cantelop carrot
    cashew cucumber garlic kiwi lemon lime papaya
    peach pickles pineappl pumking rhubarb rutebega
    thyme tomato watermel zuchinni
  )

  class Kitty
    attr_reader :name
    
    def initialize(name)
      @name = name
    end

    def image_path
      "/images/#{name}.png"
    end

    def link_path
      "/#{name}"
    end

    def self.all_the_cats
      NAMES.map { |name| Kitty.new(name) }
    end
  end
end
