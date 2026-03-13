isPlayer = true;
global.currentPlayer = id
instance_create_layer(x, y, "Instances", PlayerObject)
global.SoulKnifeExists = true;
hp = max_hp;
instance_destroy(originalPlayer);