Blueprint.Subscribe("Spawn", function( eBlueprint )
  local tSyncBlueprintCalls = eBlueprint:GetValue("sync::events")
  if(tSyncBlueprintCalls) then
    for k,v in pairs(tSyncBlueprintCalls[ eBlueprint:GetID() ]) do
      eBlueprint:CallBlueprintEvent(k, v)
    end
  end
end)