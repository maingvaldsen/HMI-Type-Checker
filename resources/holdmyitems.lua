---@meta

-- // ✦ Made by maingvaldsen ✦ \\ --

---DOES NOT CURRENTLY EXIST IN 6.0!!!!!!!
---@class cameraControls
C = {}

---Sets the camera position
---@param x number
---@param y number
---@param z number
function C.setCamPos(x, y, z) end

---Sets the camera rotation
---@param pitch number
---@param yaw number
---@param roll number
function C.setCamRot(pitch, yaw, roll) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Common easing functions to smooth transitions and motion
---@class animationCurves
easings = {}

---Sine easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInSine(progress) end

---Sine easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutSine(progress) end

---Sine easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutSine(progress) end

---Cubic easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInCubic(progress) end

---Cubic easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutCubic(progress) end

---Cubic easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutCubic(progress) end

---Quint easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInQuint(progress) end

---Quint easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutQuint(progress) end

---Quint easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutQuint(progress) end

---Circ easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInCirc(progress) end

---Circ easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutCirc(progress) end

---Circ easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutCirc(progress) end

---Elastic easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInElastic(progress) end

---Elastic easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutElastic(progress) end

---Elastic easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutElastic(progress) end

---Quad easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInQuad(progress) end

---Quad easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutQuad(progress) end

---Quad easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutQuad(progress) end

---Quart easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInQuart(progress) end

---Quart easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutQuart(progress) end

---Quart easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutQuart(progress) end

---Expo easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInExpo(progress) end

---Expo easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutExpo(progress) end

---Expo easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutExpo(progress) end

---Back easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInBack(progress) end

---Back easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutBack(progress) end

---Back easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutBack(progress) end

---Bounce easingstyle in
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInBounce(progress) end

---Bounce easingstyle out
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeOutBounce(progress) end

---Bounce easingstyle inOut
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.easeInOutBounce(progress) end

---A smoothstep-like function
---@param progress number Progress from 0 - 1
---@return number ease Progress value in the curve
function easings.cubicEase(progress) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Convenient helpers for inspecting and manipulating ItemStacks and rendering-related flags used by the mod
---@class itemUtilities
item = {}

---idk i never used it
---@return any noIdea I never used this, i genuinely have no idea what the fuck this returns
function item.getUseAction() end

---Check if an item matches a given item type
---@param id any Item type to match against (from Items.get())
---@return boolean matches True if the item matches the type
function item.isOf(id) end

---Check if an item is in a given tag
---@param tag string Tag to check if item is in (from Tags.getVanillaTag() or Tags.getFabricTag())
---@return boolean matches True if the item is in the tag
function item.isIn(tag) end

---The identifier of the item your holding (e.g., "minecraft:sea_pickle")
---@return string name
function item.getId() end

---The name of the item your holding (e.g., "Sea Pickle" or if renamed in an anvil "A Pickle or something")
---@return string name
function item.getName() end

---Check if the given stack is empty
---@return boolean state True if your holding nothing
function item.isEmpty() end

---If the item is a charged crossbow or something?? 😭
---@return boolean boolean I never used this, but again, if you use your head you should come to the same conclution as me
function item.isChargedCrossbow() end

---Check if the given stack is a block
---@return boolean state True if the item is a block
function item.isBlock() end

---Check if the given stack is a lantern
---@return boolean state True if the item is a lantern
function item.isLantern() end

---Check if the given stack is enchanted
---@return boolean state True if the given stack is enchanted
function item.isEnchanted() end



---Fetch Item instances from the registry
---@class itemRegistry
Items = {}

---Get an item by identifier
---@param identifier string Item by identifier (e.g., "minecraft:oak_sapling")
---@return any item Item by identifier
function Items.get(identifier) end



---Obtain TagKey<Item> entries for vanilla or Fabric tags
---@class itemTags
Tags = {}

---Get a vanilla tag by id
---@param id string Tag name (e.g., "swords")
---@return any key Vanilla item-tag key
function Tags.getVanillaTag(id) end

---Get a fabric tag by id
---@param id string Tag name (e.g., "swords")
---@return any key Fabric item-tag key
function Tags.getFabricTag(id) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Matrix transforms for the current MatrixStack and common math helpers
---most math helpers are missing as you should be using lua's math instead (math.)
---@class matrixMathUtils
matrices = {}

---Move the item along the X axis
---@param amount number Distance to move
function matrices.moveX(amount) end

---Move the item along the Y axis
---@param amount number Distance to move
function matrices.moveY(amount) end

---Move the item along the Z axis
---@param amount number Distance to move
function matrices.moveZ(amount) end

---Move the item along all axis
---@param amountX number
---@param amountY number
---@param amountZ number
function matrices.translate(amountX, amountY, amountZ) end

---Rotate the item around the X axis
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function matrices.rotateX(degrees, originX, originY, originZ) end

---Rotate the item around the Y axis
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function matrices.rotateY(degrees, originX, originY, originZ) end

---Rotate the item around the Z axis
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function matrices.rotateZ(degrees, originX, originY, originZ) end

---Shear the item
---@param amountX number
---@param amountY number
---@param amountZ number
function matrices.shear(amountX, amountY, amountZ) end

---Scale the item
---@param scaleX number X scale factor
---@param scaleY number Y scale factor
---@param scaleZ number Z scale factor
function matrices.scale(scaleX, scaleY, scaleZ) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---@class javaMath
jmath = {}

---Pie, yum
---@return number pi The value of pi
function jmath.PI() end

---Get the sinus of a number
---@param num number Number to get the sinus of
---@return number sin the sinuse of the provided number
function jmath.sin(num) end

---Get the cosinus of a number
---@param num number Number to get the cosinus of
---@return number cos the cosinus of the provided number
function jmath.cos(num) end

---Clamp a number betwean two values
---@param num number Number to clamp
---@param min number The minimum the number can be
---@param max number The maximum the number can be
---@return number number The clamped number
function jmath.clamp(num, min, max) end

---Rounds a number down
---@param num number The number to floor
---@return number number The floored number
function jmath.floor(num) end

---Rounds a number down
---@param num number The number to floor
---@return number number The floored number
function jmath.floor(num) end

---Lerps a number linearly from one value to another
---@param time number A number betwean 1 and 0 which represents where on the graph you are getting the number
---@param start number Where the graph should start
---@param stop number Where the graph should end
---@return number val What number is at the provided time in the graph
function jmath.lerp(time, start, stop) end

---@param a number
---@param b number
---@return number num
function jmath.pow(a, b) end

---Rounds a number up
---@param num number The number to round
---@return number number The rounded number
function jmath.floor(num) end

---Rounds a number to the closest whole number
---@param num number The number to round
---@return number number The rounded number
function jmath.round(num) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---matrices but for model parts
---@class modelAnimator
animator = {}

---Render the model part pivot point at 
---@param x number X offset
---@param y number Y offset
---@param z number z offset
function animator.renderPivot(x, y, z) end

---Scale the selected UV indexes
---@param fromUV number
---@param toUV number
---@param scaleX number X scale factor
---@param scaleY number Y scale factor
---@param scaleZ number Z scale factor
function animator.scale(fromUV, toUV, scaleX, scaleY, scaleZ) end

---Move the selected UV indexes along the X axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator.moveX(fromUV, toUV, amount) end

---Move the selected UV indexes along the Y axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator.moveY(fromUV, toUV, amount) end

---Move the selected UV indexes along the Z axis
---@param fromUV number
---@param toUV number
---@param amount number Distance to move
function animator.moveZ(fromUV, toUV, amount) end

---Rotate the selected UV indexes around the X axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator.rotateX(fromUV, toUV, degrees, originX, originY, originZ) end

---Rotate the selected UV indexes around the Y axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator.rotateY(fromUV, toUV, degrees, originX, originY, originZ) end

---Rotate the selected UV indexes around the Z axis
---@param fromUV number
---@param toUV number
---@param degrees number Rotation in degrees
---@param originX number|nil Optional pivot point X position
---@param originY number|nil Optional pivot point Y position
---@param originZ number|nil Optional pivot point Z position
function animator.rotateZ(fromUV, toUV, degrees, originX, originY, originZ) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Read the client player's state, motion, and equipment for driving animations
---@class playerInfo
player = {}

---@return boolean state
function player.isSneaking() end

---@return boolean state
function player.isSprinting() end

---@return boolean state
function player.isUsingItem() end

---@return boolean state
function player.isOnGround() end

---@return boolean state
function player.isSwimming() end

---@return boolean state
function player.isClimbing() end

---@return boolean state
function player.isCrawling() end

---@return boolean state
function player.isSubmergedInWater() end

---@return boolean state
function player.isTouchingWater() end

---@return boolean state
function player.isUsingRiptide() end

---@return boolean state
function player.canFreeze() end

---@return boolean state
function player.isInPowderSnow() end

---@return boolean state
function player.isRaining() end

---Check if item is currently cooling down
---@param item any The item you want to check
---@return boolean state
function player.isItemCoolingDown(item) end

---Get the player's health
---@return number health
function player.getHealth() end

---Get the player's X coordinate
---@return number pos
function player.getX() end

---Get the player's Y coordinate
---@return number pos
function player.getY() end

---Get the player's Z coordinate
---@return number pos
function player.getZ() end

---Get the vector of the player's speed
---@return number x
---@return number y
---@return number z
function player.getSpeedVector() end

---Get the player's total speed
---@return number speed
function player.getSpeed() end

---Get the player's yaw (looking left/right)
---@return number yaw Yaw in degrees (-inf to inf)
function player.getYaw() end

---Get the player's pitch (looking up/down)
---@return number pitch Pitch in degrees
function player.getPitch() end

---@return number scale
function player.getFreezingScale() end

---Returns block ID string of the block directly under the player
---@return string block The block (e.g., "minecraft:dirt")
function player.getStandingBlock() end

---@return string id
function player.getBiomeId() end

function player.getActiveHand() end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---DOES NOT CURRENTLY EXIST IN 6.0!!!!!!!
---Play client-side sounds by vanilla sound id
---@class sounds
S = {}

---Play a sound
---@param sound string The sound id to play (e.g., "entity.player.levelup")
---@param volume number The volume to play the sound at
function S.playSound(sound, volume) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Provides methods for working with custom textures in scripts
---@class textureUtils
Texture = {}

---Load a texture for rendering
---@param namespace string Texture namespace (e.g., "minecraft")
---@param path string Texture path (e.g., "textures/particle/glowing_firefly.png")
---@return any texture Texture for use in particle rendering
function Texture.of(namespace, path) end

---Exposes keybind state for use in scripts
---@class bindManager
KeyBindManager = {}

---Checks is a key is pressed
---@param key number The key to check (JS Keycodes)
---@return boolean state Wheter the key is pressed or not
function KeyBindManager.isKeyPressed(key) end

---DOES NOT CURRENTLY EXIST IN 6.0!!!!!!!
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
---@param texture any Texture from Texture.of()
---@param renderSpace any Render space ("ITEM", "SCREEN")
---@param hand any Hand from context or data
---@param lifetimeType string Lifetime type ("SPAWN", "OPACITY", "SCALE", "KEYFRAME")
---@param renderType string Render type ("ADDITIVE", "CUTOUT", "CUTOUT_L", "TRANSLUCENT", "TRANSLUCENT_L" and more that i cant remember)
---@param lifetime integer Total lifetime
---@param opacity integer Opacity (0-255)
---@param tickerFunction function|nil Optional ticker function for particle updates
function particleManager.addParticle(particles, gravity, x, y, z, dx, dy, dz, rx, ry, rz, drx, dry, drz, size, texture, renderSpace, hand, lifetimeType, renderType, lifetime, opacity, tickerFunction) end

---Block rendering control API
---@class renderAsBlock
renderAsBlock = {}

---Enable or disable block rendering for specific items
---@param blockId string Block identifier (e.g., "minecraft:oak_sapling")
---@param shouldRender boolean True to render as block
function renderAsBlock.put(blockId, shouldRender) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Debugger to print stuff to the screen
---@class debugger
debugger = {}

---Print something to the screen
---@param info any Info to print
function debugger.out(info) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---What
---@class overlay
OverlayCommand = {}

---Could this not just have been overlays.add 😭
---@param texture any texture from Texture.of()
---@param opacity number opacity of the overlay (0 - 255)
---@param something string i dont know ("DEFAULT")
function OverlayCommand.of(texture, opacity, something) end

---Overlays, who would have thunkeded
---@class overlay
overlays = {}

---Overlay a texture on the players hand
---@param OverlayCommand any from OverlayCommand.of()
function overlays.add(OverlayCommand) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------


---The keyframe system
---@class keyframe
keyframe = {}

function keyframe.play() end

function keyframe.blendTo() end

function keyframe.stop() end

function keyframe.stopLayer() end

function keyframe.stopAll() end

function keyframe.pause() end

function keyframe.resume() end

function keyframe.restart() end

function keyframe.setProgress() end

function keyframe.progress() end

function keyframe.setTime() end

function keyframe.time() end

function keyframe.setSpeed() end

function keyframe.setLoopMode() end

function keyframe.setWeight() end

function keyframe.fadeTo() end

function keyframe.weight() end

function keyframe.targetWeight() end

function keyframe.setBlendMode() end

function keyframe.setBlendEasing() end

function keyframe.setAutoFadeOut() end

function keyframe.setPriority(priority) end

---@return boolean playing Whether or not the animation is playing
function keyframe.isPlaying() end

---@return boolean exists Whether the animation exists or not
function keyframe.exists() end

---@return keyframe anim The animation i would assume
function keyframe.find() end

---@return string name The name of the animation
function keyframe.name() end

---@return number length The length of the animation
function keyframe.length() end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---@class loader
Loader = {}

---@param script string The path of the script to laod (e.g. "minecraft:holdmyitems/hand/swings.lua")
---@param context string What the script should run for ("hand", "hand_relative", "item", "item_model")
function Loader:load(script, context) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Container for all HMI variables
---@class context
---@field swingProgress number
---@field equipProgress number Progress of equipping an item
---@field isLeft boolean Which hand the item is in true for right, false for left (not main / offhand)
---@field isMain boolean True if rendering the main hand
---@field deltaTime number Time since last frame
---@field mainHandSwingProgress number
---@field offHandSwingProgress number 
---@field mainHandSwitchEvent boolean
---@field offHandSwitchEvent boolean
---@field interact boolean
---@field blockBreaking boolean
---@field hand any The hand context

---Container for all HMI variables
---@class context
context = {}



---Storage for persistant variables
---@class global
shared = {}