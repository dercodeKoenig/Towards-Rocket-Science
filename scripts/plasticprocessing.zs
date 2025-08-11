	
	
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

var naphta = VanillaFactory.createFluid("naphta", Color.fromHex("CB618D"));
naphta.setDensity(1000);
naphta.register();

var propene = VanillaFactory.createFluid("propene", Color.fromHex("CECECE"));
propene.setDensity(500);
//propene.setGaseous(true);
propene.register();

var moltenplastic = VanillaFactory.createFluid("moltenplastic", Color.fromHex("838385"));
moltenplastic.setDensity(3000);
moltenplastic.register();

var kerosene = VanillaFactory.createFluid("kerosene", Color.fromHex("48C0CB"));
kerosene.setDensity(500);
//kerosene.setGaseous(true);
kerosene.register();


var plastic = VanillaFactory.createItem("plastic");
plastic.maxStackSize = 64;
plastic.register();

