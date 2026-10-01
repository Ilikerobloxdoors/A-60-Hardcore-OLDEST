local Creator = loadstring(game:HttpGet(
        "https://pastebin.com/raw/0fSnvfGt"
    ))()

    local entity = Creator.createEntity({
        CustomName = "A-60",

        Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/A-60-Hardcore-OLDEST/main/A-60%20OLDEST.rbxm",

        Speed = 400,
        DelayTime = 4.3,

        HeightOffset = 0,
        CanKill = true,
        KillRange = 50,

        BreakLights = true,
        BackwardsMovement = false,

        FlickerLights = {
            true,
            1.5,
        },

        Cycles = {
            Min = 2,
            Max = 6,
            WaitTime = 0.1,
        },

        CamShake = {
            true,
            {28, 35, 0.1, 1},
            100,
        },

        Jumpscare = {
            true,
            {
                Image1 = "",
                Image2 = "",

                Shake = false,

                Sound1 = {
                    140615626179933,
                    {
                        Volume = 16,
                    },
                },

                Sound2 = {
                    140615626179933,
                    {
                        Volume = 16,
                    },
                },

                Flashing = {
                    true,
                    Color3.fromRGB(255, 0, 0),
                },

                Tease = {
                    false,
                    Min = 0,
                    Max = 0,
                },
            },
        },

        CustomDialog = {
            "You died to A-60...",
        },
    })

    entity.Debug.OnEntitySpawned = function(entityTable)
        print("Old Hardcore A-60 spawned:", entityTable.Model)
    end

    entity.Debug.OnEntityDespawned = function(entityTable)
        print("Old Hardcore A-60 despawned:", entityTable.Model)

        -- Old Hardcore ending sting
        task.spawn(function()
            local sting = Instance.new("Sound")
            sting.Name = "A60_End_Sting"
            sting.SoundId = "rbxassetid://140615626179933"
            sting.Volume = 16
            sting.PlaybackSpeed = 0.73
            sting.Parent = workspace

            local pitch = Instance.new("PitchShiftSoundEffect")
            pitch.Octave = 0.5
            pitch.Parent = sting

            local distortion = Instance.new("DistortionSoundEffect")
            distortion.Parent = sting

            sting:Play()

            sting.Ended:Wait()
            sting:Destroy()
        end)
    end

    entity.Debug.OnEntityStartMoving = function(entityTable)
        print("Old Hardcore A-60 started moving")
    end

    entity.Debug.OnEntityFinishedRebound = function(entityTable)
        print("Old Hardcore A-60 finished rebound")
    end

    entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
        print("Old Hardcore A-60 entered room:", room)
    end

    entity.Debug.OnLookAtEntity = function(entityTable)
        print("Player looked at Old Hardcore A-60")
    end

    entity.Debug.OnDeath = function(entityTable)
        warn("Player died to Old Hardcore A-60")

        -- Old Hardcore A-60 jumpscare
        task.spawn(function()
            pcall(function()
                loadstring(game:HttpGet(
                    "https://raw.githubusercontent.com/Francisco1692qzd/Doors-Hotel-Hardcore/refs/heads/main/a60jumpscare.lua"
                ))()
            end)
        end)
    end

    Creator.runEntity(entity)
