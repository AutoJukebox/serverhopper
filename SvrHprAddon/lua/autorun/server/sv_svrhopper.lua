if not SERVER then return end

include("autorun/svrhoppercfg.lua")

hook.Add( "PlayerSay", "ServerHopperCMD", function( ply, text )

	

	    if ( string.sub( text, 1, 8 ) == '!servers' ) then
    
       ply:SendLua("LocalPlayer():ConCommand('OpenSvrHpr')")    end
end)
