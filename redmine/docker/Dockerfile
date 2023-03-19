FROM redmine:latest
RUN cd /usr/src/redmine/config && \
    sed -i "15 i RedmineApp::Application.routes.default_scope = \"/redmine\"\n" environment.rb && \
    echo "\nRedmine::Utils::relative_url_root = \"/redmine\"" >> environment.rb && \
    mkdir /usr/src/redmine/public/redmine && \
    cd /usr/src/redmine/public/redmine && \
    ln -s ../help . && \
    ln -s ../images . && \
    ln -s ../javascripts . && \
    ln -s ../plugin_assets . && \
    ln -s ../stylesheets . && \
    ln -s ../themes . && \
    ln -s ../favicon.ico
