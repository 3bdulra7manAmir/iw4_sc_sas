// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_ally_sas_woodland_AT4 (0.0 0.25 1.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="body_sp_sas_woodland_assault_a"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "";
	self.team = "allies";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "at4";
	self.secondaryweapon = "colt45";
	self.sidearm = "colt45";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 256.000000, 0.000000 );
	self setEngagementMaxDist( 768.000000, 1024.000000 );

	switch( codescripts\character::get_random_character(5) )
	{
	case 0:
		character\character_sp_sas_woodland_mac::main();
		break;
	case 1:
		character\character_sp_sas_woodland_zied::main();
		break;
	case 2:
		character\character_sp_sas_woodland_peter::main();
		break;
	case 3:
		character\character_sp_sas_woodland_hugh::main();
		break;
	case 4:
		character\character_sp_sas_woodland_todd::main();
		break;
	}
}

spawner()
{
	self setspawnerteam("allies");
}

precache()
{
	character\character_sp_sas_woodland_mac::precache();
	character\character_sp_sas_woodland_zied::precache();
	character\character_sp_sas_woodland_peter::precache();
	character\character_sp_sas_woodland_hugh::precache();
	character\character_sp_sas_woodland_todd::precache();

	precacheItem("at4");
	precacheItem("colt45");
	precacheItem("colt45");
	precacheItem("fraggrenade");
}
