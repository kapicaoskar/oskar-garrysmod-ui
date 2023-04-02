if SERVER then return end


local htmlFile = file.Read("index.html", "GAME")

local function CreateHTMLPanel(url, parent)
  local htmlPanel = vgui.Create("DHTML", parent)
  htmlPanel:SetSize(ScrW(), ScrH())
  htmlPanel:OpenURL(url)
  return htmlPanel
end



local function OpenHTMLMenu()
  local htmlFrame = vgui.Create("DFrame")
  htmlFrame:SetSize(ScrW(), ScrH())
  htmlFrame:SetTitle("HTML Panel")
  htmlFrame:MakePopup()
  local htmlPanel = CreateHTMLPanel("data:text/html," .. htmlFile, htmlFrame)

end


hook.Add("PopulateToolMenu", "AddHTMLMenuOption", function()
  spawnmenu.AddToolMenuOption("Utilities", "HTML Panel", "HTMLPanelMenu", "HTML Panel", "", "", OpenHTMLMenu)
end)
