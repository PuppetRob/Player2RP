
let animating = false;
OpenPage = function(page){
  if(animating){return false;}
  animating = true;
  let content = openTablet.find("tabletContent");
  content.animate({opacity:0}, 200, function(){
    content.empty();
    content.animate({opacity:1}, 200);
    animating = false;
    switch(page){
      case "contracts":
        contracts();
        break;
      case "topHunters":
        topHunters();
        break;
    }


  });

}

OpenTablet = function(){

  ChooseLanguage(fromGame.language, function(chosen){

    openTablet = $(`
      <tablet>
        <tabletScreen>
          <tabletMenu  style="background: linear-gradient(180deg, ${fromGame.colorTheme} 0%, hsla(0, 0%, 0%, 1.0) 100%) !important;">
            <tabletMenuLogo style="background-image:url(${fromGame.tabletIcon});"></tabletMenuLogo>
            <tabletMenuButtons>
              <div data="contracts">
                <i class="fa-solid fa-file-signature"></i>
                <div>${locales.Contracts}</div>
              </div>
              <div data="topHunters">
                <i class="fa-solid fa-people-robbery"></i>
                <div>${locales.TopHunters}</div>
              </div>
              <div id="dutyButton" data="dutyButton">
                <i class="fa-solid fa-user-shield" style="${fromGame.onDuty == fromGame.thisTabletOffice?"color:rgba(0, 255, 0, 0.692);":"color:rgba(255, 0, 0, 0.692);"}"></i>
                <div style="${fromGame.onDuty == fromGame.thisTabletOffice?"color:rgba(0, 255, 0, 0.692);":"color:rgba(255, 0, 0, 0.692);"}">${fromGame.onDuty == fromGame.thisTabletOffice?locales.HunterActive:locales.HunterInactive}</div>
              </div>
            </tabletMenuButtons>
            <tabletMenuProfile>
              <profilePhoto></profilePhoto>
              <profileInfo>
                <div>
                  <div>
                    <i class="fa-solid fa-user"></i>
                    <div>${locales.Name}</div>
                  </div>
                  <div>${fromGame.name}</div>
                </div>
                <div>
                  <div>
                    <i class="fa-solid fa-user"></i>
                    <div>${locales.TotalEarnings}</div>
                  </div>
                  <div>${fromGame.currency}${fromGame.TotalEarnings || 0}</div>
                </div>
                <div>
                  <div>
                    <i class="fa-solid fa-user"></i>
                    <div>${locales.TotalBounties}</div>
                  </div>
                  <div>${fromGame.TotalBounties || 0}</div>
                </div>
              </profileInfo>
                
            </tabletMenuProfile>
          </tabletMenu> 
          <tabletContent></tabletContent>
        </tabletScreen>
      </tablet>
    `).appendTo("body");
    let profPic = openTablet.find("profilePhoto");
    if (fromGame.profPic != undefined && fromGame.profPic != null && fromGame.profPic != "" && fromGame.profPic != " "){ 
      profPic.css("background-image", `url(${fromGame.profPic})`);
    }
    profPic.click(function(){
      popOutOpen = $(`
      <div class="popOut" style="opacity:0;"> 
        <div class="input">
          <div>
            <i class="fa-solid fa-link"></i>
            <div>${locales.EnterImageLink}</div>
          </div>
          <input spellcheck="false"></input>
        </div>
      </div>`).appendTo("body");
      $('tablet').css("pointer-events", "none");
        popOutOpen.find(".input").find("input").focus();
        popOutOpen.find(".input").find("input").on('keyup', function (e) {
          if (e.key === 'Enter' || e.keyCode === 13) {
     
            let link = popOutOpen.find(".input").find("input").val();
            
            popOutOpen.animate({opacity:0}, 200, function(){
              $(profPic).css('background-image', `url(${link})`);
              $('tablet').css("pointer-events", "auto");
              fromGame.profPic = link;
              Post("profPic", {picture:fromGame.profPic})
              popOutOpen.remove();
              popOutOpen = false;
            });
          }
        });
        popOutOpen.animate({opacity:1}, 200);
    })

    openTablet.find("tabletMenuButtons").children().on("click", function(){
      let page = $(this).attr("data");
      if (page == "dutyButton"){
        if (animating){return false;}
        animating = true;
        if (fromGame.onDuty != fromGame.thisTabletOffice){
          fromGame.onDuty = fromGame.thisTabletOffice;
          $(this).find("div").animate({color:"rgba(0, 255, 0, 0.692)"}, 200, function(){
            Post("dutyChange", {onDuty:fromGame.onDuty})
            $(this).text(locales.HunterActive);
            animating = false;
          })
          $(this).find("i").animate({color:"rgba(0, 255, 0, 0.692)"}, 200);
        
        } else {
          fromGame.onDuty = false;
          $(this).find("div").animate({color:"rgba(255, 0, 0, 0.692)"}, 200, function(){
            animating = false;
            Post("dutyChange", {onDuty:false})
            $(this).text(locales.HunterInactive);
          })
          $(this).find("i").animate({color:"rgba(255, 0, 0, 0.692)"}, 200);
        }
      } else  {
        openTablet.find("tabletMenuButtons").children().removeClass("active");
        $(this).addClass("active");
        OpenPage(page);
      }
    })
    OpenPage("contracts");
  });

}








sortedWantedPlayers = function(cb){
  let wantedPlayers = fromGame.wantedPlayers;
  let sorted = wantedPlayers.sort((a,b) => {
    if (fromGame.sortType == "totalBounty"){
      return getTotalBounty(b.bounties) - getTotalBounty(a.bounties);
    }else if (fromGame.sortType == "activeWarrants"){
      return b.bounties.length - a.bounties.length;
    }else if (fromGame.sortType == "wantedSince"){
      return getOldestDate(a.bounties) - getOldestDate(b.bounties);
    }
  
  })

  cb(sorted);
}


topHunters = function(){
  let content = openTablet.find("tabletContent");
  content.css("justify-content", "center")
  let newTable = $(`
    <contracts style="width:70%;">
      <list style="opacity:1; width:90%;">
        <listContent></listContent>
      </list>
    </contracts>
  `).appendTo(content);
  // <div>${topHunter.name}</div>
  // <div>${topHunter.completedBounties}</div>
  // <div>${fromGame.currency}${topHunter.totalEarnings}</div>
  let leaderboardContent = newTable.find("listContent");
  if (fromGame.topHunters.length > 0){
    for (let i = 0; i < fromGame.topHunters.length; i++) {
      let topHunter = fromGame.topHunters[i];
   
      let newEntry = $(`
      <listItem>  
        <listItemImg></listItemImg>
        <listItemInfo>
          <info>
            <div>
              <i class="fa-solid fa-user"></i>
              <div>${locales.Name}</div>
            </div>
            <div>${topHunter.name}</div>
          </info>
          <info>
            <div>
              <i class="fa-solid fa-clock"></i>
              <div>${locales.CompletedBounties}</div>
            </div>
            <div>${topHunter.completedBounties}</div>
          </info>
          <info>
            <div>
              <i class="fa-solid fa-money-bill"></i>
              <div>${locales.TotalEarnings}</div>
            </div>
            <div>${fromGame.currency}${topHunter.totalEarnings}</div>
          </info>
        </listItemInfo>
      </listItem>
      `).appendTo(leaderboardContent);
      let img = newEntry.find("listItemImg");
      if (topHunter.image != undefined && topHunter.image != null && topHunter.image != "" && topHunter.image != " "){
        img.css("background-image", `url(${topHunter.image})`);
      }
      
    }
  } else {
    let contracts = openTablet.find("contracts");
    contracts.empty();
    $(`<div id="noResults">${locales.NoHunters}</div>`).appendTo(contracts);
  }


  newTable.animate({opacity:1}, 200);
}

getTotalBounty = function(bounties){
  let total = 0;
  for (let i = 0; i < bounties.length; i++) {
    total += bounties[i].curBounty;
  }
  return total;
}

getOldestDate = function(bounties){
  let oldest = 0;
  for (let i = 0; i < bounties.length; i++) {
    if(bounties[i].wantedSince > oldest){
      oldest = bounties[i].wantedSince;
    }
  }
  return new Date(oldest * 1000).toLocaleDateString();
}


{/* <div>${wantedPlayer.name}</div>
<div>${getOldestDate(wantedPlayer.bounties)}</div>
<div>${fromGame.currency}${getTotalBounty(wantedPlayer.bounties)}</div>
<div>${wantedPlayer.bounties.length}</div> */}

contracts = function(){
  let content = openTablet.find("tabletContent");
  let newPage = $(`
    <contracts style="width:100%;">
      <list style="opacity:1; width:90%;">
        <listContent></listContent>
      </list>
    </contracts>
  `).appendTo(content);
  sortedWantedPlayers(function(sorted){
    if (sorted.length > 0){
      for (let i = 0; i < sorted.length; i++) {
        let wantedPlayer = sorted[i];
        let newEntry = $(`
          <listItem class="selectable">  
            <listItemImg></listItemImg>
            <listItemInfo>
              <info>
                <div>
                  <i class="fa-solid fa-user"></i>
                  <div>${locales.Name}</div>
                </div>
                <div>${wantedPlayer.name}</div>
              </info>
              <info>
                <div>
                  <i class="fa-solid fa-clock"></i>
                  <div>${locales.WantedSince}</div>
                </div>
                <div>${getOldestDate(wantedPlayer.bounties)}</div>
              </info>
              <info>
                <div>
                  <i class="fa-solid fa-money-bill"></i>
                  <div>${locales.TotalBounty}</div>
                </div>
                <div>${fromGame.currency}${getTotalBounty(wantedPlayer.bounties)}</div>
              </info>
              <info>
                <div>
                  <i class="fa-solid fa-file-signature"></i>
                  <div>${locales.TotalBounties}</div>
                </div>
                <div>${wantedPlayer.bounties.length}</div>
              </info>
            </listItemInfo>
          </listItem>
        `).appendTo(newPage.find("listContent"));
  
        let img = newEntry.find("listItemImg");
        if (wantedPlayer.bounties[0] && wantedPlayer.bounties[0].img != undefined && wantedPlayer.bounties[0].img != null && wantedPlayer.bounties[0].img != "" && wantedPlayer.bounties[0].img != " "){
          img.css("background-image", `url(${wantedPlayer.bounties[0].img})`);
  
        } else {
        }
        newEntry.click( function(){
          newEntry.removeClass("selectable").css({
            'background-color': `${fromGame.colorTheme} !important`,
            'box-shadow': '0px 0px 5px 0px rgba(0, 0, 0, 0.75)',
          }).siblings().css({
            'background-color': 'rgba(7, 7, 7, 0.5)',
            'box-shadow': '0px 0px 2px 0px rgba(0,0,0,0.75)',
          });
          displayBounty(wantedPlayer);
        })
      }
    } else {
      let contracts = openTablet.find("contracts");
      contracts.empty();
      $(`<div id="noResults">${locales.NoContracts}</div>`).appendTo(contracts);

    }

  });

}

/* 
<displayBounty>
  <div>Current Bounties</div>
  <bounties>
    <bounty>
      <div>
        <bountyImg></bountyImg>
        <bountyInfo>
          <div>
            <div>Name</div>
            <div>John Gilmore</div>
          </div>
          <div>
            <div>Bounty</div>
            <div>£2300</div>
          </div>
          <div>
            <div>Wanted Since</div>
            <div>12th Dec 2022</div>
          </div>
        <bountyInfo>
      </div>
      <div>
        <div>
          <div>Reason</div>
          <div>Was speeding past cops</div>
        </div>
        <div>
          <div>Description</div>
          <div>Was speeding past cops</div>
        </div>
      </div>
      <div>
        <div>
          <i class="fa-solid fa-handcuffs"></i>
          <div>Jail</div>
          <div>5 Months</div>
        </div>
        <div>
          <i class="fa-solid fa-handcuffs"></i>
          <div>Jail</div>
          <div>5 Months</div>
        </div>
      </div>
    </bounty>
  </bounties>
</displayBounty>

*/

displayBounty = function(wantedPlayer){
  let bountyDisplay = openTablet.find("displayBounty");
  if (!bountyDisplay[0]) {

    let tabletContent = openTablet.find("tabletContent");
    openTablet.find("contracts").animate({width:"70%"},200);
    bountyDisplay = $(`
      <displayBounty style="background: linear-gradient(180deg, ${fromGame.colorTheme} 0%, hsla(0, 0%, 0%, 1.0) 100%) !important;"> 
        <div>${locales.CurrentBounties}</div>
        <bounties></bounties>
      </displayBounty>
    `).appendTo(tabletContent);
  }
  
  let bounties = bountyDisplay.find("bounties");
  $(bounties).fadeOut(100, function(){
    $(bounties).empty();
    $(bounties).fadeIn(100, function(){
      for (let i = 0; i < wantedPlayer.bounties.length; i++) {
        let bounty = wantedPlayer.bounties[i];
        let newBounty = $(`
          <bounty>
            <div>
              <bountyImg></bountyImg>
              <bountyInfo>
                <div>
                  <div>${locales.BountyCreator}</div>
                  <div style="${!fromGame.showCreators?"filter:blur(2px);":""}">${fromGame.showCreators?bounty.creator: "Unknown"}</div>
                </div>
                <div>
                  <div>${locales.Bounty}</div>
                  <div>${fromGame.currency}${bounty.curBounty}</div>
                </div>
                <div>
                  <div>${locales.WantedSince}</div>
                  <div>${new Date(bounty.wantedSince * 1000).toLocaleDateString()}</div>
                </div>
              </bountyInfo>
            </div>
            <div>
              <div>
                <div>${locales.Reason}</div>
                <div>${bounty.reason}</div>
              </div>
              <div>
                <div>${locales.Description}</div>
                <div>${bounty.description}</div>
              </div>
            </div>
          </bounty>
        `).appendTo(bountyDisplay.find("bounties"));
        if (bounty.img != undefined && bounty.img != null && bounty.img != "" && bounty.img != " "){
          newBounty.find("bountyImg").css("background-image", `url(${bounty.img}`)
        }
        
        let consequences = $(`<div></div>`).appendTo(newBounty);
        for (const [key, value] of Object.entries(bounty.consequences)) {
          if (key == "Jail" && value){
            let newConsequence = $(`
              <div>
                <i class="fa-solid fa-hourglass-start"></i>
                <div>${locales.Jail}</div>
                <div>${bounty.consequences.JailTime} Months</div>
              </div>
            `).appendTo(consequences);
          } else if (key == "Fine" && value){
            let newConsequence = $(`
              <div>
                <i class="fa-solid fa-money-bill"></i>
                <div>${locales.Fine}</div>
                <div>${fromGame.currency}${bounty.consequences.FineAmount}</div>
              </div>
            `).appendTo(consequences);
          } else if (key == "Kill" && value){
            let newConsequence = $(`
              <div>
                <i class="fa-solid fa-skull"></i>
                <div>${locales.Kill}</div>
                
              </div>
            `).appendTo(consequences);
          } else if (key == "Vehicle" && value){
           
            let newConsequence = $(`
              <div>
                <i class="fa-solid fa-car"></i>
                <div>${locales.VehicleSeize}</div>
                <div>${Object.keys(bounty.consequences.VehiclePlates).length}</div>
              </div>
            `).appendTo(consequences);
          }
    
        }
      }
    });
  });
} 


window.addEventListener('message', function(event) {
  if (event.data.type == "openTablet") {
    fromGame = event.data.fromGame;
    OpenTablet();
  }
});


// USE TO OPEN IN A BROWSER FOR EDITING PURPOSES
// OpenTablet();