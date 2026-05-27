Config = {}

Config.VehicleModel = 'g632019' -- Modello auto richiesto

-- Colori RGB per ogni gang
Config.Gangs = {
    ['ballas']   = { r = 148, g = 0, b = 211 }, -- Viola
    ['families'] = { r = 0, g = 255, b = 0 },   -- Verde
    ['vagos']    = { r = 255, g = 255, b = 0 }, -- Giallo
    ['marabunta']= { r = 0, g = 191, b = 255 }  -- Azzurro
}

-- Definizione Ghetti in vec3
Config.Ghettos = {
    ['grove_street'] = {
        name = "Grove Street",
        center = vector3(-114.3, -1928.8, 27.7),
        radius = 100.0,
        garage = vector3(-116.82, -1936.63, 27.7),
        mechanic = vector3(-98.05, -1908.43, 27.27)
    },
    ['fudge_lane'] = {
        name = "Fudge Lane El Burro",
        center = vector3(1381.16, -1497.02, 63.22),
        radius = 100.0,
        garage = vector3(1374.84, -1497.24, 63.22),
        mechanic = vector3(1389.92, -1501.99, 63.22)
    }
}

Config.ConquestTime = 60 -- Secondi per conquistare un territorio