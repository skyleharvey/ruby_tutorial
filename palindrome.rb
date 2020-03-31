class Phrase < String
  def processor(content)
    content.downcase
  end

  def process_content
    processor(self)
  end

  def palindrome?
    process_content == process_content.reverse
  end
end

class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize (content, translation)
    super(content)
    @translation = translation
  end

  def process_content
    processor(translation)
  end
end
