FactoryGirl.define do
  factory :user do |f|
    f.sequence(:login) { |n| "admin#{n}" }
    f.sequence(:email) { |n| "senthil#{n}@sagework.com" }
    f.password 'admin'
    f.password_confirmation 'admin'
  end

  factory :category do |f|
    f.name "uncategorized"
    f.description "Uncategorized CMS category - Sagework"
  end

  factory :article do |f|
    category
    f.title "Rails_Article"
    f.body_part "Introduction to Rails"
    f.category_id  1
    f.position  1
    f.show_home_page  1
    f.enable_comment  1
  end

  factory :comment do |f|
    article
    f.name "Sagework"
    f.article_id 1
    f.url "senthil@sagework.com"
    f.comment "Test Comments on Rails by Sagework"
  end

  factory :page do |f|
    f.title "Rails_Page"
    f.menu_header "rails"
    f.page_description  "Introduction on Rails - Sagework"
    f.position  1
  end

  factory :testimonial do |f|
    f.name "Ganesh Gunasegaran"
    f.quotes "Sagework - Simplify IT"
    f.company  "Sagework Software Private Ltd"
    f.position  1
  end
end