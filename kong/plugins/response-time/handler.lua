
local plugin = {
  PRIORITY = 1000,
  VERSION = "0.1",
}

keys = {} -- global table to store client host address of client and time of request made

function plugin:init_worker()

  kong.log.debug("saying hi from the 'init_worker' handler")

end --]]


function plugin:access(plugin_conf)

  kong.log.inspect(plugin_conf)   
  local request_id = kong.request.get_host() 
  keys[request_id] = os.time() -- storing host name as client id with value as the time of request made

end --]]


-- runs in the 'header_filter_by_lua_block'
function plugin:header_filter(plugin_conf)
    -- sets a custom message in header
  kong.response.set_header("Custom-Message", "this is a custom response set by respons-time plugin specially for CRED")
    -- calculate response time 
  local current_time = os.time()
  local initial_time = keys["dummyhost.com"]
  local response_time = os.difftime(current_time, initial_time)  
  kong.response.set_header("Response-Time", response_time)


end --]]

return plugin
