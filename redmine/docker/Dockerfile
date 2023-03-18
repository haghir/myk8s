FROM redmine:latest
RUN sed -i -e 's|Rails\.application\.initialize!|RedmineApp::Application.routes.default_scope = "/redmine"\nRails.application.initialize!\nActionController::Base.relative_url_root = "/redmine"|g' /usr/src/redmine/config/environment.rb
