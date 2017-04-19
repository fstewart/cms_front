class TestController < ApplicationController

  def index
    @profile = User.second
    
    url = "https://beta.digitalmeasures.com/login/service/v4/UserSchema/USERNAME:#{@profile.username}/INDIVIDUAL-ACTIVITIES-Business"
    #doc = Nokogiri::XML(RestClient::Request.execute method: :get, url: url, user: 'ua/fac_reports', password: 'UA$51973')
    @doc = RestClient::Request.execute method: :get, url: url, user: 'ua/fac_reports', password: 'UA$51973'
    
    #@items = Hash.from_xml(doc.to_xml)

    #doc.css('book').each do |node|
    #  children = node.children

    #  @book = {
    #      "individual" => node['INDIVIDUAL-ACTIVITIES-Business'],
    #      "department" => children.css('department').inner_text,
    #      "pci" => children.css('pci').inner_text,
    #      "prefix" => children.css('prefix').inner_text
    #  }
    #  end

    end

end
