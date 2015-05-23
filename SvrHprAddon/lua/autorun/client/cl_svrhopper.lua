if not CLIENT then return end

include ("autorun/svrhoppercfg.lua")
local ply = LocalPlayer()

function ServerHopper()
	local SHFrame = vgui.Create( "DFrame" )
	SHFrame:SetSize( 200, 270)
	SHFrame:Center()
	SHFrame:SetTitle( SvrHop.Window_Name )
	SHFrame:SetVisible( true )
	SHFrame:SetDraggable( false )
	SHFrame:ShowCloseButton( false )
	SHFrame:MakePopup()
	SHFrame.Paint = function( self, w, h )
	     draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Background_Color )
    end

    local SHButton1 = vgui.Create( "DButton", SHFrame )
    SHButton1:SetText( SvrHop.Server_1_Name )
    SHButton1:SetTextColor( SvrHop.Button_Text_Color )
    SHButton1:SetPos( 25, 25 )
    SHButton1:SetSize( 150, 25 )
    SHButton1.Paint = function( self, w, h )
           draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Button_Color )
    end

      SHButton1.DoClick = function()

        local ply = LocalPlayer()
          ply:ConCommand("connect " ..SvrHop.Server_1_IP.. "" ) 
    	
    end

    local SHButton2 = vgui.Create( "DButton", SHFrame )
    SHButton2:SetText( SvrHop.Server_2_Name )
    SHButton2:SetTextColor( SvrHop.Button_Text_Color )
    SHButton2:SetPos( 25, 65 )
    SHButton2:SetSize( 150, 25 )
    SHButton2.Paint = function( self, w, h )
           draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Button_Color )
    end

      SHButton2.DoClick = function()
        local ply = LocalPlayer()
        ply:ConCommand("connect " ..SvrHop.Server_2_IP.. "" ) 
        
    	
    end

    local SHButton3 = vgui.Create( "DButton", SHFrame )
    SHButton3:SetText( SvrHop.Server_3_Name )
    SHButton3:SetTextColor( SvrHop.Button_Text_Color )
    SHButton3:SetPos( 25, 105 )
    SHButton3:SetSize( 150, 25 )
    SHButton3.Paint = function( self, w, h )
           draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Button_Color )
    end

      SHButton3.DoClick = function()
        local ply = LocalPlayer()
        ply:ConCommand("connect " ..SvrHop.Server_3_IP.. "" ) 
    	
    end

    local SHButton4 = vgui.Create( "DButton", SHFrame )
    SHButton4:SetText( SvrHop.Server_4_Name )
    SHButton4:SetTextColor( SvrHop.Button_Text_Color )
    SHButton4:SetPos( 25, 145 )
    SHButton4:SetSize( 150, 25 )
    SHButton4.Paint = function( self, w, h )
           draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Button_Color )
    end

      SHButton4.DoClick = function()
        local ply = LocalPlayer()
        ply:ConCommand("connect " ..SvrHop.Server_4_IP.. "" ) 
    	
    end

    local SHButton5 = vgui.Create( "DButton", SHFrame )
    SHButton5:SetText( "Close" ) 
    SHButton5:SetTextColor( SvrHop.Button_Text_Color )
    SHButton5:SetPos( 45, 220 )
    SHButton5:SetSize( 110, 25 )
    SHButton5.Paint = function( self, w, h )
           draw.RoundedBox( 0, 0, 0, w, h, SvrHop.Button_Color )
    end

      SHButton5.DoClick = function()
        SHFrame:Close()
        
    end

    

end


concommand.Add( "OpenSvrHpr", ServerHopper )