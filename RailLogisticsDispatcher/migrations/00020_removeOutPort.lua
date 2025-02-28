require("__core__.lualib.util")
require "script.utils"
require "script.units"
require "script.storage"
require "script.const"
require "script.config"
require "script.org"
require "script.train"
require "script.entity"

for uid, disp in pairs(storage.disps) do
    if uid ~= disp.uid and not storage.disps[disp.uid] then
        storage.disps[uid] = nil
        log("ViiRLD: removed unused link " .. var_dump(uid) .. " for " .. var_dump(disp.uid))
    end
end

for _, disp in pairs(storage.disps) do
    if not disp.entity.valid then
        removeDisp(disp)
        log("ViiRLD: removed invalid disp " .. var_dump(disp.uid))
        helpers.write_file("invalid.disp." .. var_dump(disp.uid) .. ".lua", var_dump(disp))
    end
end

for id, disp in pairs(storage.disps) do
    if disp.outPort then
        if disp.outPort.valid then
            log("ViiRLD: removed io port entity " .. var_dump(id) .. " " .. var_dump(disp.outPort))
            disp[disp.outPort.unit_number] = nil
            disp.outPort.destroy({ raise_destroy = false })
        end
        disp.outPort = nil
        log("ViiRLD: updated dispatcher " .. var_dump(disp.uid))
        _dispUpdateOutPort(disp)
    end
    if id ~= disp.uid
            and id ~= ((disp.entity and disp.entity.valid and disp.entity.unit_number) or id)
            and id ~= ((disp.stopEntity and disp.stopEntity.valid and disp.stopEntity.unit_number) or id)
    then
        log("ViiRLD: removed io port link " .. var_dump(id))
        disp[id] = nil
    end
end