require "upmark"
require "nokogiri"
require "time"
require 'sanitize'

class WordpressToJekyll

  def initialize(file, markdown_writer)
    @posts = Nokogiri::XML(file).xpath("//channel//item")
    @markdown_writer = markdown_writer
  end

  def parse
    @posts.each do |post|
      #Jekyll Post header / Front-matter
      title = get_title(post)
      date = Time.parse get_date(post)
      categories = get_categories(post)
      header = generate_front_matter(title, date, categories)

      #Blog Content
      body = get_body(post)

      # Create the markdown file
      name = get_name(post)
      content = header + "\n" + body
      @markdown_writer.write_to_file(name, date, content)
    end
  end

  private
  def get_title(post)
    post.at_xpath("title").text
  end

  def get_body(post, sanitize=true)
    body = Upmark.convert(post.at_xpath("content:encoded").text)
    if sanitize then Sanitize.clean(body); else body; end
  end

  def get_categories(post)
    categories = []
    post.xpath("category/@nicename").each do |category|
      categories << category.value
    end
    categories * " "
  end

  def get_date(post)
    post.at_xpath("wp:post_date").text
  end

  def get_name(post)
    post.at_xpath("wp:post_name").text.strip
  end

  def generate_front_matter(title, date, categories)
"---
layout: post
title:  #{title}
date:   #{date.strftime('%Y-%m-%d %H:%M:%S')}
categories: #{categories}
---"
  end

end

class MarkdownWriter

  def initialize(folder)
    @folder = folder
  end

  def write_to_file(name, date, content)
    path = @folder + '/' + create_file_name(name, date)
    file = File.open(path, 'w')
    file.write content
  end

  private
  def create_file_name(name, date)
    date.strftime("%Y-%m-%d-"+name+".markdown")
  end

end

xml_file = File.new("export.xml")
markdown_writer = MarkdownWriter.new('posts')
WordpressToJekyll.new(xml_file, markdown_writer).parse

# Export wordpress xml
# git clone
# bundle install
# ruby export.rb

