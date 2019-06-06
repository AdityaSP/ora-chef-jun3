svc_names = ['tomcat7', 'apache2']

svc_names.each do |svc|
  log "Stopping service #{svc}"
#  service "#{svc}" do
  service svc do
    action :stop
  end
end
