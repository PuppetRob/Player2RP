let fromGame = {
  onDuty:"killBounties",
  thisTabletOffice:"policeBounties",

  name:"John Doe",
  TotalEarnings:10000,
  TotalBounties:10,
  profPic:"https://i.ibb.co/8BZVJDc/image.png",

  showCreators:false,
  language:"ENG",
  currency:"£",
  tabletIcon:"pdlogo.png",
  sortType:"wantedSince", // totalBounty, activeWarrants, wantedSince
  colorTheme:"rgb(0, 80, 143, 0.8)",

  topHunters:[
    // {
    //   name:"John Doe",
    //   completedBounties:10,
    //   totalEarnings:10000,
    //   image:"https://i.ibb.co/8BZVJDc/image.png",
    // },
    // {
    //   name:"John Doe",
    //   completedBounties:10,
    //   totalEarnings:10000,
    //   image:"https://i.ibb.co/8BZVJDc/image.png",
    // },
  ],

  wantedPlayers:[
    {
      name:"John Doe",
      id:"123456789",
      bounties:[
        {
          creator: "Rick Diaz",
          initBounty:5000,
          curBounty:5000,
          wantedSince:1691797755,
          reason:"Was speeding past cops all night, we tried to pull him over but he sped off, could be armed, shot at cops the other week maybe in the same car?",
          description:"Est optio impedit rem officiis sequi ut placeat ratione. Ex sunt perferendis et consequatur iste ut omnis quod aut animi omnis ut incidunt voluptatibus ut ducimus facilis? Sed sunt internos non officiis quidem vel delectus omnis!",
          img:"",
          consequences:{
            Jail:true,
            JailTime:10,
            Fine:10,
            FineAmount:1000,
          },
        },
        {
          creator: "Rick Diaz",
          initBounty:5000,
          curBounty:5000,
          wantedSince:1690737755,
          reason:"Was speeding past cops",
          description:"Tall Dark Hair",
          img:"https://i.ibb.co/8BZVJDc/image.png",
          consequences:{
            Fine:10,
            FineAmount:1000,
          },
        },
      ],
    },
    {
      name:"John Doe",
      id:"123456789",
      bounties:[
        {
          creator: "Rick Diaz",
          initBounty:5000,
          curBounty:5000,
          wantedSince:1691797755,
          reason:"Was speeding past cops all night, we tried to pull him over but he sped off, could be armed, shot at cops the other week maybe in the same car?",
          description:"Est optio impedit rem officiis sequi ut placeat ratione. Ex sunt perferendis et consequatur iste ut omnis quod aut animi omnis ut incidunt voluptatibus ut ducimus facilis? Sed sunt internos non officiis quidem vel delectus omnis!",
          img:"https://i.ibb.co/8BZVJDc/image.png",
          consequences:{
            jail:10,
            fine:1000,
          },
        },
        {
          creator: "Rick Diaz",
          initBounty:5000,
          curBounty:5000,
          wantedSince:1690737755,
          reason:"Was speeding past cops",
          description:"Tall Dark Hair",
          img:"https://i.ibb.co/8BZVJDc/image.png",
          consequences:{
            jail:10,
            fine:1000,
          },
        },
      ],
    },
    {
      name:"John Doe",
      id:"123456789",
      bounties:[
        {
          creator: "Rick Diaz",
          initBounty:500000,
          curBounty:50000000,
          wantedSince:1690737755,
          reason:"Was speeding past cops",
          description:"Tall Dark Hair",
          img:"https://i.ibb.co/8BZVJDc/image.png",
          consequences:{
            jail:10,
            fine:1000,
          },
        },
      ],
    },
  ]
}


let locales = {}

function fetchAndDecodeJSON(url) {
  return fetch(url)
  .then(response => response.json())
  .catch(error => {
    console.error('Error fetching JSON:', error);
  });
}

const localeFileURL = '../../../usersettings/ui-language.json'; // Replace with your JSON file's URL

ChooseLanguage = (lang, cb) => {
  fetchAndDecodeJSON(localeFileURL)
  .then(localeData => {
    locales = localeData[lang];
    cb();
  })
  .catch(error => {
    console.error('Error decoding JSON:', error);
  });
}


