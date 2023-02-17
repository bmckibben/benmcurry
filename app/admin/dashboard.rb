# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        panel 'Application' do
          span "Server Time: #{Time.now.strftime("%F %T")}" 
          br 
          span "Server Zone: #{Time.zone.name}" 
          br 
          span "Code Version: 2023.048"
          br
          span "Environment: #{Rails.env}"
          br
          span "Ruby: #{RUBY_VERSION}"
          br
          span "Rails: #{Rails.version}"
          br
          span "Server: #{Socket.gethostname}"   
          br          
          # span "Redis.info:"
          # br
          # ul do
          #   Resque.redis.info.each do |k,v|
          #     li "#{k} : #{v}"
          #   end
          # end      
        end
      end
    end      
  end

end
