	
	
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

var moltenmodularium = VanillaFactory.createFluid("molten_modularium", Color.fromHex("E2EAF4"));
moltenmodularium.setDensity(5000);
moltenmodularium.register();

var moltenredstone = VanillaFactory.createFluid("molten_redstone", Color.fromHex("C23737"));
moltenredstone.setDensity(2000);
moltenredstone.register();

var modularium_plate = VanillaFactory.createItem("modularium_plate");
modularium_plate.maxStackSize = 64;
modularium_plate.register();

