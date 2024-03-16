ServerSettings = {

  Webhooks = {
    Enabled = true, 
    Admin   = "https://discord.com/api/webhooks/996095775765430352/h_ab-DgYiKcfFnPG82K_ZIVHX4spYManM8yDpj-h_5ETgnPtg0WItBrfjFrqS7py_jcO",

    Types = { --## Times you want a webhook to be sent, set to false if you dont want it to be sent at this time
      ['newBounty'] = true, 
      ['bountyComplete'] = true, 
      ['bountyIncreased'] = true,
    },


    Offices = {
      ['policeBounties']  = {
        URL   = "https://discord.com/api/webhooks/996095775765430352/h_ab-DgYiKcfFnPG82K_ZIVHX4spYManM8yDpj-h_5ETgnPtg0WItBrfjFrqS7py_jcO",
        Color = 3093151,
        Icon  = "https://cdn.discordapp.com/attachments/790854126056636496/1142154303004479528/pdlogo.png",

      },
      ['illegalBounties'] = {
        URL   = "https://discord.com/api/webhooks/996095775765430352/h_ab-DgYiKcfFnPG82K_ZIVHX4spYManM8yDpj-h_5ETgnPtg0WItBrfjFrqS7py_jcO",
        Color = 8323072, 
        Icon  = "", 
      },
      
    },
  },
}