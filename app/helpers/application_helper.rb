module ApplicationHelper
    include Pagy::Frontend
    require 'redcarpet'

    def markdown(content)
        return '' unless content.present?
        @options ||= {
            autolink: true,
            space_after_headers: true,
            fenced_code_blocks: true,
            underline: true,
            highlight: true,
            footnotes: true,
            tables: true,
            link_attributes: {rel: 'nofollow', target: "_blank"}
        }
        @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, @options)
        @markdown.render(content).html_safe
      end
      
end