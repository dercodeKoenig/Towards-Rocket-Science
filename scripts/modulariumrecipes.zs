//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
mods.tconstruct.Alloy.addRecipe(<liquid:molten_modularium> * 2, [<liquid:iron> * 1,<liquid:gold> * 1, <liquid:molten_redstone> * 1]);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:modularium_plate>, <tconstruct:cast_custom:3>, <liquid:molten_modularium>, 144);
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:molten_modularium>, 144);

//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
mods.tconstruct.Melting.addRecipe(<liquid:molten_redstone> * 12,<minecraft:redstone>);