-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Zoom in", ["callback"] = "zoomin", ["accelerator"] = "equal"});
  app.registerUi({["menu"] = "Zoom in", ["callback"] = "zoomin", ["accelerator"] = "<Control>equal"});
  app.registerUi({["menu"] = "Zoom out", ["callback"] = "zoomout", ["accelerator"] = "minus"});
  app.registerUi({["menu"] = "Bestf fit", ["callback"] = "bestfit", ["accelerator"] = "f"});
end

function zoomin()
	app.uiAction({["action"] = "ACTION_ZOOM_IN"})
end

function zoomout()
	app.uiAction({["action"] = "ACTION_ZOOM_OUT"})
end

function bestfit()
	app.uiAction({["action"] = "ACTION_ZOOM_FIT"})
end
