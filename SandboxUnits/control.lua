--I am a comment hidden by SoftNC mwuahahhahahahahahahahaha



function showItemSearch(key)
  glob.active_search = key
	tmgui = game.player.gui.top.tm_flow
  if tmgui.tmframe.iflow.itemlist_t and tmgui.tmframe.iflow.itemlist_t.valid then
    tmgui.tmframe.iflow.itemlist_t.destroy()
  end
	tmgui.tmframe.iflow.add({ type="table", name="itemlist_t", colspan=ITEM_COLSPAN })

  local items = {}
	for _,v in pairs(game.itemprototypes) do
    if game.getlocaliseditemname(v.name):lower():find(key:lower(), 1, true) then
      table.insert(items, v.name)
    end
  end
  
  table.sort(items, function(a,b) return game.getlocaliseditemname(a) < game.getlocaliseditemname(b) end)
	for _,name in ipairs(items) do
    addItemButton(tmgui.tmframe.iflow.itemlist_t, name)
	end
  
  add_footer(tmgui.tmframe.iflow)
end
