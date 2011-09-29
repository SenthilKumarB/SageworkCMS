module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    when /^the login page$/
      '/login'
    
    when /^administration page$/
      administration_path

    when /^article create page$/
      '/article/new'

    when /^add new page$/
      '/page/new'

    when /^category new page$/
      '/category/new'

    when /^contact page$/
      '/static/contact'

    when /^white paper new page$/
      '/white_paper/new'

    when /^testimonial new page$/
      '/testimonial/new'

    when /^the about us page$/
      '/static/about'

    when /^the services page$/
      '/static/services'

    when /^the news page$/
      '/article/news'

    when /^the site map page$/
      '/static/site_map'

    when /^article view page$/
      '/article/list'

    when /^category view page$/
      '/category/list'

    when /^page view$/
      '/page/list'

    when /^testimonial view page$/
      '/testimonial/list'

    when /^site map page$/
      '/static/site_map'
       

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
