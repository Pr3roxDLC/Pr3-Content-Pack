--- STEAMODDED HEADER
--- MOD_NAME: Pr3's Content Pack
--- MOD_ID: Pr3sContentPackConsumables
--- MOD_AUTHOR: [Pr3roxDLC]
--- MOD_DESCRIPTION: Adds a variety of new cards to the game.
--- DISPLAY_NAME: Pr3's Content Pack
--- PREFIX: Pr3C
--- BADGE_COLOUR: 004225




SMODS.Consumable {
set = "Spectral",
name = "Polution",
key = "polution",
discovered = true,
config = {
    -- This will add a tooltip for seal when hovering on spectral.
    -- `s` means seal (set), `seel` is mod prefix, `_seal` is added at the end automatically for all seals
    mod_conv = 'Pr3S_green_seal',
    -- Tooltip args
    seal = {},
    -- How many cards can be selected.
    max_highlighted = 1,
},
loc_txt = {
    name = 'Honk',
    text = {
        "Select {C:attention}#1#{} card to",
        "apply {C:attention}Green Seal{}"
    }
},
loc_vars = function(self, info_queue, center)
    -- Description vars
    return {vars = {center.ability.max_highlighted}}
end,
cost = 4,
atlas = "pr3_consumables_atlas",
pos = {x=0, y=0},
use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            for i = 1, card.ability.max_highlighted do
                local highlighted = G.hand.highlighted[i]

                if highlighted then
                    highlighted:set_seal('Pr3S_green')
                else
                    break
                end
            end
            return true
        end
    }))
end
}

SMODS.Atlas {
    key = "pr3_consumables_atlas",
    path = "consumables.png",
    px = 71,
    py = 95
}