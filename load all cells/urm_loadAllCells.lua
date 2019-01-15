cells = require("urm_listOfAllCells")

currentID = 1
maxID = #cells

LoadAllCells = function()
	if(currentID == 1) then
		tes3mp.SendMessage(0, "Loading all " .. maxID .. " cells!\n")
	end
	if(currentID<=maxID) then
		tes3mp.SendMessage(0, "Loading  " .. currentID .. "th " .. cells[currentID] .. "!\n")
		tes3mp.SetCell(0, cells[currentID])
        tes3mp.SendCell(0)
		currentID = currentID + 1
		tes3mp.StartTimer(tes3mp.CreateTimer("LoadAllCells",600))
	else
	  currentID = 1
	end
end

return LoadAllCells