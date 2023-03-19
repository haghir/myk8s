FROM redmine:latest
RUN sed -i -e 's|Rails\.application\.initialize!|RedmineApp::Application.routes.default_scope = "/redmine"\nRails.application.initialize!\nRedmine::Utils::relative_url_root = "/redmine"|g' /usr/src/redmine/config/environment.rb && \
    mkdir /usr/src/redmine/public/redmine && \
    cd /usr/src/redmine/public/redmine && \
    ln -s ../help . && \
    ln -s ../images . && \
    ln -s ../javascripts . && \
    ln -s ../plugin_assets . && \
    ln -s ../stylesheets . && \
    ln -s ../themes . && \
    ln -s ../favicon.ico
