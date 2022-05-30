-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Zoom in", ["callback"] = "zoomin", ["accelerator"] = "="});
end

function cycle()
function zoomin()
	app.uiAction({["action"] = "ACTION_ZOOM_IN"})
end
