mods.modularmachinery.RecipeBuilder.newBuilder("researchproject", "researchstation", 2000)
.addItemInput(<minecraft:redstone>*1792)
.addItemInput(<libvulpes:productrod:6>*512)
.addItemInput(<libvulpes:productsheet:9>*256)
.addItemInput(<buildcraftsilicon:redstone_chipset:4>*64)
.addItemInput(<immersiveengineering:metal:7>*1024)
.addItemInput(<immersiveengineering:metal>*1024)
.addItemOutput(<contenttweaker:researchtoken>)
.build();


mods.modularmachinery.RecipeBuilder.newBuilder("advresearchproject", "researchstation", 2000)
.addItemInput(<minecraft:redstone>*4096)
.addItemInput(<contenttweaker:researchtoken>).setChance(0)
.addItemOutput(<contenttweaker:advresearchtoken>)
.build();


mods.modularmachinery.RecipeBuilder.newBuilder("opticalresearch", "researchstation", 2000)
.addItemInput(<minecraft:redstone>*1024)
.addItemInput(<minecraft:glass>*3072)
.addItemInput(<contenttweaker:researchtoken>).setChance(0)
.addItemOutput(<contenttweaker:observatoryresearchtoken>)
.build();


mods.modularmachinery.RecipeBuilder.newBuilder("miningresearch", "researchstation", 2000)
.addItemInput(<minecraft:redstone>*1024)
.addItemInput(<libvulpes:productgear:6>*256)
.addItemInput(<advancedrocketry:rocketmotor>*64)
.addItemInput(<advancedrocketry:fueltank>*128)
.addItemInput(<minecraft:diamond>*32)
.addItemInput(<contenttweaker:researchtoken>).setChance(0)
.addItemOutput(<contenttweaker:miningresearchtoken>)
.build();


mods.modularmachinery.RecipeBuilder.newBuilder("stationresearch", "researchstation", 2000)
.addItemInput(<minecraft:redstone>*1024)
.addItemInput(<ore:plateAluminum>*256)
.addItemInput(<immersiveengineering:material:3>*512)
.addItemInput(<immersiveengineering:wirecoil:4>*128)
.addItemInput(<immersiveengineering:metal_decoration0:4>*128)
.addItemInput(<libvulpes:motor>*16)
.addItemInput(<libvulpes:structuremachine>*64)
.addItemInput(<advancedrocketry:solargenerator>*32)
.addItemInput(<contenttweaker:researchtoken>).setChance(0)
.addItemOutput(<contenttweaker:stationresearchtoken>)
.build();












//mods.modularmachinery.RecipeBuilder.newBuilder("warpsystemresearch", "researchstation", 2000)
//.addItemInput(<minecraft:redstone>*512)
//.addItemInput(<libvulpes:productgem>*50)
//.addItemInput(<contenttweaker:advresearchtoken>).setChance(0)
//.addItemOutput(<contenttweaker:warptoken>)
//.build();
