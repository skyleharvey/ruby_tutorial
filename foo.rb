# Defines a Phrase class (inheriting from String).
class Phrase < String
  def processed_content
    self.downcase
  end

  def palindrome?
    processed_content == processed_content.reverse
  end
end

class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  def processed_content
    self.translation.downcase
  end
end
