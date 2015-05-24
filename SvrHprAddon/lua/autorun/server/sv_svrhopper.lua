include("autorun/svrhoppercfg.lua")

hook.Add( "PlayerSay", "ServerHopperCMD", function( ply, text )

	if ( text == '!servers' ) then
    
                ply:ConCommand('OpenSvrHpr')

                return ""

        end
end)
