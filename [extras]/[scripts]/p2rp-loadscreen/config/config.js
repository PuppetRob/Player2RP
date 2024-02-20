
const Config = new Object();

Config.BackgroundSettings = {
    background_source : "video", // possible values (video/image)
    background_sound_source : "music", // possible values (video/music/mute)
    background_video_path : "./assets/video.mp4", // you can use a discord link to avoid charginf video in the script
    background_music_path : "./assets/music.mp3",
    default_sound_volume: 50,
}

Config.Title = { 
    title : "P2RP", 
    subtitle : "" 
}

Config.ServerInformation = {
    title : "Welcome",
    subtitle : "",
    infos : [
        { info : "HOW TO CONNECT" },
        { info : "We hope you enjoy your stay!" },
      /*  { info : "Lorem ipsum dolor sit amet consectetur. Sed eu consectetur3" }, */
    ]
}

 Config.ServerRules = {
    title : "New Player Tips",
    subtitle : "",
    rules : [
        { title: "", description : "This is a Serious Roleplay Server" },
        { title: "", description : "Always stay in character. No OOC talk" },
        { title: "", description : "Check out our guides and tutorials on discord" },
        { title: "", description : "Refer friends and earn rewards" },
        { title: "", description : "Turn common blips on/off in your radial menu" },
        { title: "", description : "Press the HOME Button to see what illegal activities are active" },
        { title: "", description : "Read the Guide Book in your inventory for more tips" },
        { title: "", description : "Get whitelisted for Police/EMS/Fire/Businesses and more" },
        { title: "", description : "Submit a ticket on discord if you need assistance" },


    ]
} 

Config.Staff = {
    title : "Server Staff",
    subtitle : "",
    members : [
        {name : "Cass", role :"Owner", avatar:"https://media.discordapp.net/attachments/1052372106605772801/1088344188208287784/127025.png?width=910&height=910"},
        {name : "Puppet", role :"Developer", avatar:"https://cdn.discordapp.com/attachments/1052372106605772801/1101045201176375306/discord-among-us.gif"},
        {name : "Butters", role :"Staff", avatar:"https://cdn.discordapp.com/attachments/1052372106605772801/1101044491177185300/e7ab03bac23eb9b3f5bd67ba27ca7b08.gif"},
        {name : "Mark", role :"Staff", avatar:"https://cdn.discordapp.com/attachments/1052372106605772801/1101044491177185300/e7ab03bac23eb9b3f5bd67ba27ca7b08.gif"},
        {name : "Hawkins", role :"Staff", avatar:"https://cdn.discordapp.com/attachments/1052372106605772801/1101044491177185300/e7ab03bac23eb9b3f5bd67ba27ca7b08.gif"},

    ]
}

Config.SocialMedia = [
    {name : "DISCORD", label : "discord.gg/sbmrp", link : "https://discord.gg/sbmrp", icon : "fa-brands fa-discord", color:"#5562EA"},
    {name : "WEBSITE", label : "www.sbmgaming.net", link : "https://sbmgaming.net", icon : "fa-solid fa-globe", color:"#9249C0"},
    {name : "YOUTUBE", label : "@sbmrp", link : "https://youtube.com@sbmrp", icon : "fa-brands fa-youtube", color:"#9e0200"},
    {name : "TIKTOK", label : "@sbmrp", link : "https://youtube.com@sbmrp", icon : "fa-brands fa-tiktok", color:"#9e0200"},
]

Config.Locales = {
    Welcome : "WELCOME TO",
    Sound : "Sound",
    Loading : "Loading in progress, please wait...",
}
