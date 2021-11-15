nacbind1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.NacBind))
    {
        self iPrintLn("Nac bind activated, press [{+Actionslot 1}] to nac");
        self.NacBind = true;
        while(isDefined(self.NacBind))
        {
            if(self ActionSlotOneButtonPressed() && self.menu.open == false)
            {
                if (self GetStance() != "prone"  && !self meleebuttonpressed())
                {
                    doJKKYNac();   
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.NacBind)) 
    { 
    self iPrintLn("Nac bind ^1deactivated");
    self.NacBind = undefined; 
    } 
}

nacbind2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.NacBind))
    {
        self iPrintLn("Nac bind activated, press [{+Actionslot 2}] to nac");
        self.NacBind = true;
        while(isDefined(self.NacBind))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                if (self GetStance() != "prone"  && !self meleebuttonpressed())
                {
                    doJKKYNac();   
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.NacBind)) 
    { 
    self iPrintLn("Nac bind ^1deactivated");
    self.NacBind = undefined; 
    } 
}

nacbind3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.NacBind))
    {
        self iPrintLn("Nac bind activated, press [{+Actionslot 3}] to nac");
        self.NacBind = true;
        while(isDefined(self.NacBind))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                if (self GetStance() != "prone"  && !self meleebuttonpressed())
                {
                    doJKKYNac();   
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.NacBind)) 
    { 
    self iPrintLn("Nac bind ^1deactivated");
    self.NacBind = undefined; 
    } 
}

nacbind4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.NacBind))
    {
        self iPrintLn("Nac bind activated, press [{+Actionslot 4}] to nac");
        self.NacBind = true;
        while(isDefined(self.NacBind))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                if (self GetStance() != "prone"  && !self meleebuttonpressed())
                {
                    doJKKYNac();   
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.NacBind)) 
    { 
    self iPrintLn("Nac bind ^1deactivated");
    self.NacBind = undefined; 
    } 
}

NacWeap1()
{
    self.wep1 = self getCurrentWeapon();
    self iPrintln("Weapon 1 Selected: ^2"+self.wep1);
}

NacWeap2()
{
    self.wep2 = self getCurrentWeapon();
    self iPrintln("Weapon 2 Selected: ^2"+self.wep2);
}


doJKKYNac()
{
    if(self.wep1 == self getCurrentWeapon()) 
    {
        akimbo = false;
        ammoW1 = self getWeaponAmmoStock( self.wep1 );
        ammoCW1 = self getWeaponAmmoClip( self.wep1 );
        self takeWeapon(self.wep1);
        self switchToWeapon(self.wep2);
        while(!(self getCurrentWeapon() == self.wep2))
        if (self isHost())
        {
            wait .1;
        }
        else
        {
            wait .15;
        }
        self giveWeapon(self.wep1);
        self setweaponammoclip( self.wep1, ammoCW1 );
        self setweaponammostock( self.wep1, ammoW1 );
    }
    else if(self.wep2 == self getCurrentWeapon()) 
    {
        ammoW2 = self getWeaponAmmoStock( self.wep2 );
        ammoCW2 = self getWeaponAmmoClip( self.wep2 );
        self takeWeapon(self.wep2);
        self switchToWeapon(self.wep1);
        while(!(self getCurrentWeapon() == self.wep1))
        if (self isHost())
        {
            wait .1;
        }
        else
        {
            wait .15;
        }
        self giveWeapon(self.wep2);
        self setweaponammoclip( self.wep2, ammoCW2 );
        self setweaponammostock( self.wep2, ammoW2 );
    } 
}


SnacWeap1()
{
    self.snacwep1 = self getCurrentWeapon();
    self iPrintln("Selected: ^2"+self.snacwep1);
}

SnacWeap2()
{
    self.snacwep2 = self getCurrentWeapon();
    self iPrintln("Selected: ^2"+self.snacwep2);
}

snacbind1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.SnacBind))
    {
        self iPrintLn("Skree bind activated, press [{+Actionslot 1}] to skree");
        self.SnacBind = true;
        while(isDefined(self.SnacBind))
        {
            if(self ActionSlotOneButtonPressed() && self.menu.open == false)
            {
                if(self getCurrentWeapon() == self.snacwep1)
                {
                    self SetSpawnWeapon( self.snacwep2 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep1 );
                }
                else if(self getCurrentWeapon() == self.snacwep2)
                {
                    self SetSpawnWeapon( self.snacwep1 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep2 );
                } 
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.SnacBind)) 
    { 
        self iPrintLn("Skree bind ^1deactivated");
        self.SnacBind = undefined; 
    } 
}

snacbind2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.SnacBind))
    {
        self iPrintLn("Skree bind activated, press [{+Actionslot 2}] to skree");
        self.SnacBind = true;
        while(isDefined(self.SnacBind))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                if(self getCurrentWeapon() == self.snacwep1)
                {
                    self SetSpawnWeapon( self.snacwep2 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep1 );
                }
                else if(self getCurrentWeapon() == self.snacwep2)
                {
                    self SetSpawnWeapon( self.snacwep1 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep2 );
                } 
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.SnacBind)) 
    { 
        self iPrintLn("Skree bind ^1deactivated");
        self.SnacBind = undefined; 
    } 
}

snacbind3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.SnacBind))
    {
        self iPrintLn("Skree bind activated, press [{+Actionslot 3}] to skree");
        self.SnacBind = true;
        while(isDefined(self.SnacBind))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                if(self getCurrentWeapon() == self.snacwep1)
                {
                    self SetSpawnWeapon( self.snacwep2 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep1 );
                }
                else if(self getCurrentWeapon() == self.snacwep2)
                {
                    self SetSpawnWeapon( self.snacwep1 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep2 );
                } 
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.SnacBind)) 
    { 
        self iPrintLn("Skree bind ^1deactivated");
        self.SnacBind = undefined; 
    } 
}

snacbind4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.SnacBind))
    {
        self iPrintLn("Skree bind activated, press [{+Actionslot 4}] to skree");
        self.SnacBind = true;
        while(isDefined(self.SnacBind))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                if(self getCurrentWeapon() == self.snacwep1)
                {
                    self SetSpawnWeapon( self.snacwep2 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep1 );
                }
                else if(self getCurrentWeapon() == self.snacwep2)
                {
                    self SetSpawnWeapon( self.snacwep1 );
                    wait .12;
                    self SetSpawnWeapon( self.snacwep2 );
                } 
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.SnacBind)) 
    { 
        self iPrintLn("Skree bind ^1deactivated");
        self.SnacBind = undefined; 
    } 
}

ChangeClass1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 1}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClass();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 2}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClass();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 3}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClass();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 4}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClass();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

doChangeClass()
{
    if(self.cClass == 0)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    else if(self.cClass == 1)
    {
        self.cClass = 2;
        self notify( "menuresponse", "changeclass", "custom1" );
    }
    else if(self.cClass == 2)
    {
        self.cClass = 3;
        self notify( "menuresponse", "changeclass", "custom2" );
    }
    else if(self.cClass == 3)
    {
        self.cClass = 4;
        self notify( "menuresponse", "changeclass", "custom3" );
    }
    else if(self.cClass == 4)
    {
        self.cClass = 5;
        self notify( "menuresponse", "changeclass", "custom4" );
    }
    else if(self.cClass == 5)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    wait .05;
    self.nova = self getCurrentweapon();
    ammoW = self getWeaponAmmoStock( self.nova );
    ammoCW = self getWeaponAmmoClip( self.nova );
    self setweaponammostock( self.nova, ammoW );
    self setweaponammoclip( self.nova, ammoCW );
}

ChangeClass1TAO()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 1}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassTAO();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass2TAO()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 2}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassTAO();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass3TAO()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 3}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassTAO();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass4TAO()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 4}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassTAO();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

doChangeClassTAO()
{
    if(self.cClass == 0)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    else if(self.cClass == 1)
    {
        self.cClass = 2;
        self notify( "menuresponse", "changeclass", "custom1" );
    }
    else if(self.cClass == 2)
    {
        self.cClass = 3;
        self notify( "menuresponse", "changeclass", "custom2" );
    }
    else if(self.cClass == 3)
    {
        self.cClass = 4;
        self notify( "menuresponse", "changeclass", "custom3" );
    }
    else if(self.cClass == 4)
    {
        self.cClass = 5;
        self notify( "menuresponse", "changeclass", "custom4" );
    }
    else if(self.cClass == 5)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    wait .05;
    self.nova = self getCurrentweapon();
    ammoW = self getWeaponAmmoStock( self.nova );
    ammoCW = self getWeaponAmmoClip( self.nova );
    self setweaponammostock( self.nova, ammoW );
    self setweaponammoclip( self.nova, ammoCW - 1);
}

ChangeClass1OBL()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 1}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassOBL();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass2OBL()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 2}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassOBL();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass3OBL()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 3}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassOBL();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

ChangeClass4OBL()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 4}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doChangeClassOBL();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

doChangeClassOBL()
{
    if(self.cClass == 0)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    else if(self.cClass == 1)
    {
        self.cClass = 2;
        self notify( "menuresponse", "changeclass", "custom1" );
    }
    else if(self.cClass == 2)
    {
        self.cClass = 3;
        self notify( "menuresponse", "changeclass", "custom2" );
    }
    else if(self.cClass == 3)
    {
        self.cClass = 4;
        self notify( "menuresponse", "changeclass", "custom3" );
    }
    else if(self.cClass == 4)
    {
        self.cClass = 5;
        self notify( "menuresponse", "changeclass", "custom4" );
    }
    else if(self.cClass == 5)
    {
        self.cClass = 1;
        self notify( "menuresponse", "changeclass", "custom0" );
    }
    wait .05;
    self.nova = self getCurrentweapon();
    ammoW = self getWeaponAmmoStock( self.nova );
    ammoCW = self getWeaponAmmoClip( self.nova );
    self setweaponammostock( self.nova, ammoW );
    self setweaponammoclip( self.nova, 1);  
}


CANChangeClass1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 1}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread changeclasscanbind();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

CANChangeClass2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 2}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread changeclasscanbind();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

CANChangeClass3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 3}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread changeclasscanbind();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

CANChangeClass4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ChangeClass))
    {
        self iPrintLn("Change class bind activated, press [{+Actionslot 4}] to change class");
        self.ChangeClass = true;
        while(isDefined(self.ChangeClass))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread changeclasscanbind();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.ChangeClass)) 
    { 
        self iPrintLn("Change class bind ^1deactivated");
        self.ChangeClass = undefined; 
    } 
}

changeclasscanbind()
{
    self thread doChangeClass();
    waittillframeend;
    self.nova = self getCurrentweapon();
    ammoW     = self getWeaponAmmoStock( self.nova );
    ammoCW    = self getWeaponAmmoClip( self.nova );
    self TakeWeapon(self.nova);
    waittillframeend;
    self GiveWeapon( self.nova);
    self setweaponammostock( self.nova, ammoW );
    self setweaponammoclip( self.nova, ammoCW);
}

ChangeBarColor(color)
{
    if(color == "blue")
    {
        self.BarColor = (0, 0, 255);
    }
    else if(color == "red")
    {
        self.BarColor = (255, 0, 0);
    }
    else if(color == "yellow")
    {
        self.BarColor = (255, 255, 0);
    }
    else if(color == "green")
    {
        self.BarColor = (0, 255, 0);
    }
    else if(color == "cyan")
    {
        self.BarColor = (0, 255, 255);
    }
    else if(color == "pink")
    {
        self.BarColor = (255, 0, 255);
    }
    else if(color == "black")
    {
        self.BarColor = (0, 0, 0);
    }
    else if(color == "normal")
    {
        self.BarColor = (255, 255, 255);
    }
    wait 0.1;
    self iprintln("OMA bar color set to ^2" + color);
}

OMAWeapon(Weap)
{
    if(Weap == "Bomb")
    {
        self.OMAWeapon = "briefcase_bomb_mp";
    }
    else if(Weap == "Default")
    {
        self.OMAWeapon = "defaultweapon_mp";
    }
    else if(Weap == "Claymore")
    {
        self.OMAWeapon = "claymore_mp";
    }
    else if(Weap == "Black")
    {
        self.OMAWeapon = "pda_hack_mp";
    }
    else if(Weap == "CSGO")
    {
        self.OMAWeapon = "knife_mp";
    }
    else if(Weap == "Ipad")
    {
        self.OMAWeapon = "killstreak_remote_turret_mp";
    }
    else if(Weap == "Killer")
    {
        self.OMAWeapon = "missile_drone_mp";
    }
    else if(Weap == "Death")
    {
        self.OMAWeapon = "minigun_mp";
    }
    else if(Weap == "M27")
    {
        self.OMAWeapon = "hk416_mp";
    }
    else if(Weap == "Peacekeeper")
    {
        self.OMAWeapon = "peacekeeper_mp";
    }
    else if(Weap == "S12")
    {
        self.OMAWeapon = "saiga12_mp";
    }
    else if(Weap == "Launcher")
    {
        self.OMAWeapon = "fhj18_mp";
    }
    else if(Weap == "Knife")
    {
        self.OMAWeapon = "knife_held_mp";
    }
    else if(Weap == "Ballistic")
    {
        self.OMAWeapon = "knife_ballistic_mp";
    }
    else if(Weap == "Executioner")
    {
        self.OMAWeapon = "judge_dw_mp";
    }
    else if(Weap == "Riot")
    {
        self.OMAWeapon = "riotshield_mp";
    }
    else if(Weap == "War")
    {
        self.OMAWeapon = "m32_mp";
    }
    wait 0.1;
    self iprintln("OMA weapon changed to ^2" + self.OMAWeapon);
}

OneManArmy1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 1}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread OMA();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmy2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 2}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread OMA();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmy3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 3}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread OMA();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmy4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 4}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread OMA();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OMA()
{
    currentWeapon = self getcurrentweapon();
    self giveWeapon(self.OMAWeapon);
    shaxMODEL = spawn( "script_model", self.origin );
    self PlayerLinkToDelta(shaxMODEL);
    self switchToWeapon(self.OMAWeapon);
    wait 0.1;
    self thread ChangingKit();
    wait 1.92;
    self takeweapon(self.OMAWeapon);
    self unlink();
    self switchToWeapon(currentWeapon);
}

ChangingKit()
{
    self endon("death");
    self.ChangingKit = createSecondaryProgressBar();
    self.KitText = createSecondaryProgressBarText();
    for(i=0;i<36;i++)
    {
        self.ChangingKit updateBar(i / 35);
        self.KitText setText("Capturing Crate");
        self.ChangingKit setPoint("CENTER", "CENTER", 0, -85);
        self.KitText setPoint("CENTER", "CENTER", 0, -100);
        self.ChangingKit.color     = (0, 0, 0);
        self.ChangingKit.bar.color = self.BarColor;
        self.ChangingKit.alpha     = 0.63;
        wait .001;
    }
    self.ChangingKit destroyElem();
    self.KitText destroyElem();
}

OneManArmyDouble1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 1}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread OMADouble();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmyDouble2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 2}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread OMADouble();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmyDouble3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 3}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread OMADouble();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OneManArmyDouble4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.OMA))
    {
        self iPrintLn("One man army bind activated, press [{+Actionslot 4}]");
        self.OMA = true;
        while(isDefined(self.OMA))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread OMADouble();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.OMA)) 
    { 
        self iPrintLn("One man army bind ^1deactivated");
        self.OMA = undefined; 
    } 
}

OMADouble()
{
    currentWeapon = self getcurrentweapon();
    shaxMODEL = spawn( "script_model", self.origin );
    self PlayerLinkToDelta(shaxMODEL);
    self giveWeapon(self.OMAWeapon);
    self switchToWeapon(self.OMAWeapon);
    wait 0.1;
    self thread ChangingKit2();
    wait 1.92;
    self takeweapon(self.OMAWeapon);
    self unlink();
    self switchToWeapon(currentWeapon);
}

ChangingKit2()
{
    self endon("death");
    self.ChangingKit  = createSecondaryProgressBar();
    self.KitText      = createSecondaryProgressBarText();
    self.ChangingKit2 = createSecondaryProgressBar();
    self.KitText2     = createSecondaryProgressBarText();
    for(i=0;i<36;i++)
    {
        self.ChangingKit updateBar(i / 35);
        self.KitText setText("Capturing Crate");
        self.ChangingKit setPoint("CENTER", "CENTER", 0, -85);
        self.KitText setPoint("CENTER", "CENTER", 0, -100);
        self.ChangingKit.color     = (0, 0, 0);
        self.ChangingKit.bar.color = self.BarColor;
        self.ChangingKit.alpha     = 0.63;
        // 2nd one
        self.ChangingKit2 updateBar(i / 35);
        self.KitText2 setText("Capturing Crate");
        self.ChangingKit2 setPoint("CENTER", "CENTER", 0, -50);
        self.KitText2 setPoint("CENTER", "CENTER", 0, -65);
        self.ChangingKit2.color     = (0, 0, 0);
        self.ChangingKit2.bar.color = self.BarColor;
        self.ChangingKit2.alpha     = 0.63;
        wait .001;
    }
    self.ChangingKit destroyElem();
    self.KitText destroyElem();
    self.ChangingKit2 destroyElem();
    self.KitText2 destroyElem();
}

doThirdPersonOMA()
{
    currentWeapon = self getcurrentweapon();
    shaxMODEL = spawn( "script_model", self.origin );
    self PlayerLinkToDelta(shaxMODEL);
    self setclientthirdperson(1);
    self giveWeapon(self.OMAWeapon);
    self switchToWeapon(self.OMAWeapon);
    wait 0.1;
    self thread ChangingKit2();
    wait 1.92;
    self setclientthirdperson(0);
    self takeweapon(self.OMAWeapon);
    self unlink();
    self switchToWeapon(currentWeapon);
    
}

ThirdPersonWithOMA1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person OMA bind activated, press [{+Actionslot 1}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPersonOMA();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPersonWithOMA2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person OMA bind activated, press [{+Actionslot 2}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPersonOMA();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPersonWithOMA3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person OMA bind activated, press [{+Actionslot 3}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPersonOMA();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPersonWithOMA4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person OMA bind activated, press [{+Actionslot 4}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPersonOMA();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

InstaWeap1()
{
    if(!isDefined(self.instaWeap1) )
    {
        self.instaWeap1 = self getcurrentweapon();
        self iPrintLn("Weapon 1 Selected: ^2" + self.instaWeap1);
    }   
}

InstaWeap2()
{
    if(!isDefined(self.instaWeap2) )
    {
        self.instaWeap2 = self getcurrentweapon();
        self iPrintLn("Weapon 2 Selected: ^2" + self.instaWeap2);
    }
}

Instaswap1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Instant))
    {
        self iPrintLn("Instaswap bind activated, press [{+Actionslot 1}] to Instaswap");
        self.Instant = true;
        while(isDefined(self.Instant))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doInsta();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Instant)) 
    { 
        self iPrintLn("Instaswap bind ^1deactivated");
        self.Instant = undefined; 
    } 
}

Instaswap2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Instant))
    {
        self iPrintLn("Instaswap bind activated, press [{+Actionslot 2}] to Instaswap");
        self.Instant = true;
        while(isDefined(self.Instant))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doInsta();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Instant)) 
    { 
        self iPrintLn("Instaswap bind ^1deactivated");
        self.Instant = undefined; 
    } 
}

Instaswap3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Instant))
    {
        self iPrintLn("Instaswap bind activated, press [{+Actionslot 3}] to Instaswap");
        self.Instant = true;
        while(isDefined(self.Instant))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doInsta();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Instant)) 
    { 
        self iPrintLn("Instaswap bind ^1deactivated");
        self.Instant = undefined; 
    } 
}

Instaswap4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Instant))
    {
        self iPrintLn("Instaswap bind activated, press [{+Actionslot 4}] to Instaswap");
        self.Instant = true;
        while(isDefined(self.Instant))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doInsta();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Instant)) 
    { 
        self iPrintLn("Instaswap bind ^1deactivated");
        self.Instant = undefined; 
    } 
}

doInsta() 
{
    self endon("disconnect");       
    if(self getcurrentweapon() == self.instaWeap1) 
    {
        self giveWeapon(self.instaWeap2);
        self setSpawnWeapon(self.instaWeap2);

    }
    else if(self getcurrentweapon() == self.instaWeap2) 
    {
        self giveWeapon(self.instaWeap1);
        self setSpawnWeapon(self.instaWeap1);
    }
}

CanswapBind1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.canswapBind))
    {
        self iPrintLn("Canswap activated, press [{+Actionslot 1}] to Canswap");
        self.canswapBind = true;
        while(isDefined(self.canswapBind))
        {
            if(self ActionSlotOneButtonPressed() && self.menu.open == false)
            {
                self thread CanswapFunction();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.canswapBind)) 
    { 
    self iPrintLn("Canswap bind ^1deactivated");
    self.canswapBind = undefined; 
    } 
}

CanswapBind2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.canswapBind))
    {
        self iPrintLn("Canswap activated, press [{+Actionslot 2}] to Canswap");
        self.canswapBind = true;
        while(isDefined(self.canswapBind))
        {
            if(self ActionSlotTwoButtonPressed() && self.menu.open == false)
            {
                self thread CanswapFunction();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.canswapBind)) 
    { 
    self iPrintLn("Canswap bind ^1deactivated");
    self.canswapBind = undefined; 
    } 
}

CanswapBind3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.canswapBind))
    {
        self iPrintLn("Canswap activated, press [{+Actionslot 3}] to Canswap");
        self.canswapBind = true;
        while(isDefined(self.canswapBind))
        {
            if(self ActionSlotThreeButtonPressed() && self.menu.open == false)
            {
                self thread CanswapFunction();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.canswapBind)) 
    { 
    self iPrintLn("Canswap bind ^1deactivated");
    self.canswapBind = undefined; 
    } 
}

CanswapBind4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.canswapBind))
    {
        self iPrintLn("Canswap activated, press [{+Actionslot 4}] to Canswap");
        self.canswapBind = true;
        while(isDefined(self.canswapBind))
        {
            if(self ActionSlotFourButtonPressed() && self.menu.open == false)
            {
                self thread CanswapFunction();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.canswapBind)) 
    { 
    self iPrintLn("Canswap bind ^1deactivated");
    self.canswapBind = undefined; 
    } 
}

CanswapFunction()
{
    
    canswapWeap = self getCurrentWeapon();
    self takeWeapon(canswapWeap);
    self giveweapon(canswapWeap);
}

Bounce1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bouncing))
    {
        self iPrintLn("Bounce bind activated, press [{+Actionslot 1}] to bounce");
        self.Bouncing = true;
        while(isDefined(self.Bouncing))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doBounce();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bouncing)) 
    { 
        self iPrintLn("bounce bind ^1deactivated");
        self.Bouncing = undefined; 
    } 
}

Bounce2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bouncing))
    {
        self iPrintLn("Bounce bind activated, press [{+Actionslot 2}] to bounce");
        self.Bouncing = true;
        while(isDefined(self.Bouncing))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doBounce();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bouncing)) 
    { 
        self iPrintLn("bounce bind ^1deactivated");
        self.Bouncing = undefined; 
    } 
}

Bounce3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bouncing))
    {
        self iPrintLn("Bounce bind activated, press [{+Actionslot 3}] to bounce");
        self.Bouncing = true;
        while(isDefined(self.Bouncing))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doBounce();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bouncing)) 
    { 
        self iPrintLn("bounce bind ^1deactivated");
        self.Bouncing = undefined; 
    } 
}

Bounce4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bouncing))
    {
        self iPrintLn("Bounce bind activated, press [{+Actionslot 4}] to bounce");
        self.Bouncing = true;
        while(isDefined(self.Bouncing))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doBounce();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bouncing)) 
    { 
        self iPrintLn("bounce bind ^1deactivated");
        self.Bouncing = undefined; 
    } 
}

doBounce()
{
    self setvelocity(self getvelocity() + (0,0,999));
}

Flicker1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.flicker))
    {
        self iPrintLn("flicker activated, press [{+Actionslot 1}] to flicker");
        self.flicker = true;
        while(isDefined(self.flicker))
        {
            if(self ActionSlotOneButtonPressed() && self.menu.open == false)
            {
                keepBombWeap1 = self getCurrentWeapon();
                self giveWeapon(self.flickerWeapon);
                self setspawnweapon(self.flickerWeapon);
                wait 0.1;
                self takeWeapon(self.flickerWeapon);
                self setspawnweapon(keepBombWeap1); 
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.flicker)) 
    { 
    self iPrintLn("flicker bind ^1deactivated");
    self.flicker = undefined; 
    } 
}

Flicker2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.flicker))
    {
        self iPrintLn("flicker activated, press [{+Actionslot 2}] to flicker");
        self.flicker = true;
        while(isDefined(self.flicker))
        {
            if(self ActionSlotTwoButtonPressed() && self.menu.open == false)
            {
                keepBombWeap1 = self getCurrentWeapon();
                self giveWeapon(self.flickerWeapon);
                self setspawnweapon(self.flickerWeapon);
                wait 0.1;
                self takeWeapon(self.flickerWeapon);
                self setspawnweapon(keepBombWeap1);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.flicker)) 
    { 
    self iPrintLn("flicker bind ^1deactivated");
    self.flicker = undefined; 
    } 
}

Flicker3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.flicker))
    {
        self iPrintLn("flicker activated, press [{+Actionslot 3}] to flicker");
        self.flicker = true;
        while(isDefined(self.flicker))
        {
            if(self ActionSlotThreeButtonPressed() && self.menu.open == false)
            {
                keepBombWeap1 = self getCurrentWeapon();
                self giveWeapon(self.flickerWeapon);
                self setspawnweapon(self.flickerWeapon);
                wait 0.1;
                self takeWeapon(self.flickerWeapon);
                self setspawnweapon(keepBombWeap1);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.flicker)) 
    { 
    self iPrintLn("flicker bind ^1deactivated");
    self.flicker = undefined; 
    } 
}

Flicker4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.flicker))
    {
        self iPrintLn("flicker activated, press [{+Actionslot 4}] to flicker");
        self.flicker = true;
        while(isDefined(self.flicker))
        {
            if(self ActionSlotFourButtonPressed() && self.menu.open == false)
            {
                keepBombWeap1 = self getCurrentWeapon();
                self giveWeapon(self.flickerWeapon);
                self setspawnweapon(self.flickerWeapon);
                wait 0.1;
                self takeWeapon(self.flickerWeapon);
                self setspawnweapon(keepBombWeap1);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.flicker)) 
    { 
    self iPrintLn("flicker bind ^1deactivated");
    self.flicker = undefined; 
    } 
}

setFlickerWeapon(gun)
{
    self iprintln(gun + " has been set as flicker weapon");
    self.flickerWeapon = gun;
}


savebolt()
{
    self endon("disconnect");
    self iPrintLn("^2Bolt Movement Position 1 Saved");
    self.pers["loc"] = true;
    self.pers["saveposbolt"] = self.origin;
}

savebolt2()
{
    self iPrintLn("^2Bolt Movement Position 2 Saved");
    self.pers["loc"] = true;
    self.pers["saveposbolt2"] = self.origin;
}

savebolt3()
{
    self iPrintLn("^2Bolt Movement Position 3 Saved");
    self.pers["loc"] = true;
    self.pers["saveposbolt3"] = self.origin;
}

savebolt4()
{
    self iPrintLn("^2Bolt Movement Position 4 Saved");
    self.pers["loc"] = true;
    self.pers["saveposbolt4"] = self.origin;
}

changeBoltSpeed(time)
{
    self.boltspeed = time;
    self iprintln("Bolt movement speed is set to " + time);
}

boltmovement1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 1}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"], self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

boltmovement2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 2}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"], self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

boltmovement3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 3}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"], self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

boltmovement4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 4}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"], self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

doubleboltmovement1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 1}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

doubleboltmovement2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 2}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

doubleboltmovement3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 3}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

doubleboltmovement4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 4}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

tripleboltmovement1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 1}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

tripleboltmovement2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 2}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

tripleboltmovement3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 3}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

tripleboltmovement4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 4}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

quadboltmovement1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 1}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt4"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

quadboltmovement2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 2}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt4"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

quadboltmovement3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 3}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt4"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

quadboltmovement4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Bolt))
    {
        self iPrintLn("Bolt movement bind activated, press [{+Actionslot 4}] to start");
        self.Bolt = true;
        while(isDefined(self.Bolt))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                scriptRide = spawn("script_model", self.origin);
                scriptRide EnableLinkTo();
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt2"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt3"],self.boltspeed);
                wait self.boltspeed;
                self PlayerLinkToDelta(scriptRide);
                scriptRide MoveTo(self.pers["saveposbolt4"],self.boltspeed);
                wait self.boltspeed;
                self Unlink();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.Bolt)) 
    { 
        self iPrintLn("Bolt movement bind ^1deactivated");
        self.Bolt = undefined; 
    } 
}

Repeater1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.repeaterBind))
    {
        self iPrintLn("Repeater bind activated, press [{+Actionslot 1}] to Repeater");
        self.repeaterBind = true;
        while(isDefined(self.repeaterBind))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self.Repeaterweap = self getCurrentWeapon();
                self setSpawnWeapon(self.Repeaterweap);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.repeaterBind)) 
    { 
        self iPrintLn("Repeater bind ^1deactivated");
        self.repeaterBind = undefined; 
    } 
}

Repeater2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.repeaterBind))
    {
        self iPrintLn("Repeater bind activated, press [{+Actionslot 2}] to Repeater");
        self.repeaterBind = true;
        while(isDefined(self.repeaterBind))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self.Repeaterweap = self getCurrentWeapon();
                self setSpawnWeapon(self.Repeaterweap);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.repeaterBind)) 
    { 
        self iPrintLn("Repeater bind ^1deactivated");
        self.repeaterBind = undefined; 
    } 
}

Repeater3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.repeaterBind))
    {
        self iPrintLn("Repeater bind activated, press [{+Actionslot 3}] to Repeater");
        self.repeaterBind = true;
        while(isDefined(self.repeaterBind))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self.Repeaterweap = self getCurrentWeapon();
                self setSpawnWeapon(self.Repeaterweap);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.repeaterBind)) 
    { 
        self iPrintLn("Repeater bind ^1deactivated");
        self.repeaterBind = undefined; 
    } 
}

Repeater4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.repeaterBind))
    {
        self iPrintLn("Repeater bind activated, press [{+Actionslot 4}] to Repeater");
        self.repeaterBind = true;
        while(isDefined(self.repeaterBind))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self.Repeaterweap = self getCurrentWeapon();
                self setSpawnWeapon(self.Repeaterweap);
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.repeaterBind)) 
    { 
        self iPrintLn("Repeater bind ^1deactivated");
        self.repeaterBind = undefined; 
    } 
}

rapidFire1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.RapidFapped))
    {
        self iPrintLn("Rapid fire bind activated, press [{+Actionslot 1}] to shoot fast");
        self.RapidFapped = true;
        while(isDefined(self.RapidFapped))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread rapidFireFunc();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.RapidFapped)) 
    { 
        self iPrintLn("Rapid fire bind ^1deactivated");
        self.RapidFapped = undefined; 
    } 
}

rapidFire2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.RapidFapped))
    {
        self iPrintLn("Rapid fire bind activated, press [{+Actionslot 2}] to shoot fast");
        self.RapidFapped = true;
        while(isDefined(self.RapidFapped))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread rapidFireFunc();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.RapidFapped)) 
    { 
        self iPrintLn("Rapid fire bind ^1deactivated");
        self.RapidFapped = undefined; 
    } 
}

rapidFire3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.RapidFapped))
    {
        self iPrintLn("Rapid fire bind activated, press [{+Actionslot 3}] to shoot fast");
        self.RapidFapped = true;
        while(isDefined(self.RapidFapped))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread rapidFireFunc();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.RapidFapped)) 
    { 
        self iPrintLn("Rapid fire bind ^1deactivated");
        self.RapidFapped = undefined; 
    } 
}

rapidFire4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.RapidFapped))
    {
        self iPrintLn("Rapid fire bind activated, press [{+Actionslot 4}] to shoot fast");
        self.RapidFapped = true;
        while(isDefined(self.RapidFapped))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread rapidFireFunc();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.RapidFapped)) 
    { 
        self iPrintLn("Rapid fire bind ^1deactivated");
        self.RapidFapped = undefined; 
    } 
}

rapidFireFunc()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.RapidToggle))
    {
        self.RapidToggle = true;
        self setperk("specialty_fastreload");
        self thread unlimited_ammo();
        setDvar("perk_weapReloadMultiplier",0.001);
    } 
    else if(isDefined(self.RapidToggle)) 
    { 
        self.RapidToggle = undefined; 
        setDvar("perk_weapReloadMultiplier",0.5);
        self notify("stop_unlimitedammo");
    } 
}

Scavdropbind1()
{
    if(!isDefined(self.dropbind))
    {
        self iPrintLn("Scavenger drop bind activated, press [{+Actionslot 1}] to drop scav pack");
        self.dropbind = true;
        while(isDefined(self.dropbind))
        {
            if(self ActionSlotOneButtonPressed() && self.menu.open == false)
            {
                self setPerk("specialty_scavenger");
                item = self dropScavengerItem( "scavenger_item_mp" );
                item thread maps\mp\gametypes\_weapons::scavenger_think();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.dropbind)) 
    { 
        self iPrintLn("drop scav pack bind: ^1Disabled");
        self.dropbind = undefined; 
    } 
}

Scavdropbind2()
{
    if(!isDefined(self.dropbind))
    {
        self iPrintLn("Scavenger drop bind activated, press [{+Actionslot 2}] to drop scav pack");
        self.dropbind = true;
        while(isDefined(self.dropbind))
        {
            if(self ActionSlotTwoButtonPressed() && self.menu.open == false)
            {
                self setPerk("specialty_scavenger");
                item = self dropScavengerItem( "scavenger_item_mp" );
                item thread maps\mp\gametypes\_weapons::scavenger_think();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.dropbind)) 
    { 
        self iPrintLn("drop scav bag bind: ^1Disabled");
        self.dropbind = undefined; 
    } 
}

Scavdropbind3()
{
    if(!isDefined(self.dropbind))
    {
        self iPrintLn("Scavenger drop bind activated, press [{+Actionslot 3}] to drop scav pack");
        self.dropbind = true;
        while(isDefined(self.dropbind))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self setPerk("specialty_scavenger");
                item = self dropScavengerItem( "scavenger_item_mp" );
                item thread maps\mp\gametypes\_weapons::scavenger_think();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.dropbind)) 
    { 
        self iPrintLn("drop scav bag bind: ^1Disabled");
        self.dropbind = undefined; 
    } 
}

Scavdropbind4()
{
    if(!isDefined(self.dropbind))
    {
        self iPrintLn("Scavenger drop bind activated, press [{+Actionslot 4}] to drop scav pack");
        self.dropbind = true;
        while(isDefined(self.dropbind))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self setPerk("specialty_scavenger");
                item = self dropScavengerItem( "scavenger_item_mp" );
                item thread maps\mp\gametypes\_weapons::scavenger_think();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.dropbind)) 
    { 
        self iPrintLn("drop scav bag bind: ^1Disabled");
        self.dropbind = undefined; 
    } 
}

EmptyClip1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.emptyClip))
    {
        self iPrintLn("empty clip bind activated, press [{+Actionslot 1}] to empty clip");
        self.emptyClip = true;
        while(isDefined(self.emptyClip))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doEmptyClip();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.emptyClip)) 
    { 
        self iPrintLn("empty clip bind ^1deactivated");
        self.emptyClip = undefined; 
    } 
}

EmptyClip2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.emptyClip))
    {
        self iPrintLn("empty clip bind activated, press [{+Actionslot 2}] to empty clip");
        self.emptyClip = true;
        while(isDefined(self.emptyClip))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doEmptyClip();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.emptyClip)) 
    { 
        self iPrintLn("empty clip bind ^1deactivated");
        self.emptyClip = undefined; 
    } 
}

EmptyClip3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.emptyClip))
    {
        self iPrintLn("empty clip bind activated, press [{+Actionslot 3}] to empty clip");
        self.emptyClip = true;
        while(isDefined(self.emptyClip))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doEmptyClip();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.emptyClip)) 
    { 
        self iPrintLn("empty clip bind ^1deactivated");
        self.emptyClip = undefined; 
    } 
}

EmptyClip4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.emptyClip))
    {
        self iPrintLn("empty clip bind activated, press [{+Actionslot 4}] to empty clip");
        self.emptyClip = true;
        while(isDefined(self.emptyClip))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doEmptyClip();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.emptyClip)) 
    { 
        self iPrintLn("empty clip bind ^1deactivated");
        self.emptyClip = undefined; 
    } 
}

doEmptyClip()
{
    self.EmptyWeap = self getCurrentweapon();
    WeapEmpClip    = self getWeaponAmmoClip(self.EmptyWeap);
    WeapEmpStock     = self getWeaponAmmoStock(self.EmptyWeap);
    self setweaponammostock(self.EmptyWeap, WeapEmpStock);
    self setweaponammoclip(self.EmptyWeap, WeapEmpClip - WeapEmpClip);
}

ThirdPerson1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person bind activated, press [{+Actionslot 1}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPerson();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPerson2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person bind activated, press [{+Actionslot 2}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPerson();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPerson3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person bind activated, press [{+Actionslot 3}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPerson();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

ThirdPerson4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.ThirdPerson))
    {
        self iPrintLn("Third person bind activated, press [{+Actionslot 4}]");
        self.ThirdPerson = true;
        while(isDefined(self.ThirdPerson))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread doThirdPerson();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.ThirdPerson)) 
    { 
        self iPrintLn("Third person bind ^1deactivated");
        self notify("stopThird");
        self.ThirdPerson = undefined; 
    }
}

doThirdPerson()
{
    self endon("stopThird");
    if(!isDefined(self.DoingThirdPerson))
    {
        self setclientthirdperson(1);
        self.DoingThirdPerson = true;
    }
    else
    {
        self setclientthirdperson(0);
        self.DoingThirdPerson = undefined;
    }
}

DropWeapon1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.DropWeap))
    {
        self iPrintLn("Drop weapon bind activated, press [{+Actionslot 1}]");
        self.DropWeap = true;
        while(isDefined(self.DropWeap))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                if(!isDefined(self.NextDropped))
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                }
                else
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                    self setSpawnWeapon(self.NextDropped);
                }
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.DropWeap)) 
    { 
        self iPrintLn("Drop weapon bind ^1deactivated");
        self.DropWeap = undefined; 
    }
}

DropWeapon2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.DropWeap))
    {
        self iPrintLn("Drop weapon bind activated, press [{+Actionslot 2}]");
        self.DropWeap = true;
        while(isDefined(self.DropWeap))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                if(!isDefined(self.NextDropped))
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                }
                else
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                    self setSpawnWeapon(self.NextDropped);
                }
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.DropWeap)) 
    { 
        self iPrintLn("Drop weapon bind ^1deactivated");
        self.DropWeap = undefined; 
    }
}

DropWeapon3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.DropWeap))
    {
        self iPrintLn("Drop weapon bind activated, press [{+Actionslot 3}]");
        self.DropWeap = true;
        while(isDefined(self.DropWeap))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                if(!isDefined(self.NextDropped))
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                }
                else
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                    self setSpawnWeapon(self.NextDropped);
                }
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.DropWeap)) 
    { 
        self iPrintLn("Drop weapon bind ^1deactivated");
        self.DropWeap = undefined; 
    }
}

DropWeapon4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.DropWeap))
    {
        self iPrintLn("Drop weapon bind activated, press [{+Actionslot 4}]");
        self.DropWeap = true;
        while(isDefined(self.DropWeap))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                if(!isDefined(self.NextDropped))
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                }
                else
                {
                    weap = self getCurrentWeapon();
                    self dropitem(weap);
                    self setSpawnWeapon(self.NextDropped);
                }
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.DropWeap)) 
    { 
        self iPrintLn("Drop weapon bind ^1deactivated");
        self.DropWeap = undefined; 
    }
}

Canzoom1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Canzoom))
    {
        self iPrintLn("Canzoom bind activated, press [{+Actionslot 1}]");
        self.Canzoom = true;
        while(isDefined(self.Canzoom))
        {
            if(self actionslotonebuttonpressed() && self.menu.open == false)
            {
                self thread CanzoomFunction();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.Canzoom)) 
    { 
        self iPrintLn("Canzoom bind ^1deactivated");
        self.Canzoom = undefined; 
    }
}

Canzoom2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Canzoom))
    {
        self iPrintLn("Canzoom bind activated, press [{+Actionslot 2}]");
        self.Canzoom = true;
        while(isDefined(self.Canzoom))
        {
            if(self actionslottwobuttonpressed() && self.menu.open == false)
            {
                self thread CanzoomFunction();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.Canzoom)) 
    { 
        self iPrintLn("Canzoom bind ^1deactivated");
        self.Canzoom = undefined; 
    }
}

Canzoom3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Canzoom))
    {
        self iPrintLn("Canzoom bind activated, press [{+Actionslot 3}]");
        self.Canzoom = true;
        while(isDefined(self.Canzoom))
        {
            if(self actionslotthreebuttonpressed() && self.menu.open == false)
            {
                self thread CanzoomFunction();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.Canzoom)) 
    { 
        self iPrintLn("Canzoom bind ^1deactivated");
        self.Canzoom = undefined; 
    }
}

Canzoom4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.Canzoom))
    {
        self iPrintLn("Canzoom bind activated, press [{+Actionslot 4}]");
        self.Canzoom = true;
        while(isDefined(self.Canzoom))
        {
            if(self actionslotfourbuttonpressed() && self.menu.open == false)
            {
                self thread CanzoomFunction();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.Canzoom)) 
    { 
        self iPrintLn("Canzoom bind ^1deactivated");
        self.Canzoom = undefined; 
    }
}

CanzoomFunction()
{
    self.canswapWeap = self getCurrentWeapon();
    self takeWeapon(self.canswapWeap);
    self giveweapon(self.canswapWeap);
    wait 0.05;
    self setSpawnWeapon(self.canswapWeap);
}

Cowboy1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.CowboyBind))
    {
        self iPrintLn("Cowboy bind activated, press [{+Actionslot 1}] to cowboy");
        self.CowboyBind = true;
        while(isDefined(self.CowboyBind))
        {
            if(self actionslotonebuttonpressed() && self.MenuOpen == false)
            {
                if(self.DoingCowboy == false)
                {
                    self.DoingCowboy = true;
                    setdvar("cg_gun_z", "8");
                }
                else
                {
                    self.DoingCowboy = false;
                    setdvar("cg_gun_z", "0");
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.CowboyBind)) 
    { 
        self iPrintLn("Cowboy bind ^1deactivated");
        self.CowboyBind = undefined; 
    } 
}

Cowboy2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.CowboyBind))
    {
        self iPrintLn("Cowboy bind activated, press [{+Actionslot 2}] to cowboy");
        self.CowboyBind = true;
        while(isDefined(self.CowboyBind))
        {
            if(self actionslottwobuttonpressed() && self.MenuOpen == false)
            {
                if(self.DoingCowboy == false)
                {
                    self.DoingCowboy = true;
                    setdvar("cg_gun_z", "8");
                }
                else
                {
                    self.DoingCowboy = false;
                    setdvar("cg_gun_z", "0");
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.CowboyBind)) 
    { 
        self iPrintLn("Cowboy bind ^1deactivated");
        self.CowboyBind = undefined; 
    } 
}   

Cowboy3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.CowboyBind))
    {
        self iPrintLn("Cowboy bind activated, press [{+Actionslot 3}] to cowboy");
        self.CowboyBind = true;
        while(isDefined(self.CowboyBind))
        {
            if(self actionslotthreebuttonpressed() && self.MenuOpen == false)
            {
                if(self.DoingCowboy == false)
                {
                    self.DoingCowboy = true;
                    setdvar("cg_gun_z", "8");
                }
                else
                {
                    self.DoingCowboy = false;
                    setdvar("cg_gun_z", "0");
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.CowboyBind)) 
    { 
        self iPrintLn("Cowboy bind ^1deactivated");
        self.CowboyBind = undefined; 
    } 
}   

Cowboy4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.CowboyBind))
    {
        self iPrintLn("Cowboy bind activated, press [{+Actionslot 4}] to cowboy");
        self.CowboyBind = true;
        while(isDefined(self.CowboyBind))
        {
            if(self actionslotfourbuttonpressed() && self.MenuOpen == false)
            {
                if(self.DoingCowboy == false)
                {
                    self.DoingCowboy = true;
                    setdvar("cg_gun_z", "8");
                }
                else
                {
                    self.DoingCowboy = false;
                    setdvar("cg_gun_z", "0");
                }
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.CowboyBind)) 
    { 
        self iPrintLn("Cowboy bind ^1deactivated");
        self.CowboyBind = undefined; 
    } 
}

DiscoCamo1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.discoCamo))
    {
        self iPrintLn("Disco camo bind activated, press [{+Actionslot 1}]");
        self.discoCamo = true;
        while(isDefined(self.discoCamo))
        {
            if(self actionslotonebuttonpressed() && self.MenuOpen == false)
            {
                self thread DoCamoLoop();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.discoCamo)) 
    { 
        self iPrintLn("Disco camo bind ^1deactivated");
        self notify("Stop_CamoLoop");
        self.discoCamo = undefined; 
    }
}

DiscoCamo2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.discoCamo))
    {
        self iPrintLn("Disco camo bind activated, press [{+Actionslot 2}]");
        self.discoCamo = true;
        while(isDefined(self.discoCamo))
        {
            if(self actionslottwobuttonpressed() && self.MenuOpen == false)
            {
                self thread DoCamoLoop();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.discoCamo)) 
    { 
        self iPrintLn("Disco camo bind ^1deactivated");
        self notify("Stop_CamoLoop");
        self.discoCamo = undefined; 
    }
}

DiscoCamo3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.discoCamo))
    {
        self iPrintLn("Disco camo bind activated, press [{+Actionslot 3}]");
        self.discoCamo = true;
        while(isDefined(self.discoCamo))
        {
            if(self actionslotthreebuttonpressed() && self.MenuOpen == false)
            {
                self thread DoCamoLoop();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.discoCamo)) 
    { 
        self iPrintLn("Disco camo bind ^1deactivated");
        self notify("Stop_CamoLoop");
        self.discoCamo = undefined; 
    }
}

DiscoCamo4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.discoCamo))
    {
        self iPrintLn("Disco camo bind activated, press [{+Actionslot 4}]");
        self.discoCamo = true;
        while(isDefined(self.discoCamo))
        {
            if(self actionslotfourbuttonpressed() && self.MenuOpen == false)
            {
                self thread DoCamoLoop();
            }
            wait .001;
        } 
    } 
    else if(isDefined(self.discoCamo)) 
    { 
        self iPrintLn("Disco camo bind ^1deactivated");
        self notify("Stop_CamoLoop");
        self.discoCamo = undefined; 
    }
}

FakeScav1()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.fakeScav))
    {
        self iPrintLn("Fake scav bind activated, press [{+Actionslot 1}]");
        self.fakeScav = true;
        while(isDefined(self.fakeScav))
        {
            if(self actionslotonebuttonpressed() && self.MenuOpen == false)
            {
                self thread doFakeScav();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.fakeScav)) 
    { 
        self iPrintLn("Fake scav bind ^1deactivated");
        self.fakeScav = undefined; 
    } 
}

FakeScav2()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.fakeScav))
    {
        self iPrintLn("Fake scav bind activated, press [{+Actionslot 2}]");
        self.fakeScav = true;
        while(isDefined(self.fakeScav))
        {
            if(self actionslottwobuttonpressed() && self.MenuOpen == false)
            {
                self thread doFakeScav();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.fakeScav)) 
    { 
        self iPrintLn("Fake scav bind ^1deactivated");
        self.fakeScav = undefined; 
    } 
}

FakeScav3()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.fakeScav))
    {
        self iPrintLn("Fake scav bind activated, press [{+Actionslot 3}]");
        self.fakeScav = true;
        while(isDefined(self.fakeScav))
        {
            if(self actionslotthreebuttonpressed() && self.MenuOpen == false)
            {
                self thread doFakeScav();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.fakeScav)) 
    { 
        self iPrintLn("Fake scav bind ^1deactivated");
        self.fakeScav = undefined; 
    } 
}

FakeScav4()
{
    self endon ("disconnect");
    self endon ("game_ended");
    if(!isDefined(self.fakeScav))
    {
        self iPrintLn("Fake scav bind activated, press [{+Actionslot 4}]");
        self.fakeScav = true;
        while(isDefined(self.fakeScav))
        {
            if(self actionslotfourbuttonpressed() && self.MenuOpen == false)
            {
                self thread doFakeScav();
            }
            wait .001; 
        } 
    } 
    else if(isDefined(self.fakeScav)) 
    { 
        self iPrintLn("Fake scav bind ^1deactivated");
        self.fakeScav = undefined; 
    } 
}

doFakeScav()
{
    self.EmptyWeap                = self getCurrentweapon();
    WeapEmpClip                   = self getWeaponAmmoClip(self.EmptyWeap);
    WeapEmpStock                  = self getWeaponAmmoStock(self.EmptyWeap);
    self.scavenger_icon           = NewClientHudElem( self );
    self.scavenger_icon.horzAlign = "center";
    self.scavenger_icon.vertAlign = "middle";
    width                         = 48;
    height                        = 24;
    self.scavenger_icon setShader( "hud_scavenger_pickup", width, height );
    self.scavenger_icon.alpha = 1;
    self.scavenger_icon fadeOverTime( 2.5 );
    self.scavenger_icon.alpha = 0;
    self setweaponammostock(self.EmptyWeap, WeapEmpStock);
    self setweaponammoclip(self.EmptyWeap, WeapEmpClip - WeapEmpClip);
    wait 0.5;
    self setweaponammostock(self.EmptyWeap, WeapEmpStock);
    wait 1.8;
    self.scavenger_icon destroy();
}

EleBind()
{
    if(!isDefined(self.changle))
    {
        self endon("ebola");
        self.elevate = spawn( "script_origin", self.origin, 1 );
        self PlayerLinkToDelta( self.elevate, undefined );
        self.changle = true;
        for(;;)
        {
            self.o = self.elevate.origin;
            wait 0.005;
            self.elevate.origin = self.o + (0,0,4);
        }
        wait 0.005;
    }
    else
    {
        wait 0.01;
        self unlink();
        self.changle = undefined;
        self.elevate delete();
        self notify("ebola");
    }
}
 
 
ElevatorBind1()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.Elevator))
    {
        self iprintln("Elevator activated, press [{+Actionslot 1}] to elevator");
        self.Elevator = true;
        while(isDefined(self.Elevator))
        {
            if(self actionslotonebuttonpressed() && self.MenuOpen == false)
            {
                self thread EleBind();
            }
        wait .001;
        }
    }
    else if(isDefined(self.Elevator))
    {
        self iprintln("Elevator Bind ^5OFF");
        self.Elevator = undefined;
    }
}
 
ElevatorBind2()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.Elevator))
    {
        self iprintln("Elevator activated, press [{+Actionslot 2}] to elevator");
        self.Elevator = true;
        while(isDefined(self.Elevator))
        {
            if(self actionslottwobuttonpressed() && self.MenuOpen == false)
            {
                self thread EleBind();
            }
        wait .001;
        }
    }
    else if(isDefined(self.Elevator))
    {
        self iprintln("Elevator Bind ^1Off");
        self.Elevator = undefined;
    }
}
 
ElevatorBind3()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.Elevator))
    {
        self iprintln("Elevator activated, press [{+Actionslot 3}] to elevator");
        self.Elevator = true;
        while(isDefined(self.Elevator))
        {
            if(self actionslotthreebuttonpressed() && self.MenuOpen == false)
            {
                self thread EleBind();
            }
        wait .001;
        }
    }
    else if(isDefined(self.Elevator))
    {
        self iprintln("Elevator Bind ^1Off");
        self.Elevator = undefined;
    }
}
 
ElevatorBind4()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.Elevator))
    {
        self iprintln("Elevator activated, press [{+Actionslot 4}] to elevator");
        self.Elevator = true;
        while(isDefined(self.Elevator))
        {
            if(self actionslotfourbuttonpressed() && self.MenuOpen == false)
            {
                self thread EleBind();
            }
        wait .001;
        }
    }
    else if(isDefined(self.Elevator))
    {
        self iprintln("Elevator Bind ^1Off");
        self.Elevator = undefined;
    }
}

WallBreach1()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach activated, press [{+Actionslot 1}] to Breach");
        self.WallBreach = true;
        while(isDefined(self.WallBreach))
        {
            if(self actionslotonebuttonpressed() && self.MenuOpen == false)
            {
                self thread WallBreach();
            }
        wait .001;
        }
    }
    else if(isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach Bind ^5OFF");
        self.WallBreach = undefined;
        self setClientDvar("r_singleCell", "0");
    }
}
 
WallBreach2()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach activated, press [{+Actionslot 2}] to Breach");
        self.WallBreach = true;
        while(isDefined(self.WallBreach))
        {
            if(self actionslottwobuttonpressed() && self.MenuOpen == false)
            {
                self thread WallBreach();
            }
        wait .001;
        }
    }
    else if(isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach Bind ^5OFF");
        self.WallBreach = undefined;
        self setClientDvar("r_singleCell", "0");
    }
}
 
WallBreach3()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach activated, press [{+Actionslot 3}] to Breach");
        self.WallBreach = true;
        while(isDefined(self.WallBreach))
        {
            if(self actionslotthreebuttonpressed() && self.MenuOpen == false)
            {
                self thread WallBreach();
            }
        wait .001;
        }
    }
    else if(isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach Bind ^5OFF");
        self.WallBreach = undefined;
        self setClientDvar("r_singleCell", "0");
    }
}
 
 
 
WallBreach4()
{
    self endon("game_ended");
    self endon( "disconnect" );
    if(!isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach activated, press [{+Actionslot 4}] to Breach");
        self.WallBreach = true;
        while(isDefined(self.WallBreach))
        {
            if(self actionslotfourbuttonpressed() && self.MenuOpen == false)
            {
                self thread WallBreach();
            }
        wait .001;
        }
    }
    else if(isDefined(self.WallBreach))
    {
        self iprintln("Wall Breach Bind ^5OFF");
        self.WallBreach = undefined;
        self setClientDvar("r_singleCell", "0");
    } 
}
 
 
WallBreach()
{
    if(!isDefined(self.WallBreachX))
    {
        self.WallBreachX = true;
        self setClientDvar("r_singleCell", "1");
        wait .001;
    }
    else if(isDefined(self.WallBreachX))
    {
        self.WallBreachX = undefined;
        self setClientDvar("r_singleCell", "0");
    }
    wait .001;
}
