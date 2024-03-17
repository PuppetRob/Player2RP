Config = {}
Config['ArtHeist'] = {
    ['requiredPoliceCount'] = 3, -- required police count for start heist
    ['nextRob'] = 3600, -- seconds for next heist
    ['startHeist'] ={ -- heist start coords
        pos = vector3(244.24, 373.25, 105.74),
        peds = {
            {pos = vector3(244.24, 373.25, 105.74), heading = 180.39, ped = 's_m_m_highsec_01'},
        --    {pos = vector3(243.487, 372.176, 105.738), heading = 265.63, ped = 's_m_m_highsec_02'},
        --    {pos = vector3(245.074, 372.730, 105.738), heading = 73.3, ped = 's_m_m_fiboffice_02'}
        }
    },
    ['sellPainting'] ={ -- sell painting coords
        pos = vector3(288.558, -2981.1, 5.90696),
        peds = {
            {pos = vector3(288.558, -2981.1, 5.90696), heading = 135.88, ped = 's_m_m_highsec_01'},
            {pos = vector3(287.190, -2980.9, 5.72252), heading = 218.0, ped = 's_m_m_highsec_02'},
            {pos = vector3(287.731, -2982.6, 5.82852), heading = 336.08, ped = 's_m_m_fiboffice_02'}
        }
    },
    ['painting'] = {
        {
            rewardItem = 'paintinge', -- u need add item to database
            paintingPrice = '8500', -- price of the reward item for sell
            scenePos = vector3(-429.845, 39.69, 51.9), -- animation coords
            sceneRot = vector3(0.0, 0.0, 180.0), -- animation rotation
            object = 'ch_prop_vault_painting_01e', -- object (https://mwojtasik.dev/tools/gtav/objects/search?name=ch_prop_vault_painting_01)
            objectPos = vector3(-429.651, 39.256, 53.289), -- object spawn coords
            objHeading = 175.021 -- object spawn heading
        },
        {
            rewardItem = 'paintingi',
            paintingPrice = '8500', 
            scenePos = vector3(-433.24, 40.00, 51.9), 
            sceneRot = vector3(0.0, 0.0, 180.0),
            object = 'ch_prop_vault_painting_01i', 
            objectPos = vector3(-433.24, 39.551, 53.289), 
            objHeading = 175.021
        },
        {
            rewardItem = 'paintingh',
            paintingPrice = '8500', 
            scenePos = vector3(-447.564, 41.25, 51.9), 
            sceneRot = vector3(0.0, 0.0, 180.0),
            object = 'ch_prop_vault_painting_01h', 
            objectPos = vector3(-447.564, 40.800, 53.289), 
            objHeading = 175.021
        }, 
        {
            rewardItem = 'paintingj',
            paintingPrice = '8500', 
            scenePos = vector3(-455.592, 41.97, 51.9), 
            sceneRot = vector3(0.0, 0.0, 180.0),
            object = 'ch_prop_vault_painting_01j', 
            objectPos = vector3(-455.592, 41.500, 53.189), 
            objHeading = 175.021 
        },
        { -- Left
            rewardItem = 'paintingg',
            paintingPrice = '8500', 
            scenePos = vector3(-443.2, 44.5, 51.9), 
            sceneRot = vector3(0.0, 0.0, 180.0),
            object = 'ch_prop_vault_painting_01f', 
            objectPos = vector3(-443.267, 43.984, 53.189), 
            objHeading = 175.021
        },
        { -- Right
            rewardItem = 'paintingf',
            paintingPrice = '8500', 
            scenePos = vector3(-448.04, 44.9, 52.0), 
            sceneRot = vector3(0.0, 0.0, 180.0),
            object = 'ch_prop_vault_painting_01f', 
            objectPos = vector3(-448.18, 44.5, 53.189), 
            objHeading = 175.021
        }, 
    },
    ['objects'] = { -- dont change (required)
        'hei_p_m_bag_var22_arm_s',
        'w_me_switchblade'
    },
    ['animations'] = { -- dont change (required)
        {"top_left_enter", "top_left_enter_ch_prop_ch_sec_cabinet_02a", "top_left_enter_ch_prop_vault_painting_01a", "top_left_enter_hei_p_m_bag_var22_arm_s", "top_left_enter_w_me_switchblade"},
        {"cutting_top_left_idle", "cutting_top_left_idle_ch_prop_ch_sec_cabinet_02a", "cutting_top_left_idle_ch_prop_vault_painting_01a", "cutting_top_left_idle_hei_p_m_bag_var22_arm_s", "cutting_top_left_idle_w_me_switchblade"},
        {"cutting_top_left_to_right", "cutting_top_left_to_right_ch_prop_ch_sec_cabinet_02a", "cutting_top_left_to_right_ch_prop_vault_painting_01a", "cutting_top_left_to_right_hei_p_m_bag_var22_arm_s", "cutting_top_left_to_right_w_me_switchblade"},
        {"cutting_top_right_idle", "_cutting_top_right_idle_ch_prop_ch_sec_cabinet_02a", "cutting_top_right_idle_ch_prop_vault_painting_01a", "cutting_top_right_idle_hei_p_m_bag_var22_arm_s", "cutting_top_right_idle_w_me_switchblade"},
        {"cutting_right_top_to_bottom", "cutting_right_top_to_bottom_ch_prop_ch_sec_cabinet_02a", "cutting_right_top_to_bottom_ch_prop_vault_painting_01a", "cutting_right_top_to_bottom_hei_p_m_bag_var22_arm_s", "cutting_right_top_to_bottom_w_me_switchblade"},
        {"cutting_bottom_right_idle", "cutting_bottom_right_idle_ch_prop_ch_sec_cabinet_02a", "cutting_bottom_right_idle_ch_prop_vault_painting_01a", "cutting_bottom_right_idle_hei_p_m_bag_var22_arm_s", "cutting_bottom_right_idle_w_me_switchblade"},
        {"cutting_bottom_right_to_left", "cutting_bottom_right_to_left_ch_prop_ch_sec_cabinet_02a", "cutting_bottom_right_to_left_ch_prop_vault_painting_01a", "cutting_bottom_right_to_left_hei_p_m_bag_var22_arm_s", "cutting_bottom_right_to_left_w_me_switchblade"},
        {"cutting_bottom_left_idle", "cutting_bottom_left_idle_ch_prop_ch_sec_cabinet_02a", "cutting_bottom_left_idle_ch_prop_vault_painting_01a", "cutting_bottom_left_idle_hei_p_m_bag_var22_arm_s", "cutting_bottom_left_idle_w_me_switchblade"},
        {"cutting_left_top_to_bottom", "cutting_left_top_to_bottom_ch_prop_ch_sec_cabinet_02a", "cutting_left_top_to_bottom_ch_prop_vault_painting_01a", "cutting_left_top_to_bottom_hei_p_m_bag_var22_arm_s", "cutting_left_top_to_bottom_w_me_switchblade"},
        {"with_painting_exit", "with_painting_exit_ch_prop_ch_sec_cabinet_02a", "with_painting_exit_ch_prop_vault_painting_01a", "with_painting_exit_hei_p_m_bag_var22_arm_s", "with_painting_exit_w_me_switchblade"},
    },
}

Strings = {
    ['steal_blip'] = 'Art Gallery',
    ['sell_blip'] = 'Painting Customers',
    ['start_stealing'] = 'Press ~INPUT_CONTEXT~ to stealing',
    ['cute_right'] = 'Press ~INPUT_CONTEXT~ to cut right',
    ['cute_left'] = 'Press ~INPUT_CONTEXT~ to cut left',
    ['cute_down'] = 'Press ~INPUT_CONTEXT~ to cut down',
    ['go_steal'] = 'Go to the Art Gallery and steal paintings.',
    ['go_sell'] = 'Go to blip and sell painting.',
    ['already_cuting'] = 'You already stealing.',
    ['already_heist'] = 'You already start heist. Wait until its over.',
    ['start_heist'] = 'Press ~INPUT_CONTEXT~ to start heist',
    ['sell_painting'] = 'Press ~INPUT_CONTEXT~ to sell painting',
    ['wait_nextrob'] = 'You have to wait',
    ['minute'] = 'Minute',
    ['police_alert'] = 'Art stealing alert! Check your gps.',
    ['need_police'] = 'Not enough police in the city.',
}