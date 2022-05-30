-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Switch pen or eraser", ["callback"] = "cycle", ["accelerator"] = "<Alt>c"});
  -- app.registerUi({["menu"] = "Zoom in", ["callback"] = "zoomin", ["accelerator"] = "<Control>="});
  -- if you want to have multiple color lists you must use the app.registerUi function multiple times
  -- with different callback functions and accelerators
end

-- Predefined colors copied from LoadHandlerHelper.cpp 
-- modify to your needs 
-- local colorList = { 
--   {"black", 0x000000},  
--   {"green", 0x008000},
--   {"lightblue", 0x00c0ff}, 
--   {"lightgreen", 0x00ff00}, 
--   {"blue", 0x3333cc},      
--   {"gray", 0x808080},   
--   {"red", 0xff0000},        
--   {"magenta", 0xff00ff},
--   {"orange", 0xff8000}, 
--   {"yellow", 0xffff00},    
--   {"white", 0xffffff}
-- }

-- -- start with first color
local pen = 0 

function cycle()
  if (pen == 0) then
		app.uiAction({["action"] = "ACTION_TOOL_PEN"})
		app.uiAction({["action"] = "ACTION_TOOL_LINE_STYLE_PLAIN"})
		-- app.uiAction({["action"] = "ACTION_TOOL_DEFAULT"})
		pen = 1
  else
		-- app.uiAction({["action"] = "ACTION_TOOL_ERASER_STANDARD"})
		app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
		pen = 0
  end
  -- apply color to currently used tool and allow coloring of elements from selections
  -- app.changeToolColor({["color"] = colorList[currentColor][2], ["selection"] = true})

  -- use app.changeColor({["color"] = colorList[currentColor][2], ["tool"] = "pen""}) 
  -- instead if you only want to change pen color
  -- similarly if you want to change highlighter color or the color from another tool with color capabilities.
end

-- function zoomin()
-- 	app.uiAction({["action"] = "ACTION_ZOOM_IN"})
-- end
