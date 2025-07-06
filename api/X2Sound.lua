---@meta _

X2Sound = {} -- api/X2Sound

---Returns a boolean indicating the the `soundId` is currently playing.
---@param soundId number
---@return boolean isPlaying
function X2Sound:IsPlaying(soundId) end

---TODO:
---Broken. Doesnt appear to work.
---@param soundPackItemName string
function X2Sound:PlayMusic(soundPackItemName) end

---Plays a [SOUND_NAME](lua://SOUND_NAME) and returns the `soundId` of that sound instance. 
---@param PlayUISound SOUND_NAME [SOUND_NAME](lua://SOUND_NAME)
---@param duplicable boolean
---@return number soundId
function X2Sound:PlayUISound(PlayUISound, duplicable) end

---TODO:
---Unsure if this works.
function X2Sound:StopMusic() end

---Stops playing the sound instance with the `soundId`.
---@param soundId number
function X2Sound:StopSound(soundId) end