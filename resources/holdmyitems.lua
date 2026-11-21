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
---@return "none"|"eat"|"drink"|"block"|"bow"|"crossbow"|"spear"|"trident"|"brush"|"spyglass"|"toot_horn"|string
function item.getUseAction() end

---Check if an item matches a given item type
---@param id string Item type to match against (e.g., "minecraft:diamond_sword")
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
---@return boolean boolean I never used this, but again, if you use your head you should come to the same conclusion as me (boolean)
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

---@return number damage Attack damage of the held item (0 for non-weapons)
function item.getAttackDamage() end

---@return {canDamage:boolean, canDismount:boolean, canKnockBack:boolean, hitImpact:any} data
function item.getSpearData() end

---Render the held item as a block (or not)
---@param state boolean
function item.renderAsBlock(state) end

---Set the swing speed for the held item
---@param ticks integer
function item.setSwingSpeed(ticks) end



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
---@return number sin the sinus of the provided number
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
function jmath.ceil(num) end

---Rounds a number to the closest whole number
---@param num number The number to round
---@return number number The rounded number
function jmath.round(num) end

---@param num number
---@return number
function jmath.abs(num) end



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

---@return number fwdVelocity
function player.getForwardVelocity() end

---@return number strafeVelocity
function player.getStrafeVelocity() end

---@return boolean state
function player.isSneakWalking() end

---@return boolean state
function player.isSwimSprinting() end

---@return number climbDirection
function player.getClimbDirection() end

---@return boolean state
function player.isLowHunger() end

---@return boolean state
function player.isLowHealth() end

---@return boolean state
function player.isFlying() end

---@return boolean state
function player.isFallFlying() end

---@return boolean state
function player.isSleeping() end

---@return boolean state
function player.isPassenger() end

---@return boolean state
function player.isOnFire() end

---@return boolean state
function player.isInLava() end

---@return boolean state
function player.isBlocking() end

---@return boolean state
function player.isAlive() end

---@return number foodLevel
function player.getFoodLevel() end

---@return number saturation
function player.getSaturation() end

---@return number airSupply
function player.getAirSupply() end

---@return number maxHealth
function player.getMaxHealth() end

---@return number absorptionAmount
function player.getAbsorption() end

---@return boolean state
function player.isSneaking() end

---@return number age
function player.getAge() end

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

---@return boolean state
function player.isItemCoolingDown() end

---@return number health
function player.getHealth() end

---@return number xCoord
function player.getX() end

---@return number yCoord
function player.getY() end

---@return number zCoord
function player.getZ() end

---@return table speedVector {x, y, z}
function player.getSpeedVector() end

---@return number horizontalSpeed
function player.getHorizontalSpeed() end

---@return number verticalSpeed
function player.getVerticalSpeed() end

---@return number speed
function player.getSpeed() end

---@return number yaw
function player.getYaw() end

---@return number pitch
function player.getPitch() end

---@return number frozenPercent
function player.getFreezingScale() end

---@param id string
---@return boolean state
function player.isStandingOnTag(id) end

---@return string block
function player.getStandingBlock() end

---@return string biomeId
function player.getBiomeId() end

---@return "MAIN_HAND"|"OFF_HAND" activeHand
function player.getActiveHand() end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Play client-side sounds by vanilla sound id
---@class sound
Sound = {}

---Play a sound
---@param sound string The sound id to play (e.g., "entity.player.levelup")
---@param volume number The volume to play the sound at
---@param pitch number The pitch to play the sound at
function Sound.playSound(sound, volume, pitch) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Provides methods for working with custom textures in scripts
---@class textureUtils
Texture = {}

---Load a texture for rendering
---@param namespace string Texture namespace (e.g., "minecraft")
---@param path string Texture path (e.g., "textures/particle/glowing_firefly.png")
---@return any texture Texture for use in particle rendering
function Texture.of(namespace, path) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Exposes keybind state for use in scripts
---@class bindManager
keybind = {}

---@param keyCode number
---@return boolean isPressed
function keybind.isPressed(keyCode) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---@alias Vector3 number[]|{x:number, y:number, z:number} # {x, y, z}
---@alias RGBColor number[]|{r:number, g:number, b:number} # (0 - 1) per channel
---@alias ParticleAnchor "camera"|"view"|"screen"|"hand"|"arm"|"item"
---@alias ParticleFollow "free"|"attached"|"smooth"
---@alias ParticleBlend "translucent"|"alpha"|"normal"|"additive"|"add"
---@alias ParticleLight "world"|"fullbright"|integer # "world", "fullbright", or a light level (0 - 15)
---@alias ParticleHand "main"|"off"|"main_hand"|"off_hand" # defaults to the scripts hand

---Options table for particles.spawn
---@class ParticleSpawnOptions
---@field texture? string Single texture, e.g. "textures/particle/flame"
---@field textures? string[] Animation frames (played in order)
---@field frameTicks? integer Ticks per frame when using textures (min 1)
---@field loop? boolean Loop the animation when using textures
---@field loopFrames? boolean Alias for loop
---@field anchor? ParticleAnchor Space that pos and vel are relative to (default: "item")
---@field hand? ParticleHand Which hand the particle belongs to
---@field pos? Vector3 Spawn position in anchor space
---@field vel? Vector3 Initial velocity
---@field velSpace? "world"|"anchor" Space vel is expressed in (defaults to the anchor space)
---@field follow? ParticleFollow "free" = converted to world coords. "attached" = glued to the anchor. "smooth" = trails the anchor
---@field followSpeed? number Trailing speed when follow = "smooth"
---@field size? number Initial size
---@field rotation? number Initial rotation
---@field spin? number Rotation speed
---@field color? RGBColor Color tint
---@field alpha? number Opacity (0 - 1)
---@field blend? ParticleBlend Blend mode (default: "translucent")
---@field light? ParticleLight Lighting mode
---@field collision? boolean Collide with the world
---@field occlude? boolean Hidden behind blocks
---@field gravity? number Gravity per tick
---@field drag? number Velocity multiplier per tick
---@field lifetime? integer Life span in ticks
---@field fadeIn? integer Fade-in duration in ticks
---@field fadeOut? integer Fade-out duration in ticks
---@field growIn? integer Grow-in duration in ticks
---@field shrinkOut? integer Shrink-out duration in ticks
---@field data? table Custom per-particle data, readable with p.data in the ticker function
---@field ticker? (fun(p: Particle))|string Per-tick callback function

---@class Particle
---@field localX number Particle's X position
---@field localY number Particle's Y position
---@field localZ number Particle's Z position
---@field vx number Particle's X velocity
---@field vy number Particle's Y velocity
---@field vz number Particle's Z velocity
---@field follow ParticleFollow
---@field followSpeed number
---@field gravity number
---@field drag number
---@field age integer The particles age in ticks
---@field lifetime integer
---@field progress number The particles age divided by lifetime
---@field size number
---@field rotation number
---@field spin number
---@field alpha number
---@field dead boolean
---@field spawned boolean
---@field fullbright boolean
---@field light ParticleLight
---@field collision boolean
---@field onGround boolean
---@field occlude boolean
---@field blend ParticleBlend
---@field hand ParticleHand
---@field data table
local Particle = {}

---Kill the particle early
function Particle:kill() end

---Set the particle's tint
---@param r number
---@param g number
---@param b number
function Particle:setColor(r, g, b) end

---Set the particle's velocity
---@param x number
---@param y number
---@param z number
function Particle:setVelocity(x, y, z) end

---Move the particle
---@param x number
---@param y number
---@param z number
function Particle:teleport(x, y, z) end

---Change the particle's texture
---@param texture string
function Particle:setTexture(texture) end

---Particle manager API for creating and managing particles
---@class particles
particles = {}

---Spawn a particle. Call once per tick at most (guard with context.firstStep).
---@param options ParticleSpawnOptions
---@return Particle|nil particle
function particles.spawn(options) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Debugger to print stuff to the screen
---@class debugger
debugger = {}



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

---@param script string The path of the script to load (e.g. "minecraft:holdmyitems/hand/swings.lua")
---@param context string What the script should run for ("hand", "hand_relative", "item", "item_model")
function Loader:load(script, context) end



------------------------ /////////////////////// Three spaces was not enough for me to notice so im just doing anything at this point to try and sepparete things 😭 \\\\\\\\\\\\\\\\\\\\\\\\ ------------------------



---Container for all HMI variables
---@class context
---@field swingProgress number
---@field equipProgress number
---@field isLeft boolean Which hand the item is in true for right, false for left (not main / offhand)
---@field isMain boolean True if rendering the main hand
---@field hand "MAIN_HAND"|"OFF_HAND"
---@field deltaTime number
---@field mainHandSwingProgress number
---@field offHandSwingProgress number 
---@field mainHandSwitchEvent number
---@field offHandSwitchEvent number
---@field interact number
---@field blockBreaking number
---@field step number
---@field steps number
---@field firstStep boolean
---@field logicDeltaTime number
---@field signalTick number
---@field signalEventCount number
---@field swingMHand boolean
---@field swingOHand boolean
---@field swingedMainHand boolean
---@field swingedOffHand boolean
---@field interactedMainHand boolean
---@field interactedOffHand boolean

---Container for all HMI variables
---@class context
context = {}



---Storage for persistant variables
---@class shared
shared = {}