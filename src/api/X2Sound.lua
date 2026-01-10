---@meta _

---@class X2Sound
X2Sound = {} -- api/X2Sound

---Checks if the specified sound is currently playing.
---@param soundId number The ID of the sound to check.
---@return boolean playing `true` if the sound is playing, `false` otherwise.
---@nodiscard
function X2Sound:IsPlaying(soundId) end

---@FIXME: Broken. Does not appear to work.
---Plays music from the specified sound pack item.
---@param soundPackItemName string The name of the sound pack item.
function X2Sound:PlayMusic(soundPackItemName) end

---Plays a UI sound and returns its sound instance ID.
---@param soundName SOUND_NAME The name of the sound to play.
---@param duplicable? boolean If true, allows the sound to play multiple times concurrently; defaults to false.
---@return number soundId The ID of the sound instance. @TODO: 0 if already playing and not duplicable
function X2Sound:PlayUISound(soundName, duplicable) end

---Stops the currently playing music.
function X2Sound:StopMusic() end

---Stops the sound instance with the specified ID.
---@param soundId number The ID of the sound to stop.
function X2Sound:StopSound(soundId) end
