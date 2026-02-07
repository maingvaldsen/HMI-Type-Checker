---@meta

-- // ✦ Made by maingvaldsen ✦ \\ --

---Override camera position/rotation for cinematic or viewmodel effects
---@class cameraControls
C = {}

---Sets the camera position
---@param x number
---@param y number
---@param z number
function C:setCamPos(x, y, z) end

---Sets the camera rotation
---@param pitch number
---@param yaw number
---@param roll number
function C:setCamRot(pitch, yaw, roll) end



---Common easing functions to smooth transitions and motion
---@class animationCurves
Easings = {}

---Sine easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInSine(progress) end

---Sine easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutSine(progress) end

---Sine easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutSine(progress) end

---Cubic easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInCubic(progress) end

---Cubic easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutCubic(progress) end

---Cubic easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutCubic(progress) end

---Quint easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInQuint(progress) end

---Quint easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutQuint(progress) end

---Quint easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutQuint(progress) end

---Circ easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInCirc(progress) end

---Circ easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutCirc(progress) end

---Circ easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutCirc(progress) end

---Elastic easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInElastic(progress) end

---Elastic easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutElastic(progress) end

---Elastic easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutElastic(progress) end

---Quad easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInQuad(progress) end

---Quad easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutQuad(progress) end

---Quad easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutQuad(progress) end

---Quart easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInQuart(progress) end

---Quart easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutQuart(progress) end

---Quart easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutQuart(progress) end

---Expo easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInExpo(progress) end

---Expo easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutExpo(progress) end

---Expo easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutExpo(progress) end

---Back easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInBack(progress) end

---Back easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutBack(progress) end

---Back easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutBack(progress) end

---Bounce easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInBounce(progress) end

---Bounce easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeOutBounce(progress) end

---Bounce easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:easeInOutBounce(progress) end

---A smoothstep-like function
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function Easings:cubicEase(progress) end



---Convenient helpers for inspecting and manipulating ItemStacks and rendering-related flags used by the mod
---@class itemUtilities
I = {}

---Check if an item matches a given item type
---@param stack any Item stack to check
---@param itemType any Item type to match against (from Items:get())
---@return boolean matches True if the item matches the type
function I:isOf(stack, itemType) end

---Check if an item is in a given tag
---@param stack any Item stack to check
---@param tag string Tag to check if item is in (from Tags:getVanillaTag() or Tags:getFabricTag())
---@return boolean matches True if the item is in the tag
function I:isIn(stack, tag) end

---Check if the given stack is empty
---@param stack any Item stack to check
---@return boolean state True if your holding nothing
function I:isEmpty(stack) end

---Check if the given stack is enchanted
---@param stack any Item stack to check
---@return boolean state True if the given stack is enchanted
function I:isEnchanted(stack) end

---idk i never used it
---@param stack any Item stack to check
---@return any noIdea I never used this, i genuinely have no idea what the fuck this returns
function I:getUseAction(stack) end

---The identifier of the item your holding (e.g., "minecraft:sea_pickle")
---@param stack any Item stack to check
---@return string name
function I:getName(stack) end

---The actual name of the item your holding (e.g., "Sea Pickle" or if renamed in an anvil "A Pickle or something")
---@param stack any Item stack to check
---@return string name
function I:getActualName(stack) end

---idk i never used it
---@param stack any Item stack to check
---@return any noIdea I never used this, could be anything, probably a number tho if you use your head
function I:getAttackDamage(stack) end

---If the item is a charged crossbow or something?? 😭
---@param stack any Item stack to check
---@return boolean boolean I never used this, but again, if you use your head you should come to the same conclution as me
function I:isChargedCrossbow(stack) end

---If its throwable ig
---@param stack any Item stack to check
---@return boolean useHead Im just guessing at this point and if i ever find up im NOT remembering to update this shit
function I:isThrowable(stack) end

---Whether the default engine transform should be applied
---@param stack any Item stack
function I:shouldTranslateItem(stack) end

---Force translate flag
---@param stack any Item stack
---@param bool boolean
function I:setTranslate(stack, bool) end



---Fetch Item instances from the registry
---@class itemRegistry
Items = {}

---Get an item by identifier
---@param identifier string Item by identifier (e.g., "minecraft:oak_sapling")
---@return any item Item by identifier
function Items:get(identifier) end



---Obtain TagKey<Item> entries for vanilla or Fabric tags
---@class itemTags
Tags = {}

---Get a vanilla tag by id
---@param id string Tag name (e.g., "swords")
---@return any key Vanilla item-tag key
function Tags:getVanillaTag(id) end

---Get a fabric tag by id
---@param id string Tag name (e.g., "swords")
---@return any key Fabric item-tag key
function Tags:getFabricTag(id) end



---Matrix transforms for the current MatrixStack and common math helpers
---most math helpers are missing as you should be using lua's math. instead
---@class matrixMathUtils
M = {}

---Scale the item
---@param matrices any
---@param scaleX number X scale factor
---@param scaleY number Y scale factor
---@param scaleZ number Z scale factor
function M:scale(matrices, scaleX, scaleY, scaleZ) end

---Move the item along the X axis
---@param matrices any
---@param amount number Distance to move
function M:moveX(matrices, amount) end

---Move the item along the Y axis
---@param matrices any
---@param amount number Distance to move
function M:moveY(matrices, amount) end

---Move the item along the Z axis
---@param matrices any
---@param amount number Distance to move
function M:moveZ(matrices, amount) end

---Move the item along all axis
---@param matrices any
---@param amountX number
---@param amountY number
---@param amountZ number
function M:translate(matrices, amountX, amountY, amountZ) end

---Rotate the item around the X axis
---@param matrices any
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function M:rotateX(matrices, degrees, originX, originY, originZ) end

---Rotate the item around the Y axis
---@param matrices any
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function M:rotateY(matrices, degrees, originX, originY, originZ) end

---Rotate the item around the Z axis
---@param matrices any
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function M:rotateZ(matrices, degrees, originX, originY, originZ) end

---Shear the item
---@param matrices any
---@param amountX number
---@param amountY number
---@param amountZ number
function M:shear(matrices, amountX, amountY, amountZ) end

---Clamp a value between two values
---@param value number Value to clamp
---@param min number Minimum value
---@param max number Maximum value
---@return number clamped The clamped value
function M:clamp(value, min, max) end



---M but for model parts
---@class modelAnimator
animator = {}

---Scale the selected UV indexes
---@param fromUV number
---@param toUV number
---@param scaleX number X scale factor
---@param scaleY number Y scale factor
---@param scaleZ number Z scale factor
function animator:scale(fromUV, toUV, scaleX, scaleY, scaleZ) end

---Move the selected UV indexes along the X axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator:moveX(fromUV, toUV, amount) end

---Move the selected UV indexes along the Y axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator:moveY(fromUV, toUV, amount) end

---Move the selected UV indexes along the Z axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator:moveZ(fromUV, toUV, amount) end

---Rotate the selected UV indexes around the X axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator:rotateX(fromUV, toUV, degrees, originX, originY, originZ) end

---Rotate the selected UV indexes around the Y axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator:rotateY(fromUV, toUV, degrees, originX, originY, originZ) end

---Rotate the selected UV indexes around the Z axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator:rotateZ(fromUV, toUV, degrees, originX, originY, originZ) end



---Read the client player's state, motion, and equipment for driving animations
---@class playerInfo
P = {}

---@param player any Player object from context or data
---@return boolean state
function P:isSneaking(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isOnGround(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isSwimming(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isClimbing(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isCrawling(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isSubmergedInWater(player) end

---@param player any Player object from context or data
---@return boolean state
function P:isUsingItem(player) end



---Get the player's X coordinate
---@param player any Player object from context or data
---@return number pos
function P:getX(player) end

---Get the player's Y coordinate
---@param player any Player object from context or data
---@return number pos
function P:getY(player) end

---Get the player's Z coordinate
---@param player any Player object from context or data
---@return number pos
function P:getZ(player) end

---Get the player's speed on the X axis
---@param player any Player object from context or data
---@return number speed
function P:getXSpeed(player) end

---Get the player's speed on the Y axis
---@param player any Player object from context or data
---@return number speed
function P:getYSpeed(player) end

---Get the player's speed on the Z axis
---@param player any Player object from context or data
---@return number speed
function P:getZSpeed(player) end

---Get the player's total speed
---@param player any Player object from context or data
---@return number speed
function P:getSpeed(player) end



---Get the player's yaw (looking left/right)
---@param player any Player object from context or data
---@return number yaw Yaw in degrees (-inf to inf)
function P:getYaw(player) end

---Get the player's pitch (looking up/down)
---@param player any Player object from context or data
---@return number pitch Pitch in degrees
function P:getPitch(player) end



---Get the item stack in the player's mainhand
---@param player any Player object from context or data
---@return string item
function P:getMainItem(player) end

---Get the item stack in the player's offhand
---@param player any Player object from context or data
---@return string item
function P:getOffhandItem(player) end

---No idea, never used it, probably which hand this instance of the script is running on tho (same as bl?)
---@param player any Player object from context or data
function P:getActiveHand(player) end



---Get the player's current age/ticks
---@param player any Player object from context or data
---@return number age Age in ticks
function P:getAge(player) end

---Check if item is currently cooling down
---@param item any The item you want to check
---@param player any Player object from context or data
---@return boolean state
function P:isItemCoolingDown(item, player) end

---The amount of times the player has swung something
---@param player any Player object from context or data
---@return number amount
function P:getSwingCount(player) end



---The block below the player
---@param player any Player object from context or data
---@param amount number How far below the player to check (0 inside legs, -1 standing on, 1, head ish)
---@return string block Block at the specified point (e.g., "minecraft:dirt")
function P:getBlockBelow(player, amount) end



---Play client-side sounds by vanilla sound id
---@class sounds
S = {}

---Play a sound
---@param sound string The sound id to play (e.g., "entity.player.levelup")
---@param volume number The volume to play the sound at
function S:playSound(sound, volume) end



---Provides methods for working with custom textures in scripts
---@class textureUtils
Texture = {}

---Load a texture for rendering
---@param namespace string Texture namespace (e.g., "minecraft")
---@param path string Texture path (e.g., "textures/particle/glowing_firefly.png")
---@return any texture Texture for use in particle rendering
function Texture:of(namespace, path) end

---Exposes keybind state for use in scripts
---@class bindManager
KeyBindManager = {}

---Checks is a key is pressed
---@param key number The key to check (JS Keycodes)
---@return boolean state Wheter the key is pressed or not
function KeyBindManager:isKeyPressed(key) end

---Particle manager API for creating and managing particles
---@class particleManager
particleManager = {}

---Add a new particle to the screen
---@param particles any particles variable from context
---@param gravity boolean Whether the particle is affected by gravity
---@param x number Initial X position
---@param y number Initial Y position
---@param z number Initial Z position
---@param dx number X position particle will move toward over its lifetime
---@param dy number Y position particle will move toward over its lifetime
---@param dz number Z position particle will move toward over its lifetime
---@param rx number Initial X rotation
---@param ry number Initial Y rotation
---@param rz number Initial Z rotation
---@param drx number X rotation particle will move toward over its lifetime
---@param dry number Y rotation particle will move toward over its lifetime
---@param drz number Z rotation particle will move toward over its lifetime
---@param size number Particle size
---@param texture any Texture from Texture:of()
---@param renderSpace any Render space ("ITEM", "SCREEN")
---@param hand any Hand from context or data
---@param lifetimeType string Lifetime type ("SPAWN", "OPACITY", "SCALE", "KEYFRAME")
---@param renderType string Render type ("ADDITIVE", "CUTOUT", "CUTOUT_L", "TRANSLUCENT", "TRANSLUCENT_L" and more that i cant remember)
---@param lifetime integer Total lifetime
---@param opacity integer Opacity (0-255)
---@param tickerFunction function|nil Optional ticker function for particle updates
function particleManager:addParticle(particles, gravity, x, y, z, dx, dy, dz, rx, ry, rz, drx, dry, drz, size, texture, renderSpace, hand, lifetimeType, renderType, lifetime, opacity, tickerFunction) end

---Block rendering control API
---@class renderAsBlock
renderAsBlock = {}

---Enable or disable block rendering for specific items
---@param blockId string Block identifier (e.g., "minecraft:oak_sapling")
---@param shouldRender boolean True to render as block
function renderAsBlock:put(blockId, shouldRender) end



---Debugger to print stuff to the screen
---@class debugger
debugger = {}

---Print something to the screen
---@param info any Info to print
function debugger:out(info) end



---What
---@class overlay
OverlayCommand = {}

---What the fuck
---@param texture any texture from Texture:of()
---@param opacity number opacity of the overlay (0 - 255)
---@param something string i dont know ("DEFAULT")
function OverlayCommand:of(texture, opacity, something) end

---Overlays, who would have thunkeded
---@class overlay
overlays = {}

---Overlay a texture on the players hand
---@param OverlayCommand any from OverlayCommand:of()
function overlays:add(OverlayCommand) end



---Container for all HMI variables
---@class context
---@field matrices any 
---@field bl boolean Which hand the item is in true for right, false for left (not main / offhand)
---@field swingProgress number
---@field player any The player object
---@field hand any The hand context
---@field mainHand boolean True if rendering the main hand
---@field deltaTime number Time since last frame
---@field equipProgress number Progress of equipping an item
---@field mainHandSwingProgress number
---@field offHandSwingProgress number 
---@field mainHandSwitchEvent boolean
---@field offHandSwitchEvent boolean
---@field swingMHand boolean
---@field swingOHand boolean
---@field interact boolean
---@field blockBreaking boolean
---@field item any The item this script is currently running for
---@field particles any

---Container for all HMI variables (model part animations)
---@class data
---@field bl boolean Which hand the item is in true for right, false for left (not main / offhand)
---@field swingProgress number
---@field player any The player object
---@field hand any The hand context
---@field mainHand boolean True if rendering the main hand
---@field deltaTime number Time since last frame
---@field equipProgress number Progress of equipping an item
---@field mainHandSwingProgress number
---@field offHandSwingProgress number
---@field mainHandSwitchEvent boolean
---@field offHandSwitchEvent boolean
---@field swingMHand boolean
---@field swingOHand boolean
---@field interact boolean
---@field blockBreaking boolean
---@field item any The item this script is currently running for



---Storage for persistant variables
---@class global
global = {}

---Container for all HMI variables
---@type context
context = {}

---Container for all HMI variables (item_model and item_model_addon)
---@type data
data = {}