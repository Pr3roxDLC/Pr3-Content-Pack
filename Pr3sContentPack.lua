--- STEAMODDED HEADER
--- MOD_NAME: Pr3's Content Pack
--- MOD_ID: Pr3sContentPackJokers
--- MOD_AUTHOR: [Pr3roxDLC]
--- MOD_DESCRIPTION: Adds a variety of new cards to the game.
--- DISPLAY_NAME: Pr3's Content Pack
--- PREFIX: Pr3J
--- BADGE_COLOUR: 004225

----------------------------------------------
------------MOD CODE -------------------------
--Creates an atlas for cards to use
SMODS.Atlas {
  -- Key for code to find it with
  key = "jokers",
  -- The name of the file, for the code to pull the atlas from
  path = "jokers.png",
  -- Width of each sprite in 1x size
  px = 71,
  -- Height of each sprite in 1x size
  py = 95
}
-- The Tetrahedron
SMODS.Joker {
  key = 'the_tetrahedron',
  loc_txt = {
    name = 'The Tetrahedron',
    text = {
       "Retrigger first",
      "played {C:attention}3{} an additional {C:attention}#1#{} times"
    }
  },
  discovered = true,
  blueprint_compat = true,
  config = { extra = { repetitions = 3 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.repetitions } }
  end,
  calculate = function(self, card, context)
    -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
    -- The "not context.repetition_only" is there to keep it separate from seals.
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
      -- context.other_card is something that's used when either context.individual or context.repetition is true
      -- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.

      local first_of_rank = nil
      for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == 3 then first_of_rank = context.scoring_hand[i]; break end
      end
      if context.other_card == first_of_rank then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.repetitions,
          -- The card the repetitions are applying to is context.other_card
          card = context.other_card
        }
      end
    end
  end
}
-- The Cube
SMODS.Joker {
  key = 'the_cube',
  loc_txt = {
    name = 'The Cube',
    text = {
      "Retrigger first",
      "played {C:attention}4{} an additional {C:attention}#1#{} times"
    }
  },
  discovered = true,
  blueprint_compat = true,
  config = { extra = { repetitions = 3 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.repetitions } }
  end,
  calculate = function(self, card, context)
    -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
    -- The "not context.repetition_only" is there to keep it separate from seals.
    if context.cardarea == G.play and context.repetition and not context.repetition_only then

      local first_of_rank = nil
      for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == 4 then first_of_rank = context.scoring_hand[i]; break end
      end
      if context.other_card == first_of_rank then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.repetitions,
          -- The card the repetitions are applying to is context.other_card
          card = context.other_card
        }
      end
    end
  end
}
-- The Octahedron
SMODS.Joker {
  key = 'the_octahedron',
  loc_txt = {
    name = 'The Octahedron',
    text = {
      "Retrigger first",
      "played {C:attention}3{} an additional {C:attention}#1#{} times"
    }
  },
  discovered = true,
  blueprint_compat = true,
  config = { extra = { repetitions = 4 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.repetitions } }
  end,
  calculate = function(self, card, context)
    -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
    -- The "not context.repetition_only" is there to keep it separate from seals.
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
      local first_of_rank = nil
      for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == 3 then first_of_rank = context.scoring_hand[i]; break end
      end
      if context.other_card == first_of_rank then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.repetitions,
          -- The card the repetitions are applying to is context.other_card
          card = context.other_card
        }
      end
    end
  end
}
-- The Dodecahedron
SMODS.Joker {
  key = 'the_dodecahedron',
  loc_txt = {
    name = 'The Dodecahedron',
    text = {
      "Retrigger first",
      "played {C:attention}5{} an additional {C:attention}#1#{} times"
    }
  },
  discovered = true,
  blueprint_compat = true,
  config = { extra = { repetitions = 3 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.repetitions } }
  end,
  calculate = function(self, card, context)
    -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
    -- The "not context.repetition_only" is there to keep it separate from seals.
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
      local first_of_rank = nil
      for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == 5 then first_of_rank = context.scoring_hand[i]; break end
      end
      if context.other_card == first_of_rank then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.repetitions,
          -- The card the repetitions are applying to is context.other_card
          card = context.other_card
        }
      end
    end
  end
}
-- The Icosahedron
SMODS.Joker {
  key = 'the_icosahedron',
  loc_txt = {
    name = 'The Icosahedron',
    text = {
      "Retrigger first",
      "played {C:attention}3{} an additional {C:attention}#1#{} times"
    }
  },
  discovered = true,
  blueprint_compat = true,
  config = { extra = { repetitions = 5 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 1, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.repetitions } }
  end,
  calculate = function(self, card, context)
    -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
    -- The "not context.repetition_only" is there to keep it separate from seals.
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
      local first_of_rank = nil
      for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == 3 then first_of_rank = context.scoring_hand[i]; break end
      end
      if context.other_card == first_of_rank then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.repetitions,
          -- The card the repetitions are applying to is context.other_card
          card = context.other_card
        }
      end
    end
  end
}
-- The Pit
SMODS.Joker {
  key = 'the_pit',
  loc_txt = {
    name = 'The Pit',
    text = {
      "When cards are scored, ",
      "remove all chips from card and ",
      "add to chips of this joker,", 
      "currently gives {C:chips}+#1#{} chips."
    }
  },
  discovered = true,
  config = { extra = { chips = 0 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 2, y = 1 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.chips } }
  end,
  calculate = function(self, card, context)

    if context.joker_main then
      return {
        chip_mod = card.ability.extra.chips,
        message = localize { type = 'variable', key = 'a_chips', vars = { card.ability.extra.chips } }
      }
    end

    if context.individual and context.cardarea == G.play then
      card.ability.extra.chips = card.ability.extra.chips + context.other_card.base.nominal;
      if(context.other_card.ability.perma_bonus > 0) then
        card.ability.extra.chips = card.ability.extra.chips + context.other_card.ability.perma_bonus;
      end
      if(context.other_card.ability.bonus > 0) then
        card.ability.extra.chips = card.ability.extra.chips + context.other_card.ability.bonus;
        context.other_card.ability.bonus = 0;
      end
      context.other_card.ability.perma_bonus = -context.other_card.base.nominal;
      return {
        message = localize('k_debuffed'),
        colour = G.C.RED,
        card = card,
    }
    end
  end
}
-- The One Card
SMODS.Joker {
  key = 'the_one_card',
  loc_txt = {
    name = 'The One Card',
    text = {
      "When blind is selected,",
      "select one random card",
      "from deck to be \"The One Card\".",
      "Playing this card gives {X:mult,C:white}X#1#{}"
    }
  },
  discovered = true,
  config = { extra = { x_mult = 10 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.x_mult } }
  end,
  calculate = function(self, card, context)

    if context.joker_main then
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.extra.the_one_card == true then
          return {
            Xmult_mod  = card.ability.extra.x_mult,
            card = card,
          }
        end
      end
    end

    if context.setting_blind then    
      for i, card_in_deck in pairs(G.playing_cards) do
        card_in_deck.ability.extra = {the_one_card = false}
      end
      local the_one_card = pseudorandom_element(G.playing_cards, pseudoseed('toc'..G.GAME.round_resets.ante));
      if the_one_card ~= nil then
        the_one_card.ability.extra.the_one_card = true;
      end
    end

  end
}
-- One Card Army
SMODS.Joker {
  key = 'one_card_army',
  loc_txt = {
    name = 'One Card Army',
    text = {
      "Playing a five card",
      "high card retriggers",
      "scoring card {C:attention}#1#{} additional times"
    }
  },
  discovered = true,
  config = { extra = { retriggers = 4 } },
  rarity = 2,
  atlas = 'jokers',
  pos = { x = 1, y = 1 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.retriggers } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
      if context.scoring_name == "High Card" and #context.full_hand == 5 then
        return {
          message = 'Again!',
          repetitions = card.ability.extra.retriggers,
          card = context.scoring_hand[1];
        }
      end
    end
  end
}

----------------------------------------------
------------MOD CODE END----------------------
