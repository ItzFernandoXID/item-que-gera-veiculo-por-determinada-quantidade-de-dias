-- FUNCAO: --
    if itemName == "nomedocarro" then
        local source = source
        local user_id = vRP.getUserId(source)
        local identity = vRP.getUserIdentity(user_id)
    if vRP.tryGetInventoryItem(user_id,itemName,1,true,slot) then
        vRP.execute("vRP/add_vehicle",{ user_id = parseInt(user_id), vehicle = "nomedocarro", plate = vRP.generatePlateNumber(), phone = vRP.getPhone(user_id), work = tostring(false) })
        vRP.execute("vRP/set_rental_time",{ user_id = parseInt(user_id), vehicle = "nomedocarro", premiumtime = parseInt(os.time()+302460*60) })
        vCLIENT.closeInventory(source)
        TriggerClientEvent("Notify",source,"verde","A compra foi concluída com sucesso.",5000)
    end
end