require 'redcarpet'
require 'open-uri'

class ResumeController < ApplicationController
  def index
    markdown_options = { autolink: true, space_after_headers: true }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, markdown_options)
    @markdown = markdown.render(git_resume.read)
  end

  private

  def git_resume
    open("https://raw.github.com/theverything/Jeffrey_Horn_Resume/master/markdowm_resume.md")
  end
end
