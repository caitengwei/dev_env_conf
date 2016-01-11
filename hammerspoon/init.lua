local usbWatcher = nil

function usbDeviceCallback(data)
    -- print(data["productName"])
    if (string.match(data["productName"], "HHKB%s+Professional%s*") ~= nil) then
        -- HHKB 键盘映射自动切换
        if (data["eventType"] == "added") then
	   -- print(data["eventType"])
	   hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 0')
        elseif (data["eventType"] == "removed") then
	   hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 1')
        end
    elseif (string.match(data["productName"], "USB%s+Receiver%s*")) then
    	-- Scroll Reverser 根据无线鼠标接收器的插拔自动启动和退出
        if (data["eventType"] == "added") then
	   hs.application.launchOrFocusByBundleID('com.pilotmoon.scroll-reverser')
	elseif (data["eventType"] == "removed") then
	   apps = hs.application.applicationsForBundleID('com.pilotmoon.scroll-reverser')
	   for k, v in pairs(apps) do
	       v:kill()
	   end
	end
    end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()
