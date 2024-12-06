--- STEAMODDED HEADER
--- MOD_NAME: Pr3's Content Pack
--- MOD_ID: Pr3sContentPackSeals
--- MOD_AUTHOR: [Pr3roxDLC]
--- MOD_DESCRIPTION: Adds a variety of new cards to the game.
--- DISPLAY_NAME: Pr3's Content Pack
--- PREFIX: Pr3S
--- BADGE_COLOUR: 004225
--- 
SMODS.Atlas {
    key = "seal_atlas",
    path = "seals.png",
    px = 71,
    py = 95
}


SMODS.Seal {
    name = "green_seal",
    key = "green",
    badge_colour = HEX("53E049"),
    config = {},
    loc_txt = {
        name = 'Green Seal',
        text = {
            'Played cards get put back',
            'into the deck as remaining cards'
        }
    },
    atlas = "seal_atlas",
    pos = { x = 0, y = 0 },
    -- self - this seal prototype
    -- card - card this seal is applied to
    calculate = function(self, card, context)
        -- repetition_only context is used for red seal retriggers
        if context.remove_playing_cards then
            return {
                mult = self.config.mult,
                chips = self.config.chips,
                dollars = self.config.money,
                x_mult = self.config.x_mult
            }
        end
    end,
}

