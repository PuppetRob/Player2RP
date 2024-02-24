job = {
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Electrician",img =  "./img/electrician.png",img2 =  "./img/electrician2.png",info = "In a city as modern as Los Santos, many electricians are needed to maintain the infrastructure." },

        [2] = {
            [1] = {Workclothes = {{x = 722.80, y = -2016.61, z = 29.29},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 729.16, y = -1975.95, z = 28.29, h = 262.92},pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_elecbox_12", 
                nameblip = "Electrical Module",
                text = "Press ~h~[E]~h~",   
                { x = 437.91, y = -1965.89, z = 22.18, objZ= 0 , take = false}, {x = 239.0, y = -2162.17, z = 10.89, objZ= 0 , take = false}, { x = 292.25, y = -2483.01, z = 5.41, objZ= 0 , take = false}, 
                                                                                                                                    
                { x = 134.66, y = -2480.24, z = 5.0, objZ= 0 , take = false}, {x = -62.88, y = -2543.39, z = 5.01, objZ= 0 , take = false}, {x = -177.95, y = -2496.04, z = 5.15, objZ= 0 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 720.36, y = -2028.09, z = 28.43, h = 266.05}, pedmodel = "cs_floyd", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 728.78, y = -2024.48, z = 28.28, h = 358.81}}, 
                [3] = {vehiclename = "burrito"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "missmechanic", anim2 = "work2_base"},
            [2] = {obj = true, nameobj = "prop_tool_pliers", objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500 , IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 65, torso_2 = 1,
                    decals_1 = 0, decals_2 = 0,
                    arms = 33,
                    pants_1 = 38, pants_2 = 1,
                    shoes_1 = 24, shoes_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = 141, helmet_2 = 2,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 59, torso_2 = 1,
                    decals_1 = 0, decals_2 = 0,
                    arms = 36,
                    pants_1 = 38, pants_2 = 1,
                    shoes_1 = 24, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0
                }
            },        
        },
    },
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Builder",img =  "./img/builder.png",img2 =  "./img/builder2.png",info = "We live in a sprawling city. Big buildings are being built every day. Help build them and earn money from it." },

        [2] = { 
            [1] = {Workclothes = {{x = -97.08, y = -1013.92, z = 27.28},nameblip = "~h~[JOB]~h~ Work clothes"}},
        
            [2] = {payout = {{x = -90.83, y = -1031.79, z = 28.02, h = 184.18},pedmodel = "s_m_y_dockwork_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_ld_rubble_02",
                nameblip = "Stone Waste",
                text = "Press ~h~[E]~h~",
                                                                                                                                           
                { x = 104.04, y = -375.45, z = 42.21, objZ= 0 , take = false}, { x = 92.69, y = -429.66, z = 37.55, objZ= 0 , take = false}, {x = 3.27, y = -426.8, z = 39.6, objZ= 0 , take = false},
                                                                                                                               
                { x = 28.41, y = -441.12, z = 45.56, objZ= 0 , take = false}, { x = 70.68, y = -342.11, z = 55.51, objZ= 0 , take = false}, {x = 105.72, y = -375.11, z = 55.5, objZ= 0 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = -169.31, y = -1027.36, z = 27.27, h = 164.78}, pedmodel = "s_m_y_construct_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -164.01, y = -1035.59, z = 27.27, h = 249.89}}, 
                [3] = {vehiclename = "sadler"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "melee@large_wpn@streamed_core", anim2 = "ground_attack_-90"},
            [2] = {obj = true, nameobj = "prop_tool_sledgeham",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 238,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 21,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 35,   shoes_2 = 1,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = 60,  helmet_2 = 4,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 118,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 29,
                    pants_1 = 49,   pants_2 = 0,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 60,  helmet_2 = 4,
                    bproof_1 = 0,  bproof_2 = 0,
                }
                
            },         
        },
    },
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Gardener",img =  "./img/gardener.png",img2 =  "./img/gardener2.png",info = "The Golf Club pays you to keep the golf grounds in perfect condition. It is an honourable way to earn money." },

        [2] = {
            [1] = {Workclothes = {{x = -1352.64, y = 125.62, z = 56.20},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1321.34, y = 63.81, z = 52.51, h = 16.99},pedmodel = "s_m_m_gardener_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_weeds_nxg09",
                nameblip = "Weeds",
                text = "Press ~h~[E]~h~",

                { x = -1162.93, y = 42.95, z = 52.48, objZ= 1 , take = false}, { x = -1135.08, y = 108.18, z = 58.97, objZ= 1 , take = false}, {x = -1259.27, y = -13.29, z = 47.93, objZ= 1 , take = false},
                
                { x = -1196.36, y = -59.28, z = 45.15, objZ= 1 , take = false}, { x = -1204.03, y = 39.18, z = 53.5, objZ= 1 , take = false}, {x = -996.22, y = -87.31, z = 41.83, objZ= 1 , take = false},
            }},
            
            [4] = { 
                [1] = {getvehicle =  {{x = -1348.18, y = 141.60, z = 55.26, h = 164.58}, pedmodel = "s_m_m_gardener_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1344.60, y = 123.09, z = 55.26, h = 191.45}}, 
                [3] = {vehiclename = "caddy"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"},
            [2] = {obj = true, nameobj = "prop_leaf_blower_01",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1200, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 247, torso_2 = 7,
                    decals_1 = 0, decals_2 = 0,
                    arms = 21,
                    pants_1 = 47, pants_2 = 1,
                    shoes_1 = 94, shoes_2 = 6,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = 60, helmet_2 = 4,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },

                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 74, torso_2 = 1,
                    decals_1 = 0, decals_2 = 0,
                    arms = 24,
                    pants_1 = 49, pants_2 = 1,
                    shoes_1 = 36, shoes_2 = 1,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },          
        },
    },
    --- /// DONE \\\ ---
   --[[  { 
        [1] = {jobs = "Trailer Clean",img =  "./img/trailer.png",img2 =  "./img/trailer2.png",info = "You get paid to clean trailers for the city's truckers. It's pretty well paid, actually." },
          
        [2] = {      
            [1] = {Workclothes = {{x = 464.27, y = -1672.71, z = 29.29},nameblip = "~h~[JOB]~h~ Work clothes"}}, 
         
            [2] = {payout = {{x = 468.47, y = -1664.94, z = 28.31, h = 318.81},pedmodel = "s_m_m_trucker_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} }, 

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_pile_dirt_07",
                nameblip = "Trailer",        
                text = "Press ~h~[E]~h~",                                       
                { x = 1272.8, y = -3120.96, z = 5.9, objZ= 0 , take = false}, { x = 1015.58, y = -3155.41, z = 5.9, objZ= 0 , take = false}, {x = 943.73, y = -3207.93, z = 5.9, objZ= 0 , take = false},
                {x = 1188.56, y = -3192.9, z = 6.03, objZ= 0 , take = false}, {x = 1023.92, y = -3130.35, z = 5.9, objZ= 0 , take = false}, {x = 1217.25, y = -3100.83, z = 5.88, objZ= 0 , take = false},
                {x = 723.59, y = -1379.39, z = 26.34, objZ= 0 , take = false},
       
            }},           
              
            [4] = {   
                [1] = {getvehicle =  {{x = 452.65, y = -1688.36, z = 28.28, h = 303.07}, pedmodel = "s_m_m_trucker_01", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 465.82, y = -1702.07, z = 29.2, h = 322.66}},   
                [3] = {vehiclename = "burrito"}, 
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_maid_clean@", anim2 = "base"},  
            [2] = {obj = true, nameobj = "prop_sponge_01",  objX = 0.1, objY = 0.0, objZ = -0.03, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 319,   torso_2 = 2,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 19,
                    pants_1 = 15,   pants_2 = 1,
                    shoes_1 = 94,   shoes_2 = 6,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 1,
                    torso_1 = 224,   torso_2 = 4,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 33,
                    pants_1 = 30,   pants_2 = 0,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },
          
        },
    }, ]]
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Oil Logistics",img =  "./img/oil.png",img2 =  "./img/oil2.png",info = "You have to collect the barrels of Oil from the different Oil Extraction Stations. It is an important job." },
          
        [2] = {   
            [1] = {Workclothes = {{x = 1522.44, y = -2120.1, z = 76.51},nameblip = "~h~[JOB]~h~ Work clothes"}}, 

            [2] = {payout = {{x = 1555.25, y = -2105.25, z = 76.42, h = 69.44},pedmodel = "s_m_y_dockwork_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} }, 

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_oiltub_02",
                nameblip = "Oil",        
                text = "Press ~h~[E]~h~",
                
                { x = 1678.02, y = -1855.39, z = 108.36, objZ= 1 , take = false}, { x = 1511.27, y = -1722.83, z = 78.83, objZ=  1  , take = false}, {x = 1374.82, y = -2206.48, z = 60.59, objZ=  1  , take = false},
                {x = 1517.67, y = -2537.56, z = 56.87, objZ=  1  , take = false}, {x = 1582.52, y = -1853.32, z = 94.17, objZ=  1  , take = false}, {x = 1693.61, y = -1440.17, z = 112.56, objZ=  1  , take = false}, 
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = 1570.57, y = -2145.73, z = 76.7, h = 49.76}, pedmodel = "s_m_y_dockwork_01", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 1564.63, y = -2163.08, z = 77.54, h = 349.93}},  
                [3] = {vehiclename = "bison2"}, 
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_gardener_plant@male@enter", anim2 = "enter"}, 
            [2] = {obj = true, nameobj = "gr_prop_gr_tape_01",   objX = 0.2, objY = 0.0, objZ = 0.00, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {  
                    tshirt_1 = 59,  tshirt_2 = 0,
                    torso_1 = 146,   torso_2 = 3,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 73,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = 33,    chain_2 = 0,
                    helmet_1 = 0,  helmet_2 = 3,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 54,   torso_2 = 3,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 21,
                    pants_1 = 45,   pants_2 = 1,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },
           
        },
    },
     --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Chimney",img =  "./img/chimney.png",img2 =  "./img/chimney2.png",info = "You will have to clean the dirt from the chimneys of the building. It's a tall job - watch out for vertigo!" },
          
        [2] = {       
            [1] = {Workclothes = {{x = -599.32, y = -1128.48, z = 22.32},nameblip = "~h~[JOB]~h~ Work clothes"}},       
       
            [2] = {payout = {{x = -571.52, y = -1015.37, z = 21.32, h = 249.02},pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_offroad_bale01",
                nameblip = "Chimney Clean",        
                text = "Press ~h~[E]~h~",       

                { x = 304.86, y = -207.81, z = 61.57, objZ= 0 , take = false}, { x = 306.56, y = -219.97, z = 61.57, objZ= 0 , take = false}, {x = 343.17, y = -222.22, z = 61.56, objZ= 0 , take = false},

                { x = 339.79, y = -231.07, z = 61.56, objZ= 0 , take = false}, { x = 332.18, y = -234.19, z = 61.56, objZ= 0 , take = false}, {x = 326.33, y = -226.85, z = 61.56, objZ= 0 , take = false},  
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = -599.39, y = -1118.2, z = 21.32, h = 266.81}, pedmodel = "s_m_y_xmech_02", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -578.43, y = -1157.44, z = 21.18, h = 309.33}}, 
                [3] = {vehiclename = "burrito"}, 
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_maid_clean@", anim2 = "base"},  
            [2] = {obj = true, nameobj = "prop_sponge_01",  objX = 0.1, objY = 0.0, objZ = -0.03, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 319,   torso_2 = 2,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 19,
                    pants_1 = 15,   pants_2 = 1,
                    shoes_1 = 94,   shoes_2 = 6,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 1,
                    torso_1 = 224,   torso_2 = 4,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 33,
                    pants_1 = 30,   pants_2 = 0,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },          
        },
    },
     --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Asphalt",img =  "./img/asphalt.png",img2 =  "./img/asphalt2.png",info = "There are many potholes in the road. As a worker you will have to go and flatten and fix the road so that there are no accidents." },
          
        [2] = {      
            [1] = {Workclothes = {{x = -464.86, y = -964.68, z = 23.55},nameblip = "~h~[JOB]~h~ Work clothes"}},       
       
            [2] = {payout = {{x = -512.85, y = -975.18, z = 22.56, h = 81.81},pedmodel = "s_m_y_airworker", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} }, 

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_pile_dirt_07",
                nameblip = "Asphalt",        
                text = "Press ~h~[E]~h~",    
        
                { x = -41.42, y = -1010.0, z = 28.89, objZ= 2 , take = false}, { x = 199.47, y = -720.26, z = 34.59, objZ= 2 , take = false}, {x = 226.88, y = -1008.01, z = 29.3, objZ= 2 , take = false},
                { x = 244.71, y = -1251.03, z = 29.25, objZ= 2 , take = false}, { x = 395.24, y = -999.89, z = 29.24, objZ= 2 , take = false}, {x = 336.2, y = -756.1, z = 29.21, objZ= 2 , take = false},  
            }},           
              
            [4] = {  
                [1] = {getvehicle =  {{x = -478.06, y = -957.27, z = 22.85, h = 103.29}, pedmodel = "s_m_y_airworker", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -494.53, y = -945.97, z = 23.96, h = 128.96}},  
                [3] = {vehiclename = "guardian"}, 
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "anim@heists@fleeca_bank@drilling", anim2 = "drill_straight_idle"},  
            [2] = {obj = true, nameobj = "prop_tool_jackham",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0}, 
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 238,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 21,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 35,   shoes_2 = 1,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = 60,  helmet_2 = 4,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 118,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 29,
                    pants_1 = 49,   pants_2 = 0,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 60,  helmet_2 = 4,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },          
        },
    },

    { 
        [1] = {jobs = "Street Sweeper",img =  "./img/sweeper.png",img2 =  "./img/sweeper2.png",info = "There are a lot of streets and the streets don't clean themselves. Dedicate yourself to cleaning all the dirt off the streets. It is a very honourable job." },

        [2] = { 
            [1] = {Workclothes = {{x = -623.55, y = -119.55, z = 39.61},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -621.20, y = -139.18, z = 38.03, h = 309.99},pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_big_shit_02",
                nameblip = "Dirt",
                text = "Press ~h~[E]~h~", 
                { x = -577.31, y = -74.06, z = 42.02, objZ= 1 , take = false}, { x = -527.75, y = -129.83, z = 38.80, objZ= 1 , take = false}, {x = -591.17, y = -180.28, z = 38.03, objZ= 1 , take = false},
                
                { x = -595.98, y = -249.17, z = 36.25, objZ= 1 , take = false}, { x = -527.13, y = -247.28, z = 35.79, objZ= 1 , take = false}, {x = -539.50, y = -212.68, z = 37.65, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -580.43, y = -80.25, z = 40.89, h = 19.18}, pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -589.59, y = -90.74, z = 42.34, h = 326.76}}, 
                [3] = {vehiclename = "UtilliTruck2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_tool_broom",  objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1200, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 59, tshirt_2 = 0,
                    torso_1 = 1, torso_2 = 11,
                    decals_1 = 0, decals_2 = 0,
                    arms = 19,
                    pants_1 = 120, pants_2 = 1,
                    shoes_1 = 94, shoes_2 = 6,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                    
                female = {
                    tshirt_1 = 191, tshirt_2 = 1,
                    torso_1 = 338, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 44,
                    pants_1 = 126, pants_2 = 1,
                    shoes_1 = 26, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },         
        },
    },
  
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Plumber",img =  "./img/plumber.png",img2 =  "./img/plumber2.png",info = "A plumber's job... You're not going to fix normal things and you're not going to be dry either. Fix some of the pipes in the city tunnels." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1207.61, y = -958.38, z = 2.15},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1791.64, y = -970.51, z = 1.25, h = 111.59},pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_ind_pipe_01",
                nameblip = "Pipes",
                text = "Press ~h~[E]~h~",                     
                { x = -1106.15, y = -1140.41, z = 0.11, objZ= 6 , take = false}, 
                { x = -1090, y = -971.41, z = 0.35, objZ= 6 , take = false}, 
                {x = -1250.32, y = -891.60, z = -0.47, objZ= 3 , take = false},
                { x = -1272.59, y = -876.39, z = -135.0, objZ= 3 , take = false},
                { x = -1338.00, y = -830.03, z = -0.49, objZ= 3 , take = false}, 
                {x = -1570.83, y = -879.36, z = -0.73, objZ= 3 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1214.51, y = -937.65, z = 1.15, h = 131.45}, pedmodel = "s_m_m_lathandy_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1212.86, y = -959.95, z = -1.60, h = 54.76}}, 
                [3] = {vehiclename = "Seashark"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "mini@repair", anim2 = "fixing_a_ped"}, 
            [2] = {obj = true, nameobj = "prop_tool_wrench",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 125, tshirt_2 = 2,
                    torso_1 = 243, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 16,
                    pants_1 = 94, pants_2 = 0,
                    shoes_1 = 67, shoes_2 = 1,
                    chain_1 = 33, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 155, tshirt_2 = 1,
                    torso_1 = 347, torso_2 = 1,
                    decals_1 = 0, decals_2 = 0,
                    arms = 18,
                    pants_1 = 87, pants_2 = 8,
                    shoes_1 = 70, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },
         
        },
    },
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Engineer",img =  "./img/engineer.png",img2 =  "./img/engineer2.png",info = "Qualified engineers are needed to solve the problems of aircraft arriving at the city's airport. It is a well paid job." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1070.73, y = -2868.58, z = 13.95},nameblip = "~h~[JOB]~h~ Work clothes"}},        

            [2] = {payout = {{x = -1158.80, y = -2845.90, z = 12.95, h = 147.64},pedmodel = "s_m_y_airworker", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Failure",
                text = "Press ~h~[E]~h~",   
                
                { x = -1183.54, y = -2904.98, z = 13.95, objZ= 1 , take = false}, { x = -1194.6, y = -2909.5, z = 13.94, objZ= 1 , take = false}, {x = -1232.74, y = -2484.46, z = 13.95, objZ= 1 , take = false},
                  
                { x = -1261.66, y = -2738.5, z = 13.94, objZ= 1 , take = false}, { x = -1268.74, y = -2734.32, z = 13.94, objZ= 1 , take = false}, {x = -1356.25, y = -2548.78, z = 13.95, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1110.95, y = -2895.48, z = 12.95, h = 0.00}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_CAR_PARK_ATTENDANT", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1147.16, y = -2912.26, z = 12.95, h = 144.38}}, 
                [3] = {vehiclename = "caddy3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "mini@repair", anim2 = "fixing_a_ped"}, 
            [2] = {obj = true, nameobj = "prop_tool_spanner02",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1200, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {  
                    tshirt_1 = 59,  tshirt_2 = 0,
                    torso_1 = 146,   torso_2 = 3,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 73,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = 33,    chain_2 = 0,
                    helmet_1 = 0,  helmet_2 = 3,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 103,   torso_2 = 2,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 40,
                    pants_1 = 61,   pants_2 = 6,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }                
            },         
        },
    },

  --[[   { 
        [1] = {jobs = "Digger",img =  "./img/digger.png",img2 =  "./img/digger2.png",info = "Windmill erectors need an excavator to remove some tree stumps from the area where the windmills are to be erected. You will need to use a lot of strength and a good shovel." },
            
        [2] = {    
            [1] = {Workclothes = {{x = 2485.92, y = 1566.09, z = 32.72},nameblip = "~h~[JOB]~h~ Work clothes"}},          

            [2] = {payout = {{x = 2480.89, y = 1487.24, z = 35.20, h = 307.51},pedmodel = "s_m_m_autoshop_01", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_tree_stump_01",
                nameblip = "Wooden stump",    
                text = "Press ~h~[E]~h~",                                                                           
                { x = 2476.83, y = 1540.26, z = 35.08, objZ= 2 , take = false}, { x = 2463.22, y = 1544.78, z = 34.87, objZ= 2 , take = false}, {x = 2470.26, y = 1531.46, z = 34.95, objZ= 2 , take = false},
                  
                { x = 2468.31, y = 1525.02, z = 34.97, objZ= 2 , take = false}, { x = 2444.44, y = 1517.44, z = 35.12, objZ= 2 , take = false}, {x = 2438.39, y = 1524.15, z = 34.97, objZ= 2 , take = false},
            }},     
           
            [4] = {      
                [1] = {getvehicle =  {{x = 2495.64, y = 1590.51, z = 31.72, h = 228.95}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2501.52, y = 1601.01, z = 31.40, h = 179.92}}, 
                [3] = {vehiclename = "Rebel"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "anim@amb@drug_field_workers@rake@male_a@base", anim2 = "base"}, 
            [2] = {obj = true, nameobj = "prop_tool_shovel",  objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 238,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 21,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 35,   shoes_2 = 1,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = 60,  helmet_2 = 4,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 118,   torso_2 = 2,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 42,
                    pants_1 = 45,   pants_2 = 3,
                    shoes_1 = 36,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },         
        },
    }, ]]
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Stablehand",img =  "./img/stable.png",img2 =  "./img/stable2.png",info = "A large mansion on the outskirts of the city needs a stable hand to help with the stables. It will be hard work but it will pay well enough." },
          
        [2] = {       
            [1] = {Workclothes = {{x = 1443.94, y = 1131.38, z = 114.33},nameblip = "~h~[JOB]~h~ Work clothes"}},          
              
            [2] = {payout = {{x = 1410.57, y = 1122.69, z = 113.84, h = 229.82},pedmodel = "g_m_m_korboss_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_offroad_bale01",
                nameblip = "Straw bale",      
                text = "Press ~h~[E]~h~",                                                                                                                                       
                { x = 1469.98, y = 1137.86, z = 114.32, objZ= 1 , take = false}, { x = 1459.63, y = 1137.65, z = 114.32, objZ= 1 , take = false}, {x = 1460.84, y = 1087.42, z = 114.33, objZ= 1 , take = false},
                                                                                                                                     
                { x = 2470.64, y = 4762.39, z = 34.3, objZ= 1 , take = false}, { x = 2428.3, y = 4752.32, z = 34.3, objZ= 1 , take = false}, {x = 2403.35, y = 4777.06, z = 34.5, objZ= 1 , take = false},  
            }},   
              
            [4] = {    
                [1] = {getvehicle =  {{x = 1483.89, y = 1129.91, z = 113.33, h = 76.95}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 1477.44, y = 1131.80, z = 113.33, h = 89.44}}, 
                [3] = {vehiclename = "Freecrawler"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_janitor@male@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_tool_shovel",   objX = 0.1, objY = 0.0, objZ = 0.0, objrotX = -960.0, objrotY = -400.0, objrotZ = 360.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 2,
                    torso_1 = 239, torso_2 = 19,
                    decals_1 = 0, decals_2 = 0,
                    arms = 114,
                    pants_1 = 82, pants_2 = 0,
                    shoes_1 = 88, shoes_2 = 1,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 180, tshirt_2 = 0,
                    torso_1 = 134, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 20,
                    pants_1 = 54, pants_2 = 2,
                    shoes_1 = 45, shoes_2 = 4,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },

         
        },
    },
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = " Burgershot Delivery",img =  "./img/delivery.png",img2 =  "./img/delivery2.png",info = "Local burger shop is looking for delivery drivers for its premises. You will be delivering food to customers who order from home." },
          
        [2] = {       
            [1] = {Workclothes = {{x = -1177.79, y = -891.41, z = 13.77},nameblip = "~h~[JOB]~h~ Work clothes"}},             
              
            [2] = {payout = {{x = -1200.40, y = -884.55, z = 12.28, h = 41.03},pedmodel = "csb_bryony", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_offroad_bale01",
                nameblip = "Delivery",        
                text = "Press ~h~[E]~h~",  

                { x = -1393.66, y = -919.53, z = 11.25, objZ= 0 , take = false}, { x = -1256.54, y = -1360.14, z = 4.04, objZ= 1 , take = false}, {x = -979.77, y = -1428.37, z = 7.68, objZ= 1 , take = false},
              
                { x = -1190.54, y = -742.61, z = 20.25, objZ= 1 , take = false}, { x = -1314.49, y = -602.49, z = 29.38, objZ= 2 , take = false}, {x = -1031.25, y = -903.04, z = 3.69, objZ= 1 , take = false},  
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = -1181.85, y = -883.08, z = 12.80, h = 308.46}, pedmodel = "csb_burgerdrug", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1173.06, y = -877.01, z = 13.11, h = 116.37}}, 
                [3] = {vehiclename = "Bagger"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "mp_common", anim2 = "givetake1_a"}, 
            [2] = {obj = true, nameobj = "prop_food_bs_bag_01",   objX = 0.35, objY = 0.11, objZ = 0.0, objrotX = 100.0, objrotY = 300.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 2,
                    torso_1 = 9, torso_2 = 14,
                    decals_1 = 0, decals_2 = 0,
                    arms = 74,
                    pants_1 = 105, pants_2 = 0,
                    shoes_1 = 77, shoes_2 = 3,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 14, tshirt_2 = 0,
                    torso_1 = 36, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 11,
                    pants_1 = 43, pants_2 = 0,
                    shoes_1 = 43, shoes_2 = 1,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },       
        },
    },
    --- /// DONE \\\ ---
    { 
        [1] = {jobs = "Supplies Collection",img =  "./img/warehouse.png",img2 =  "./img/warehouse2.png",info = "The small airport in the North needs extra help to move some boxes. The small warehouse is packed to the rafters and you will need to pick up the boxes and put them in the van for transport." },
          
        [2] = {         
            [1] = {Workclothes = {{x = 2122.47, y = 4781.95, z = 40.97},nameblip = "~h~[JOB]~h~ Work clothes"}},             

            [2] = {payout = {{x = 2455.74, y = 4058.2, z = 38.06, h = 243.85},pedmodel = "csb_bryony", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "hei_prop_drug_statue_box_big",
                nameblip = "Boxes",        
                text = "Press ~h~[E]~h~",     
        
                            
                { x = 1708.89, y = 4727.81, z = 42.16, objZ= 1 , take = false}, { x = 1646.38, y = 4837.5, z = 42.03, objZ= 1 , take = false}, {x = 1976.14, y = 5166.54, z = 47.64, objZ= 1 , take = false},
             
                { x = 2254.04, y = 5156.62, z = 57.73, objZ= 1 , take = false}, { x = 2437.13, y = 5010.61, z = 46.8, objZ= 1 , take = false}, {x = 2563.26, y = 4681.88, z = 34.08, objZ= 1 , take = false},  
            }},           
              
            [4] = {    
                [1] = {getvehicle =  {{x = 2114.13, y = 4764.13, z = 40.06, h = 70.52}, pedmodel = "mp_m_weapexp_01", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2102.72, y = 4758.42, z = 40.16, h = 13.73}}, 
                [3] = {vehiclename = "youga3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_gardener_plant@male@enter", anim2 = "enter"}, 
            [2] = {obj = true, nameobj = "gr_prop_gr_tape_01",   objX = 0.2, objY = 0.0, objZ = 0.00, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1500, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 59, tshirt_2 = 0,
                    torso_1 = 146, torso_2 = 3,
                    decals_1 = 0, decals_2 = 0,
                    arms = 73,
                    pants_1 = 47, pants_2 = 0,
                    shoes_1 = 54, shoes_2 = 0,
                    chain_1 = 33, chain_2 = 0,
                    helmet_1 = 0, helmet_2 = 3,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 54, torso_2 = 3,
                    decals_1 = 0, decals_2 = 0,
                    arms = 21,
                    pants_1 = 45, pants_2 = 1,
                    shoes_1 = 36, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },          
        },
    },
}

 --[[   { 
         [1] = {jobs = "Petrol Filler",img =  "./img/petrol.png",img2 =  "./img/petrol2.png",info = "You will have to refill the Fuel tanks at some petrol stations. It's a pretty good and well paid job." },
          
        [2] = {      
            [1] = {Workclothes = {{x = 762.06, y = -1400.53, z = 26.51},nameblip = "~h~[JOB]~h~ Work clothes"}},    
         
            [2] = {payout = {{x = 780.91, y = -1398.28, z = 26.08, h = 275.27},pedmodel = "s_m_m_trucker_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} }, 

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_pile_dirt_07",
                nameblip = "Petrol",        
                text = "Press ~h~[E]~h~",   
                { x = -507.98, y = -1216.87, z = 18.48, objZ= 0 , take = false}, { x = 1984.81, y = 3789.3, z = 32.28, objZ= 0 , take = false}, {x = 1712.15, y = 4937.29, z = 42.08, objZ= 0 , take = false},
             
            }},           
              
            [4] = {  
                [1] = {getvehicle =  {{x = 755.08, y = -1415.94, z = 25.53, h = 313.81}, pedmodel = "s_m_m_ups_01", pedanim = "WORLD_HUMAN_HANG_OUT_STREET", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 774.21, y = -1415.27, z = 26.67, h = 270.67}},  
                [3] = {vehiclename = "guardian"}, 
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "anim@heists@fleeca_bank@drilling", anim2 = "drill_straight_idle"},  
            [2] = {obj = true, nameobj = "prop_cs_petrol_can",  objX = 0.09, objY = 0.01, objZ = -0.1, objrotX = 300.0, objrotY = 720.0,objrotZ = 0.0}, 
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {  
                    tshirt_1 = 59,  tshirt_2 = 0,
                    torso_1 = 146,   torso_2 = 3,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 73,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = 33,    chain_2 = 0,
                    helmet_1 = 0,  helmet_2 = 3,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 103,   torso_2 = 2,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 40,
                    pants_1 = 61,   pants_2 = 6,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = 53,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }
            },          
        },
    },
 ]]
     --[[ { 
        [1] = {jobs = "Fisherman",img =  "./img/fisherman.png",img2 =  "./img/fisherman2.png",info = "A group of self-employed fishermen are looking for someone to help them catch the fish closest to the rocks. It's a tougher job than boat fishing, but you're sure to do it well." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 3800.83, y = 4440.30, z = 4.25},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 3840.00, y = 4476.95, z = -0.35, h = 250.04},pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_STAND_FISHING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "p_shoalfish_s",
                nameblip = "Fish",
                text = "Press ~h~[E]~h~",    
                { x = 3893.68, y = 4428.18, z = 0.15, objZ= 1 , take = false}, { x = 3909.66, y = 4421.14, z = 0.38, objZ= 1 , take = false}, {x = 3928.99, y = 4433.60, z = 0.50, objZ= 1 , take = false},
                   
                { x = 3954.72, y = 4395.69, z = 0.53, objZ= 1 , take = false}, { x = 4059.18, y = 4495.91, z = 0.57, objZ= 1 , take = false}, {x = 4063.35, y = 4472.83, z = -0.23, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 3867.08, y = 4465.03, z = 1.73, h = 97.64}, pedmodel = "ig_cletus", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 3856.95, y = 4455.66, z = -0.88, h = 267.35}}, 
                [3] = {vehiclename = "Dinghy2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_stand_fishing@base", anim2 = "base"}, 
            [2] = {obj = true, nameobj = "prop_fishing_rod_01",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 237, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 5,
                    pants_1 = 54, pants_2 = 0,
                    shoes_1 = 88, shoes_2 = 1,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 169, torso_2 = 1,
                    decals_1 = 0, decals_2 = 0,
                    arms = 15,
                    pants_1 = 107, pants_2 = 3,
                    shoes_1 = 5, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },
        
        },
    }, ]]
 --[[    { 
        [1] = {jobs = "Carpenter",img =  "./img/carpenter.png",img2 =  "./img/carpenter2.png",info = "In the sawmill, carpenters are needed to deal with the raw way. They have even thought of creating furniture with the treated wood - it's a good job!" },
            
        [2] = { 
            [1] = {Workclothes = {{x = -560.56, y = 5282.29, z = 73.05},nameblip = "~h~[JOB]~h~ Work clothes"}},          

            [2] = {payout = {{x = -501.21, y = 5307.89, z = 79.59, h = 213.60},pedmodel = "s_m_m_autoshop_01", pedanim = "WORLD_HUMAN_CLIPBOARD", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Failure",    
                text = "Press ~h~[E]~h~",                                                                
                { x = -505.59, y = 5264.03, z = 80.64, objZ= 1 , take = false}, { x = -506.31, y = 5261.60, z = 80.61, objZ= 1 , take = false}, {x = -502.84, y = 5256.47, z = 80.61, objZ= 1 , take = false},
                  
                { x = -496.83, y = 5271.74, z = 80.61, objZ= 1 , take = false}, { x = -500.45, y = 5275.69, z = 80.61, objZ= 1 , take = false}, {x = -501.91, y = 5297.74, z = 80.58, objZ= 1 , take = false},
            }},
           
            [4] = {    
                [1] = {getvehicle =  {{x = -568.08, y = 5253.49, z = 69.49, h = 60.11}, pedmodel = "s_m_y_construct_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -581.58, y = 5245.37, z = 70.47, h = 69.47}}, 
                [3] = {vehiclename = "Rebel"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "amb@world_human_hammering@male@base", anim2 = "base"}, 
            [2] = {obj = true, nameobj = "prop_tool_hammer",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = -1000.0, objrotY = 0.0,objrotZ = -530.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {  
                    tshirt_1 = 15,  tshirt_2 = 2,
                    torso_1 = 224,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 85,
                    pants_1 = 47,   pants_2 = 0,
                    shoes_1 = 54,   shoes_2 = 0,
                    chain_1 = 33,    chain_2 = 0,
                    helmet_1 = 14,  helmet_2 = 3,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 118,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 42,
                    pants_1 = 38,   pants_2 = 1,
                    shoes_1 = 52,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0,
                }                
            },         
        },
    }, ]]

    --[[     { 
        [1] = {jobs = "Farmer",img =  "./img/farmer.png",img2 =  "./img/farmer2.png",info = "People are needed to work the city's fields. Most people go to the offices. What will we eat if no one works the fields?" },

        [2] = {
            [1] = {Workclothes = {{x = 2251.64, y = 5155.36, z = 57.88},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 1966.6, y = 5184.72, z = 46.96, h = 183.08},pedmodel = "s_m_m_cntrybar_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_plant_fern_02a",
                nameblip = "Plant",
                text = "Press ~h~[E]~h~",
                { x = 2275.44, y = 5142.6, z = 54.16, objZ= 2 , take = false}, 
                { x = 2287.8, y = 5129.84, z = 51.28, objZ= 2 , take = false}, {x = 2288.6, y = 5143.12, z = 53.28, objZ= 2 , take = false},

                { x = 2280.76, y = 5137.0, z = 52.64, objZ= 2 , take = false}, { x = 2294.6, y = 5136.76, z = 51.96, objZ= 2 , take = false}, {x = 2281.48, y = 5149.92, z = 55.08, objZ= 2 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 2243.32, y = 5154.08, z = 56.88, h = 138.88}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2234.96, y = 5155.84, z = 57.36, h = 6.96}}, 
                [3] = {vehiclename = "tractor2"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "amb@world_human_gardener_plant@male@enter", anim2 = "enter"},
            [2] = {obj = true, nameobj = "bkr_prop_coke_spatula_04", objX = 0.15, objY = 0.11, objZ = 0.02, objrotX = 200.0, objrotY = 260.0,objrotZ = 0.0},
            [3] = {animtime = 5000}
        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 750, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },
        [5] = {
            ['clothes'] = {
                
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 239, torso_2 = 18,
                    decals_1 = 0, decals_2 = 0,
                    arms = 34,
                    pants_1 = 12, pants_2 = 0,
                    shoes_1 = 24, shoes_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0
                },
                    female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 27, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 46,
                    pants_1 = 4, pants_2 = 0,
                    shoes_1 = 72, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0
                }
            },        
        },
    }, ]]
  --[[   { 
        [1] = {jobs = "Miner",img =  "./img/miner.png",img2 =  "./img/miner2.png",info = "Help is needed to chop and sell the minerals from the Mine." },

        [2] = {
            [1] = {Workclothes = {{x = 2954.26, y = 2743.01, z = 43.67},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 2966.80, y = 2756.24, z = 42.24, h = 202.71},pedmodel = "s_m_y_construct_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_test_rocks04", 
                nameblip = "Mineral Rock",
                text = "Press ~h~[E]~h~",   
                { x = 2953.79, y = 2808.05, z = 41.76, objZ= 2 , take = false},
                
                {x = 2951.56, y = 2796.62, z = 40.89, objZ= 2 , take = false},

                { x = 2939.35, y = 2789.70, z = 40.13, objZ= 2 , take = false}, { x = 2929.47, y = 2797.44, z = 40.95, objZ= 2 , take = false}, {x = 2941.56, y = 2772.85, z = 39.26, objZ= 2 , take = false},
            }},

            [4] = { 
                [1] = {getvehicle =  {{x = 2942.78, y = 2748.61, z = 42.27, h = 249.90}, pedmodel = "s_m_y_dockwork_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 2949.54, y = 2748.07, z = 42.46, h = 278.97}}, 
                [3] = {vehiclename = "DLoader"},
                [4] = {vehicle = true}
            }
        },

        [3] = {
            [1] = {anim = "melee@large_wpn@streamed_core", anim2 = "ground_attack_-90"},
            [2] = {obj = true, nameobj = "prop_tool_pickaxe", objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = 300.0, objrotY = 720.0,objrotZ = 330.0},
            [3] = {animtime = 5000}

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },
        
        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 182,  tshirt_2 = 0,
                    torso_1 = 17,   torso_2 = 2,
                    arms = 34,
                    pants_1 = 15,   pants_2 = 0,
                    shoes_1 = 24,   shoes_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    helmet_1 = 141,  helmet_2 = 1,
                    ears_1 = -1,     ears_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0
                },
                female = {
                    tshirt_1 = 220, tshirt_2 = 0,
                    torso_1 = 43,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 36,
                    pants_1 = 137,   pants_2 = 2,
                    shoes_1 = 24,   shoes_2 = 0,
                    chain_1 = -1,    chain_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    bproof_1 = 0,  bproof_2 = 0
                }
            },         
        },
    }, ]]

--[[     { 
        [1] = {jobs = "Cleaner",img =  "./img/cleaner.png",img2 =  "./img/cleaner2.png",info = "You clean the windows of big offices. You'll get paid well because very few people want to do such back-breaking work." },
            
        [2] = { 
            [1] = {Workclothes = {{x = -1437.88, y = -372.96, z = 38.26},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = -1433.58, y = -389.46, z = 35.49, h = 198.01},pedmodel = "a_m_y_stwhi_02", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = true,
                propname = "prop_cs_diaphram",
                nameblip = "Dirt",
                text = "Press ~h~[E]~h~",  
                { x = -1436.97, y = -541.41, z = 36.08, objZ= 1 , take = false}, { x = -1435.26, y = -534.07, z = 36.07, objZ= 1 , take = false}, {x = -1434.38, y = -530.53, z = 35.79, objZ= 1 , take = false},
                
                { x = -1436.58, y = -525.22, z = 35.79, objZ= 1 , take = false}, { x = -1439.61, y = -520.84, z = 35.72, objZ= 1 , take = false}, {x = -1444.49, y = -513.75, z = 35.74, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = -1410.87, y = -388.47, z = 35.54, h = 230.70}, pedmodel = "s_m_y_winclean_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1414.24, y = -397.21, z = 35.21, h = 121.75}}, 
                [3] = {vehiclename = "burrito3"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@world_human_maid_clean@", anim2 = "base"},  
            [2] = {obj = true, nameobj = "prop_sponge_01",  objX = 0.1, objY = 0.0, objZ = -0.03, objrotX = 90.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 319, torso_2 = 2,
                    decals_1 = 0, decals_2 = 0,
                    arms = 19,
                    pants_1 = 15, pants_2 = 1,
                    shoes_1 = 94, shoes_2 = 6,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 1,
                    torso_1 = 224, torso_2 = 4,
                    decals_1 = 0, decals_2 = 0,
                    arms = 33,
                    pants_1 = 30, pants_2 = 0,
                    shoes_1 = 36, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },         
        },
    }, ]]

--[[     { 
        [1] = {jobs = "Fruit Shop",img =  "./img/fruitshop.png",img2 =  "./img/fruitshop2.png",info = "The city's fruit shop is looking for people to help them pick fruit from the fruit trees. It's not a difficult job and it pays well." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 417.80, y = 6520.58, z = 27.72},nameblip = "~h~[JOB]~h~ Work clothes"}},

            [2] = {payout = {{x = 310.17, y = 6501.24, z = 28.48, h = 112.49},pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "prop_cs_diaphram",
                nameblip = "Fruit",
                text = "Press ~h~[E]~h~",  
                { x = 378.46, y = 6505.81, z = 27.95, objZ= 1 , take = false}, { x = 378.19, y = 6517.02, z = 28.36, objZ= 1 , take = false}, {x = 363.16, y = 6517.82, z = 28.29, objZ= 1 , take = false},
                  
                { x = 355.70, y = 6505.44, z = 28.48, objZ= 1 , take = false}, { x = 348.04, y = 6517.51, z = 28.75, objZ= 1 , take = false}, {x = 329.86, y = 6531.36, z = 28.59, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 413.50, y = 6494.67, z = 27.18, h = 191.71}, pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 424.93, y = 6473.00, z = 27.80, h = 60.45}}, 
                [3] = {vehiclename = "kalahari"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "amb@prop_human_movie_bulb@idle_a", anim2 = "idle_a"}, 
            [2] = {obj = true, nameobj = "prop_fruit_basket",  objX = 0.14, objY = -0.25, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = -0.20},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 238, torso_2 = 2,
                    decals_1 = 0, decals_2 = 0,
                    arms = 21,
                    pants_1 = 47, pants_2 = 0,
                    shoes_1 = 35, shoes_2 = 1,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 23, torso_2 = 2,
                    decals_1 = 0, decals_2 = 0,
                    arms = 24,
                    pants_1 = 49, pants_2 = 0,
                    shoes_1 = 36, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },          
        },
    }, ]]

--[[     { 
        [1] = {jobs = "Butcher",img =  "./img/butcher.png",img2 =  "./img/butcher2.png",info = "You will work in the City Slaughterhouse and will have to cut up a lot of bones, pig carcasses and things of dubious provenance." },
            
        [2] = { 
            [1] = {Workclothes = {{x = 962.20, y = -2189.63, z = 30.51},nameblip = "~h~[JOB]~h~ Work clothes"}},   

            [2] = {payout = {{x = 952.28, y = -2122.00, z = 30.45, h = 163.06},pedmodel = "mp_m_shopkeep_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Meat",
                text = "Press ~h~[E]~h~",                                   
                { x = 985.19, y = -2122.08, z = 30.48, objZ= 1 , take = false}, { x = 985.56, y = -2118.20, z = 30.76, objZ= 1 , take = false}, {x = 985.72, y = -2116.26, z = 30.76, objZ= 1 , take = false},
                   
                { x = 984.49, y = -2112.53, z = 30.76, objZ= 1 , take = false}, { x = 981.80, y = -2120.93, z = 30.48, objZ= 1 , take = false}, {x = 981.62, y = -2122.37, z = 30.48, objZ= 1 , take = false},
            }},
           
            [4] = { 
                [1] = {getvehicle =  {{x = 969.29, y = -2109.15, z = 30.48, h = 88.59}, pedmodel = "csb_chef", pedanim = "WORLD_HUMAN_AA_COFFEE", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = 965.91, y = -2113.58, z = 29.87, h = 172.71}}, 
                [3] = {vehiclename = "caddy2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {
            [1] = {anim = "anim@amb@business@coc@coc_unpack_cut_left@", anim2 = "coke_cut_v1_coccutter"}, 
            [2] = {obj = true, nameobj = "prop_knife",  objX = 0.13, objY = 0.14, objZ = 0.09, objrotX = 40.0, objrotY = 0.0, objrotZ = 0.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 2,
                    torso_1 = 97, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 85,
                    pants_1 = 47, pants_2 = 0,
                    shoes_1 = 54, shoes_2 = 0,
                    chain_1 = 3, chain_2 = 0,
                    helmet_1 = 14, helmet_2 = 3,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 1,
                    torso_1 = 88, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 109,
                    pants_1 = 49, pants_2 = 0,
                    shoes_1 = 55, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },         
        },
    }, ]]

--[[     { 
        [1] = {jobs = "Harvest",img =  "./img/harvest.png",img2 =  "./img/harvest2.png",info = "The city's vineyards need many people to help pick all the grapes to make wine. Your job is simple, cut the bunches of grapes and store them well for further processing." },
          
        [2] = {     
            [1] = {Workclothes = {{x = -1940.86, y = 1881.38, z = 180.57},nameblip = "~h~[JOB]~h~ Work clothes"}},          
              
            [2] = {payout = {{x = -1972.89, y = 1828.50, z = 181.51, h = 175.60},pedmodel = "a_m_m_hillbilly_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },

            [3] = {coordsjob = {
                prop = false,
                propname = "",
                nameblip = "Grapes",    
                text = "Press ~h~[E]~h~",                                                                                                                               
                { x = -1929.07, y = 1843.07, z = 169.82, objZ= 1 , take = false}, { x = -1895.27, y = 1866.77, z = 161.68, objZ= 1 , take = false}, {x = -1879.86, y = 1881.01, z = 158.44, objZ= 1 , take = false},
                  
                { x = -1865.65, y = 1887.82, z = 153.67, objZ= 1 , take = false}, { x = -1865.85, y = 1902.10, z = 155.49, objZ= 1 , take = false}, {x = -1889.83, y = 1896.24, z = 164.24, objZ= 1 , take = false},  
            }},
           
            [4] = {    
                [1] = {getvehicle =  {{x = -1926.28, y = 1828.35, z = 167.10, h = 56.21}, pedmodel = "a_m_m_farmer_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
                [2] = {spawnvehicle = {x = -1945.18, y = 1821.08, z = 171.05, h = 79.18}}, 
                [3] = {vehiclename = "Bodhi2"},
                [4] = {vehicle = true}
            }
        },
       
        [3] = {  
            [1] = {anim = "missmechanic", anim2 = "work2_base"}, 
            [2] = {obj = true, nameobj = "p_cs_scissors_s",  objX = 0.09, objY = 0.01, objZ = 0.0, objrotX = -300.0, objrotY = -2020.0,objrotZ = 330.0},
            [3] = {animtime = 5000} 

        },

        [4] = {
            [1] = {
                Pay_Advanced = false,

                Pay = 1550, IncreasePerLVL = 1,

                PayPerLVL = {
                    [0] = 100,
                    [1] = 101,
                    [2] = 102,
                    [3] = 103,
                    [4] = 104,
                    [5] = 105,
                    [6] = 106,
                    [7] = 107,
                    [8] = 108,
                    [9] = 109,
                    [10] = 110,
                },
            
            },
            [2] = {EXP = 50, IncreasePerLVL = 1},
            [3] = {GetItem = false, ItemName = "water", Amount = 1}
        },

        [5] = {
            ['clothes'] = {
                male = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 238, torso_2 = 2,
                    decals_1 = 0, decals_2 = 0,
                    arms = 21,
                    pants_1 = 47, pants_2 = 0,
                    shoes_1 = 35, shoes_2 = 1,
                    chain_1 = 0, chain_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    ears_1 = -1, ears_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                },
                female = {
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 118, torso_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                    arms = 42,
                    pants_1 = 45, pants_2 = 1,
                    shoes_1 = 36, shoes_2 = 0,
                    chain_1 = -1, chain_2 = 0,
                    helmet_1 = 53, helmet_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                }
            },          
        },
    },
 ]]

--[[  { 
    [1] = {jobs = "Junkyard",img =  "./img/junkyard.png",img2 =  "./img/junkyard2.png",info = "There is still a lot of scrap metal to scrap and sell in the old junkyard. New merchandise arrives every day. It is a dirty but honourable job." },
        
    [2] = { 
        [1] = {Workclothes = {{x = 2404.82, y = 3127.34, z = 48.15},nameblip = "~h~[JOB]~h~ Work clothes"}},        

        [2] = {payout = {{x = 2339.65, y = 3049.59, z = 47.15, h = 0.81},pedmodel = "a_m_m_indian_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work Payout"} },   

        [3] = {coordsjob = {
            prop = true,
            propname = "prop_rub_scrap_06",
            nameblip = "Scrap",
            text = "Press ~h~[E]~h~",                                                                
            { x = 2389.01, y = 3051.03, z = 48.29, objZ= 1 , take = false}, { x = 2419.37, y = 3050.66, z = 48.15, objZ= 1 , take = false}, {x = 2400.05, y = 3032.53, z = 48.15, objZ= 1 , take = false},
              
            { x = 2396.15, y = 3097.78, z = 48.15, objZ= 1 , take = false}, { x = 2393.72, y = 3073.63, z = 48.15, objZ= 1 , take = false}, {x = 2354.17, y = 3031.72, z = 48.19, objZ= 1 , take = false},
        }},
       
        [4] = { 
            [1] = {getvehicle =  {{x = 2347.59, y = 3074.49, z = 47.15, h = 292.11}, pedmodel = "s_m_m_trucker_01", pedanim = "WORLD_HUMAN_SMOKING", nameblip = "~h~[JOB]~h~ Work vehicle"}}, 
            [2] = {spawnvehicle = {x = 2353.49, y = 3072.39, z = 47.16, h = 277.75}}, 
            [3] = {vehiclename = "Scrap"},
            [4] = {vehicle = true}
        }
    },
   
    [3] = {
        [1] = {anim = "missheistdockssetup1ig_10@base", anim2 = "talk_pipe_base_worker1"}, 
        [2] = {obj = true, nameobj = "prop_tool_drill",  objX = 0.14, objY = 0.02, objZ = 0.0, objrotX = -40.0, objrotY = -40.0, objrotZ = -195.0},
        [3] = {animtime = 5000} 

    },

    [4] = {
        [1] = {
            Pay_Advanced = false,

            Pay = 1550, IncreasePerLVL = 1,

            PayPerLVL = {
                [0] = 100,
                [1] = 101,
                [2] = 102,
                [3] = 103,
                [4] = 104,
                [5] = 105,
                [6] = 106,
                [7] = 107,
                [8] = 108,
                [9] = 109,
                [10] = 110,
            },
        
        },
        [2] = {EXP = 50, IncreasePerLVL = 1},
        [3] = {GetItem = false, ItemName = "water", Amount = 1}
    },

    [5] = {
        ['clothes'] = {
            male = {
                tshirt_1 = 15, tshirt_2 = 2,
                torso_1 = 5, torso_2 = 0,
                decals_1 = 0, decals_2 = 0,
                arms = 67,
                pants_1 = 47, pants_2 = 0,
                shoes_1 = 54, shoes_2 = 0,
                chain_1 = 33, chain_2 = 0,
                helmet_1 = -1, helmet_2 = 3,
                ears_1 = -1, ears_2 = 0,
                bproof_1 = 0, bproof_2 = 0,
            },
            female = {
                tshirt_1 = 20, tshirt_2 = 1,
                torso_1 = 160, torso_2 = 0,
                decals_1 = 0, decals_2 = 0,
                arms = 40,
                pants_1 = 40, pants_2 = 1,
                shoes_1 = 51, shoes_2 = 0,
                chain_1 = -1, chain_2 = 0,
                helmet_1 = -1, helmet_2 = 0,
                bproof_1 = 0, bproof_2 = 0,
            }
        },       
    },
}, ]]