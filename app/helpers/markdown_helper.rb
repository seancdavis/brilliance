module MarkdownHelper

  def markdown(text)
    MarkItZero::Markdown.to_html(text)
  end

end
