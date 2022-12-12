function Blueprint:CallBlueprintEventSync(event_name, ...)
  local tSyncBlueprintEvents = self:GetValue("sync::events", {})

  local tBlueprintEvents = tSyncBlueprintEvents[self:GetID()]
  if not tBlueprintEvents then
    tBlueprintEvents = {}
  end
  tBlueprintEvents[event_name] = ...
  tSyncBlueprintEvents[self:GetID()] = tBlueprintEvents

  self:SetValue("sync::events", tSyncBlueprintEvents, true)
  self:CallBlueprintEvent(event_name, ...)
end

function Blueprint:RemoveSyncEvent(event_name)
  local tSyncBlueprintEvents = self:GetValue("sync::events")

  if(tSyncBlueprintEvents[self:GetID()][event_name]) then
    tSyncBlueprintEvents[self:GetID()][event_name] = nil
    self:SetValue("sync::events", tSyncBlueprintEvents, true)
  end
end