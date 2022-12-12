# nanos-synchronized-bp-calls
Simple script to have BlueprintCallEvent fully synchronized 

# Example code :
```lua
local eSK = Blueprint(Vector(), Rotator(), "skeletal-mesh::BP_Skeletal")
eSK:CallBlueprintEventSync("SetMesh", "NanosWorld/Characters/Male/SK_Male")
```

# Functions :
```lua

Blueprint:CallBlueprintEventSync(sEvent_Name, xArgs)
Blueprint:RemoveSyncEvent(sEvent_Name)

```

