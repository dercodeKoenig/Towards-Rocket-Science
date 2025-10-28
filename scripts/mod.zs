import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import mods.immersiveengineering.Excavator;

//#Remove ar pump
recipes.remove(<advancedrocketry:blockpump>);

//Add gunpowder crafting
//recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Gunpowder"}), [[null, <minecraft:gunpowder>, null],[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
//mods.immersiveengineering.Blueprint.addRecipe("Gunpowder", <minecraft:gunpowder>, [<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:blaze_powder>,<minecraft:coal>]);


//balance fuel energy system

mods.buildcraft.CombustionEngine.addCleanFuel(<liquid:oil>, 32.0/20, 1200);
mods.buildcraft.CombustionEngine.addCleanFuel(<liquid:diesel>, 48.0/20, 1200*4);
mods.buildcraft.CombustionEngine.addCleanFuel(<liquid:gasoline>, 64.0/20, 1200*2);
mods.buildcraft.CombustionEngine.addCleanFuel(<liquid:lubricant>, 1.0/20, 200);

mods.immersiveengineering.Refinery.addRecipe(<liquid:steam>*100, <liquid:hydrogen>*50, <liquid:oxygen>*50, 0);

mods.immersivetechnology.SteamTurbine.removeFuel(<liquid:steam>);
mods.immersivetechnology.SteamTurbine.addFuel(<liquid:water>*20, <liquid:steam> * 52, 1);

mods.immersivetechnology.Boiler.removeFuel(<liquid:diesel>);
mods.immersivetechnology.Boiler.addFuel(<liquid:diesel> * 8, 1, 10);
mods.immersivetechnology.Boiler.removeFuel(<liquid:biodiesel>);
mods.immersivetechnology.Boiler.addFuel(<liquid:biodiesel> * 16, 1, 10);
mods.immersivetechnology.Boiler.removeFuel(<liquid:gasoline>);
mods.immersivetechnology.Boiler.addFuel(<liquid:gasoline> * 10, 1, 10);

mods.immersivetechnology.GasTurbine.removeFuel(<liquid:gasoline>);
mods.immersivetechnology.GasTurbine.addFuel(<liquid:fluegas> * 25, <liquid:gasoline> * 15, 1);
mods.immersivetechnology.GasTurbine.addFuel(<liquid:water> * 2, <liquid:rocketfuel> * 5, 1);
mods.immersivetechnology.GasTurbine.addFuel(<liquid:fluegas> * 5, <liquid:kerosene> * 5, 1);

mods.immersivepetroleum.PortableGenerator.registerPortableGenFuel(<liquid:rocketfuel>, 512, 1000/(15*20));


// slow down boiler
mods.immersivetechnology.Boiler.removeRecipe(<liquid:water>);
mods.immersivetechnology.Boiler.removeRecipe(<liquid:distwater>);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 26, <liquid:water> * 20, 1);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 39, <liquid:distwater> * 20, 1);

//change distiller
mods.immersivetechnology.Distiller.removeRecipe(<liquid:water>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:distwater> * 25, <liquid:water> * 35, <immersivetech:material>, 256, 1, 0.01);

// slow down solar tower
mods.immersivetechnology.SolarTower.removeRecipe(<liquid:water>);
mods.immersivetechnology.SolarTower.removeRecipe(<liquid:distwater>);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:steam> * 12, <liquid:water> * 10, 1);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:steam> * 15, <liquid:distwater> * 10, 1);




//remove easy power generation tools

<immersiveengineering:metal_device1:3>.displayName = "Thermoelectric Generator (disabled item)";
recipes.remove(<immersiveengineering:metal_device1:3>);
<immersiveengineering:wooden_device1:1>.displayName = "Windmill (disabled item)";
recipes.remove(<immersiveengineering:wooden_device1:1>);
<immersiveengineering:wooden_device1>.displayName = "Water Wheel (disabled item)";
recipes.remove(<immersiveengineering:wooden_device1>);



//disable engineers workbench to force player to build the machine (not good because player y´can no longer craft drill)
//<immersiveengineering:wooden_device0:2>.displayName = "Engineer's Workbench (disabled item - use auto workbench)";
//recipes.remove(<immersiveengineering:wooden_device0:2>);

//blueprint refined storage is added as quest
//recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Refined Storage"}), [[null, <minecraft:chest>, null],[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

val silicon = <libvulpes:productingot:3>;
val chipset = <buildcraftsilicon:redstone_chipset>;
val binding = <refinedstorage:processor_binding>;

recipes.remove(<refinedstorage:processor:2>);
mods.immersiveengineering.Blueprint.addRecipe("Refined Storage", <refinedstorage:processor:2>, [silicon, chipset, binding, <ore:gemDiamond>]);
recipes.remove(<refinedstorage:processor:1>);
mods.immersiveengineering.Blueprint.addRecipe("Refined Storage", <refinedstorage:processor:1>, [silicon, chipset, binding, <ore:ingotElectrum>]);
recipes.remove(<refinedstorage:processor>);
mods.immersiveengineering.Blueprint.addRecipe("Refined Storage", <refinedstorage:processor:0>, [silicon, chipset, binding, <ore:ingotCopper>]);

//blueprint engineering components
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Engineering Components"}), [[null, <minecraft:redstone>, null],[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

//modify redstone engineering block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, [[<minecraft:iron_block>, <buildcraftsilicon:redstone_chipset>, <minecraft:iron_block>],[<buildcraftsilicon:redstone_chipset>, <immersiveengineering:metal>, <buildcraftsilicon:redstone_chipset>], [<minecraft:iron_block>, <buildcraftsilicon:redstone_chipset>, <minecraft:iron_block>]]);
mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:metal_decoration0:3>, [<minecraft:iron_ingot>*4, <buildcraftsilicon:redstone_chipset> *4, <immersiveengineering:metal>]);

//modify light engineering block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>, [[<minecraft:iron_block>, <immersiveengineering:material:8>, <minecraft:iron_block>],[<immersiveengineering:metal>, <immersiveengineering:metal>, <immersiveengineering:metal>], [<minecraft:iron_block>, <immersiveengineering:material:8>, <minecraft:iron_block>]]);
mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:metal_decoration0:4>, [<buildcraftcore:gear_iron>*4, <immersiveengineering:material:8>*2, <immersiveengineering:metal>*3]);

//modify heavy engineering block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, [[<immersiveengineering:storage:8>, <immersiveengineering:material:9>, <immersiveengineering:storage:8>],[<minecraft:piston>, <immersiveengineering:metal:7>, <minecraft:piston>], [<immersiveengineering:storage:8>, <immersiveengineering:material:9>, <immersiveengineering:storage:8>]]);
mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:metal_decoration0:5>, [<libvulpes:productgear:6>*2, <ore:ingotSteel>*2, <immersiveengineering:metal:7>, <immersiveengineering:material:9>*2, <minecraft:piston>*2]);


//modify hv wires and lv wires
//recipes.remove(<immersiveengineering:wirecoil:1>);
//recipes.remove(<immersiveengineering:wirecoil:2>);
//mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:wirecoil:1>, [<immersiveengineering:material:21>*4, <minecraft:stick>]);
//mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:wirecoil:2>, [<immersiveengineering:material:22>*2, <immersiveengineering:material:23>*2, <minecraft:stick>]);

//modify pipes
recipes.remove(<immersiveengineering:metal_device1:6>);
mods.immersiveengineering.Blueprint.addRecipe("Engineering Components", <immersiveengineering:metal_device1:6>, [<ore:plateIron>*2]);

//change this shit with railcraft gear
mods.immersiveengineering.MetalPress.removeRecipe(<railcraft:gear:2>);
mods.immersiveengineering.MetalPress.addRecipe(<libvulpes:productgear:6>, <ore:ingotSteel>, <immersiveengineering:mold:1>, 512, 4);
mods.immersiveengineering.MetalPress.removeRecipe(<railcraft:gear:1>);
mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_iron>, <ore:ingotIron>, <immersiveengineering:mold:1>, 512, 4);

//blueprint saddle crafting
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Saddle crafting"}), [[null, <minecraft:leather>, null],[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
mods.immersiveengineering.Blueprint.addRecipe("Saddle crafting", <minecraft:saddle>, [<minecraft:leather>*3,<minecraft:iron_nugget>*2]);


//AR changes:
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Rocket Science"}), [[null, <advancedrocketry:structuretower>, null],[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

// solar panel
recipes.remove(<advancedrocketry:solarpanel>);
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <advancedrocketry:solarpanel>, [<minecraft:redstone>*3, <contenttweaker:plastic>*4, <minecraft:glowstone_dust>*2, <libvulpes:structuremachine>, <immersiveengineering:metal:40>*3]);

//composition scanner
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <advancedrocketry:satelliteprimaryfunction:1>, [<advancedrocketry:ic:1>, <advancedrocketry:ic>, <advancedrocketry:wafer>*2, <advancedrocketry:satelliteprimaryfunction>*2]);

//optical sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <advancedrocketry:satelliteprimaryfunction>, [<ore:paneGlass>*3, <ore:dustGlowstone>, <ore:plateGold>]);

//mass  sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <advancedrocketry:satelliteprimaryfunction:2>, [<ore:gemDilithium>, <advancedrocketry:ic>, <advancedrocketry:wafer>*2, <advancedrocketry:satelliteprimaryfunction>*2]);

//machine structure
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <libvulpes:structuremachine>, [<contenttweaker:plastic>*24,<ore:stickIron>*24,<ore:plateIron>*12]);
mods.immersiveengineering.Blueprint.addRecipe("Rocket Science", <libvulpes:advstructuremachine>, [<libvulpes:structuremachine>, <ore:stickTitanium>*4,<ore:plateTitanium>*4,<immersiveengineering:material:9>*1]);



//add AR arc recipes to IE:
mods.immersiveengineering.ArcFurnace.addRecipe(<advancedrocketry:productingot>*3, <ore:ingotAluminum>*7, null, 2000, 1024, [<ore:ingotTitanium>*3], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<advancedrocketry:productingot:1>*1, <ore:ingotIridium>*1, null, 2000, 1024, [<ore:ingotTitanium>*1], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<libvulpes:productingot:3>, <ore:sand>, null, 1000, 512);


//make ore 3x in crusher

//dilithium
mods.immersiveengineering.Crusher.removeRecipe(<libvulpes:productgem>);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust>*3, <libvulpes:ore0>, 4096);

//iridium
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:10>);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust:10>*3, <libvulpes:ore0:10>, 4096);

//titanium
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
mods.immersiveengineering.Crusher.addRecipe(<libvulpes:productdust:7>*3, <libvulpes:ore0:8>, 4096);

//copper
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:4>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:9>*3, <ore:oreCopper>, 4096, <immersiveengineering:metal:19>, 0.1);
//aluminium
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:9>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:10>*3, <ore:oreAluminum>, 4096);
//nickel
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:4>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:13>*3, <ore:oreNickel>, 4096);
//gold
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:gold_ore>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:19>*3, <ore:oreGold>, 4096);
//iron
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:iron_ore>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:18>*3, <ore:oreIron>, 4096, <immersiveengineering:metal:13>, 0.1);
//lead
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:2>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:11>*3, <ore:oreLead>, 4096, <immersiveengineering:metal:12>, 0.1);
//silver
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:3>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:12>*3, <ore:oreSilver>, 4096, <immersiveengineering:metal:11>, 0.1);








// change railcraft mod
//disable some items
<railcraft:equipment:2>.displayName = "Feed Station (disabled item - use Minecolonies)";
recipes.remove(<railcraft:equipment:2>);

<railcraft:equipment:1>.displayName = "Powered Rolling Machine (disabled item)";
recipes.remove(<railcraft:equipment:1>);

<railcraft:steam_oven>.displayName = "Steam Oven (disabled item - overpowered)";
recipes.remove(<railcraft:steam_oven>);

<railcraft:steam_turbine>.displayName = "Steam Turbine Housing (disabled item - overpowered)";
recipes.remove(<railcraft:steam_turbine>);



//change press recipes to make 1 rod from 1 ingot
val mold_rod = <immersiveengineering:mold:2>;

mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productrod:4>); // copper rod
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productrod:7>); // titanium rod
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productrod:10>); // iridium rod
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod>); // titanium aliumide rod
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod:1>); // titanium iridium rod
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>); // steel rod
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:3>); // aluminium rod
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:1>); //iron rod


mods.immersiveengineering.MetalPress.addRecipe(<libvulpes:productrod:4>, <ore:ingotCopper>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<libvulpes:productrod:7>, <ore:ingotTitanium>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<libvulpes:productrod:10>, <ore:ingotIridium>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<advancedrocketry:productrod>, <ore:ingotTitaniumAluminide>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<advancedrocketry:productrod:1>, <ore:ingotTitaniumIridium>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:2>, <ore:ingotSteel>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:3>, <ore:ingotAluminum>, mold_rod, 256);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:1>, <ore:ingotIron>, mold_rod, 256);




//fix dilithium name (was fixed by AR)
//<libvulpes:ore0>.displayName = "Dilithium";


//fix stupid colony miner
val dOre = <libvulpes:ore0> as IBlock;
var dOreDef = dOre.definition;
dOreDef.setHarvestLevel("pickaxe", 3);


<buildcrafttransport:pipe_stone_fluid>.displayName = "improved fluid pipe";
<buildcrafttransport:pipe_cobble_fluid>.displayName = "basic fluid pipe";


//plastic processing


//add distillation tower naphte recipes
mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphta> * 5, <liquid:kerosene> * 15], [], <liquid:diesel>*20, 2048, 1, []);
//add distillation tower plastic recipes (replaced by polymerizer)
//mods.immersivepetroleum.Distillation.addRecipe([<liquid:moltenplastic> * 5], [], <liquid:propene>*30, 2048, 1, []);


mods.immersiveengineering.Refinery.addRecipe(<liquid:propene>, <liquid:naphta>*5, <liquid:steam>*50, 2048);


//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:plastic>, <tconstruct:cast_custom:3>, <liquid:moltenplastic>, 100);



//screw you too!
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [[null, null, null],[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<buildcraftcore:gear_iron>, <minecraft:redstone>, <buildcraftcore:gear_iron>]]);
recipes.addShapeless(<immersiveengineering:conveyor>, [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <structurize:sceptergold>.reuse()]);
//recipes.addShaped(<immersiveengineering:conveyor>, [[null, null, null],[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<buildcraftcore:gear_iron>, <minecraft:redstone>, <buildcraftcore:gear_iron>]]);
//recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>]);

mods.jei.JEI.addItem(<immersiveengineering:conveyor>);



recipes.addShapeless(<immersiveengineering:metal_device0>.withTag({BlockEntityTag: {ifluxEnergy: 100000}}), [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>,<immersiveengineering:metal_device0>]);
recipes.addShapeless(<immersiveengineering:metal_device0:1>.withTag({BlockEntityTag: {ifluxEnergy: 1000000}}), [<minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>,<immersiveengineering:metal_device0:1>]);
recipes.addShapeless(<immersiveengineering:metal_device0:2>.withTag({BlockEntityTag: {ifluxEnergy: 4000000}}), [<minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>,<minecraft:redstone_block>,<immersiveengineering:metal_device0:2>]);




//mineral mix
var magnetite = Excavator.getMineral("Magnetite");
magnetite.addOre("oreTitanium", 0.5);
var cassiterite = Excavator.getMineral("Cassiterite");
cassiterite.addOre("oreQuartz", 0.5);
var gold = Excavator.getMineral("Gold");
gold.addOre("oreQuartz", 0.1);
var cinnabar = Excavator.getMineral("Cinnabar");
cinnabar.addOre("oreQuartz", 0.4);
var pyrite = Excavator.getMineral("Pyrite");
pyrite.addOre("oreRedstone", 0.1);
pyrite.addOre("oreCoal", 0.1);
var quarzite = Excavator.getMineral("Quartzite");
quarzite.addOre("oreRedstone", 0.2);




mods.immersiveengineering.Blueprint.addRecipe("Unmanned Vehicle Assembler", <advancedrocketry:deployablerocketbuilder>, [<libvulpes:productgear:7>*2, <libvulpes:productrod:7>*8, <libvulpes:productdust>*4, <advancedrocketry:rocketbuilder>]);

mods.immersiveengineering.Blueprint.addRecipe("Atmosphere Terraformer", <advancedrocketry:terraformer>, [<advancedrocketry:productgear>*4, <libvulpes:advstructuremachine>, <advancedrocketry:ic:5>*4, <advancedrocketry:misc>, <advancedrocketry:ic:3>*5, <libvulpes:productgem>]);

mods.immersiveengineering.Blueprint.addRecipe("Warp Core", <advancedrocketry:warpcore>, [<immersiveengineering:metal_decoration0>, <libvulpes:productplate:6>*4, <libvulpes:productplate:7>*8, <advancedrocketry:ic:2>*4]);



//smeltery fixes
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>, <minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <minecraft:minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:chest_minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>, <minecraft:chest_minecart>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <minecraft:chest_minecart>);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <immersiveengineering:material:1>);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 72,<immersiveengineering:material:1>, 500);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:material:2>);
mods.tconstruct.Melting.addRecipe(<liquid:steel> * 72,<immersiveengineering:material:2>, 500);

mods.tconstruct.Casting.removeTableRecipe(<railcraft:gear:1>);
mods.tconstruct.Casting.addTableRecipe(<buildcraftcore:gear_iron>, <tconstruct:cast_custom:4>, <liquid:iron>, 576);
mods.tconstruct.Casting.removeTableRecipe(<railcraft:gear:2>);
mods.tconstruct.Casting.addTableRecipe(<libvulpes:productgear:6>, <tconstruct:cast_custom:4>, <liquid:steel>, 576);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);


mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <libvulpes:productplate:1>);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 72,<libvulpes:productplate:1>, 500);

mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <libvulpes:productplate:2>);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 72,<libvulpes:productplate:2>, 500);

mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <libvulpes:productplate:9>);
mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 72,<libvulpes:productplate:9>, 500);

mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <libvulpes:productplate:4>);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 72,<libvulpes:productplate:4>, 500);

mods.tconstruct.Melting.removeRecipe(<liquid:tin>, <libvulpes:productplate:5>);
mods.tconstruct.Melting.addRecipe(<liquid:tin> * 72,<libvulpes:productplate:5>, 500);

mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <libvulpes:productplate:6>);
mods.tconstruct.Melting.addRecipe(<liquid:steel> * 72,<libvulpes:productplate:6>, 500);



