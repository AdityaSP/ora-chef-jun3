node.default['apache']['port']=8888

log "The value is #{node['apache']['port']}"
log "The kernel name is #{node['kernel']['name']}"
