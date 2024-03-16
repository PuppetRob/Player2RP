
let popOutOpen = false;
let contractOpen = false;
let currentCars = false;
let nameResults = [
  {
    "name": "John Doe",
    "ID": "123456789",
    "DOB": "01/01/2000",
    "Vehicles":{
      "XYZ 123": "BMW M3",
    },
  },
  {
    "name": "Jane Doe",
    "ID": "987654321",
    "DOB": "01/01/2000",
    "Vehicles":{
      "XYZ 123": "BMW M3",
    },
  },
  {
    "name": "John Smith",
    "ID": "123456789",
    "DOB": "01/01/2000",
    "Vehicles":{
      "XYZ 123": "BMW M3",
    },
  },

]

CreateToggleSwitch = function(data, cb){
  let newToggle = $(`
  <div class="switchBox ${data.Default?"true":"false"}" >
    <div class="switchBall" style="${data.Default?"left:62%":"left:4%;"}"></div>
    <div class="switchText true">${data.TrueText}</div>
    <div class="switchText false">${data.FalseText}</div>

  </div>`).appendTo(data.appendTo);
  if (data.Default) {
    newToggle.find(".false").css("opacity", "0");
    newToggle.css("background-color", `${data.TrueColor?data.TrueColor:"rgba(0,255,0,0.6)"}`)
  } else {
    newToggle.find(".true").css("opacity", "0");
    newToggle.css("background-color", `${data.FalseColor?data.FalseColor:"rgba(255,0,0,0.6)"}`)
  }
  newToggle.click(function() {
    if (newToggle.hasClass("true")){
      let newBall = newToggle.find(".switchBall");
      newBall.animate({left: "4%"}, 100);
      newToggle.addClass("false");
      newToggle.removeClass("true");
      
      newToggle.find(".true").animate({opacity:0}, 100, function(){
        newToggle.find(".false").animate({opacity:1}, 100);
        if (cb) {
          cb(false);
        }
        newToggle.css("background-color", `${data.FalseColor?data.FalseColor:"rgba(255,0,0,0.6)"}`)
      });
    } else {
      let newBall = newToggle.find(".switchBall");
      newBall.animate({left: "62%"}, 100);
      newToggle.addClass("true");
      newToggle.removeClass("false");
      newToggle.find(".false").animate({opacity:0}, 100, function(){
        newToggle.css("background-color", `${data.TrueColor?data.TrueColor:"rgba(0,255,0,0.6)"}`)
        newToggle.find(".true").animate({opacity:1}, 100);
        if (cb) {
          cb(true);
        }
      });
    }
  });
}



CreateNewContract = function(options, callback) {
  ChooseLanguage(fromGame.language, function(){
    contractOpen = true;

    let ret = {
      OriginOffice: options.OriginOffice,
      TargetName  : false,
      TargetID    : false,
      TargetVehicles:{
        "XYZ 123": "BMW M3",
      },
      Bounty      : 0,
      Reason      : "",
      Image       : "",
      Consequences: {},
    }
    let newPage = $(`
    <div class="contractPage" style="background: linear-gradient(180deg, ${options.Color} 0%, hsla(0, 0%, 0%, 1.0) 100%);">
      <div class="contractPageHeader">
        <i class="${options.Icon}"></i>
        <div>${options.Title}</div>
      </div>
      <div class="contractPageContent">
        
      <div class="contractImage">
          <i class="fa-solid fa-plus"></i>
        </div>
          
        <div class="input">
          <div>
            <i class="fa-solid fa-user"></i>
            <div>${locales.Target}</div>
          </div>
          <div>
            <input id="name" autocomplete="off" spellcheck="false"></input>
            <i id="search" class="fa-solid fa-search"></i>
          </div>
          
        </div>
              
        <div class="input">
          <div>
            <i class="fa-solid fa-dollar"></i>
            <div>${locales.BountyPrice}</div>
          </div>
          <input type="number" min="0" id="bountyPrice" autocomplete="off" spellcheck="false"></input>
        </div>
        <div class="input" style="width:75%;">
          <div>
            <i class="fa-solid fa-user"></i>
            <div>${locales.TargetDescription}</div>
          </div>
          <textarea id="bountyDescription" autocomplete="off" rows="2" draggable="false" spellcheck="false"></textarea>
        </div>
        <div class="input" style="width:75%;">
          <div>
            <i class="fa-solid fa-question"></i>
            <div>${locales.ReasonForBounty}</div>
          </div>
          <textarea id="bountyReason" autocomplete="off" rows="3" draggable="false" spellcheck="false"></textarea>
        </div>
  
        <div class="sideLabel">
          <i class="fa-solid fa-scale-balanced"></i>
          <div>${locales.Consequences}</div>
        </div>
        <div class="consequencesBox"></div>
      </div>
  
      <div class="contractPageFooter">
        <div class="confirmButton" style="width:60%; height:25%;">
          <i class="fa-solid fa-crosshairs"></i>
          <div>${locales.Confirm}</div>
        </div>
      </div>
  
    </div>`).appendTo("body");
    let consequenceBox = newPage.find(".consequencesBox");
    let consequences = options.Consequences;
  
  
    if (consequences.Fine) {
      let newConsequence = $(`
      <div class="consequence">
        <div>
          <i class="fa-solid fa-dollar"></i>
          <div>${locales.Fine}</div>
        </div>
        
      </div>
      `).appendTo(consequenceBox);
  
      CreateToggleSwitch({
        appendTo  : newConsequence,
        Default    : false,
        TrueColor : "green",
        TrueText  : locales.Yes,
        FalseColor: "red",
        FalseText : locales.No,
      }, function(res){
        if (!res) {
          ret.Consequences.Fine = false;
        } else {
          ret.Consequences.Fine = true;
          ret.Consequences.FineAmount = (newConsequence.find("input").val() || 0);
        }
      })
  
      let fineInput = $(`<input type="number" min="0" style="width:80%; text-align:center;" spellcheck="false"></input>`).appendTo(newConsequence);
      let fineAmount = fineInput.on('input', function() {
        if (parseInt(fineAmount.val()) > consequences.Fine) {
          fineAmount.val(consequences.Fine);
        }
        ret.Consequences.FineAmount = parseInt(fineAmount.val());
      });
    }
    if (consequences.Vehicle) {
      let newConsequence = $(`
      <div class="consequence">
        <div>
          <i class="fa-solid fa-car"></i>
          <div>${locales.VehicleSeize}</div>
        </div>
      </div>
      `).appendTo(consequenceBox);
  
      if (consequences.Vehicle) {
        ret.Consequences.VehiclePlates = (ret.Consequences.VehiclePlates || {});
      }
  
      CreateToggleSwitch({
        appendTo  : newConsequence,
        Default    : false,
        TrueColor : "green",
        TrueText  : locales.Yes,
        FalseColor: "red",
        FalseText : locales.No,
      }, function(res){
        if (!res) {
          ret.Consequences.Vehicle = false;
        } else {
          ret.Consequences.Vehicle = true;
          ret.Consequences.VehiclePlates = (ret.Consequences.VehiclePlates || {});
        }
      })
  
      let vehInput = $(`
        <vehButton>
          <div>${ret.Consequences.VehiclePlates && ret.Consequences.VehiclePlates.length || 0} Selected</div>
        </vehButton>`).appendTo(newConsequence);
      let label = $(`<div class="releaseFee">${locales.VehicleReleaseFee}</div>`).appendTo(newConsequence);
      let vehReleaseFee = $(`<input type="number" min="0" max="9999999999"style="width:80%; text-align:center;" spellcheck="false"></input>`).appendTo(newConsequence);
      let vehAmount = vehReleaseFee.on('input', function() {
        ret.Consequences.VehicleReleaseFee = parseInt(vehReleaseFee.val());
      });
      vehInput.click(function() {
        if (!ret.TargetVehicles || ret.TargetVehicles.length == 0) {
          ErrorModal(locales.NoCars);
          return
        }
  
        if (!ret.Consequences.Vehicle){
          return
        }
        popOutOpen = $(`
        <div class="popOut" style="opacity:0;"> 
          <div class="input">
            <div>
              <i class="fa-solid fa-car"></i>
              <div>${locales.SelectVehicles}</div>
            </div>
            <vehicleList></vehicleList>
          </div>
        </div>`).appendTo("body");
        $('.contractPage').css("pointer-events", "none");
        let vehicleList = popOutOpen.find("vehicleList");
        if (!ret.TargetVehicles || ret.TargetVehicles.length == 0) {
          ErrorModal(locales.NoCars);
        } else {
          for (let k in ret.TargetVehicles){
            let vehicleData = ret.TargetVehicles[k];
            let newVehicle = $(`
            <vehicle>
              <input type="checkbox" id="scales" name="scales" ${ret.Consequences.VehiclePlates && ret.Consequences.VehiclePlates[k]?"checked":""} />
              <div>
                <i class="fa-solid fa-arrow-down-a-z"></i>
                <div>${k}</div>
              </div>
              <div>
                <i class="fa-solid fa-car"></i>
                <div>${vehicleData}</div>
              </div>
            </vehicle>            
            `).appendTo(vehicleList);
  
            let checkBox = newVehicle.find("input");
            checkBox.click(function() {
              if (checkBox.is(':checked')) {
                ret.Consequences.VehiclePlates[k] = vehicleData;
              } else {
                delete ret.Consequences.VehiclePlates[k];
              }
              vehInput.find("div").text(`${Object.keys(ret.Consequences.VehiclePlates).length} Selected`);
            });
          } 
        }
        popOutOpen.animate({opacity:1}, 200);
      }); 
  
  
  
    }
  
    if (consequences.Kill) {
      let newConsequence = $(`
      <div class="consequence">
        <div>
          <i class="fa-solid fa-skull"></i>
          <div>${locales.Kill}</div>
        </div>
      </div>
      `).appendTo(consequenceBox);
  
      
      CreateToggleSwitch({
        appendTo  : newConsequence,
        Default    : false,
        TrueColor : "green",
        TrueText  : locales.Yes,
        FalseColor: "red",
        FalseText : locales.No,
      }, function(res){
        if (!res) {
          ret.Consequences.Kill = false;
        } else {
          ret.Consequences.Kill = true;
        }
      })
    }
    if (consequences.Jail) {
      let newConsequence = $(`
      <div class="consequence">
        <div>
          <i class="fa-solid fa-gavel"></i>
          <div>${locales.Jail}</div>
        </div>
      </div>
      `).appendTo(consequenceBox);
  
  
      CreateToggleSwitch({
        appendTo  : newConsequence,
        Default    : false,
        TrueColor : "green",
        TrueText  : locales.Yes,
        FalseColor: "red",
        FalseText : locales.No,
      }, function(res){
        if (!res) {
          ret.Consequences.Jail = false;
        } else {
          ret.Consequences.Jail = true;
          ret.Consequences.JailTime = (newConsequence.find("input").val() || 0);
        }
      })
  
      let jailInput = $(`<input type="number" min="0" max="${consequences.Jail}"  style="width:80%; text-align:center;" spellcheck="false"></input>`).appendTo(newConsequence);
      let jailAmount = jailInput.on('input', function() {
        if (parseInt(jailInput.val()) > consequences.Jail) {
          jailInput.val(consequences.Jail);
        }
        ret.Consequences.JailTime = parseInt(jailInput.val());
      });
  
  
  
    }
  
    newPage.find(".contractImage").click(function() {
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
      $('.contractPage').css("pointer-events", "none");
      popOutOpen.find(".input").find("input").focus();
      popOutOpen.find(".input").find("input").on('keyup', function (e) {
        if (e.key === 'Enter' || e.keyCode === 13) {
          let link = popOutOpen.find(".input").find("input").val();
          $('.contractImage').empty();
          popOutOpen.animate({opacity:0}, 200, function(){
            ret["Image"] = link;
            $('.contractImage').css('background-image', `url(${link})`);
            $('.contractPage').css("pointer-events", "auto");
            popOutOpen.remove();
              popOutOpen = false;
          });
        }
      });
      popOutOpen.animate({opacity:1}, 200);
    })
  
    newPage.find("#bountyPrice").on('input', function() {
      ret["Bounty"] = newPage.find("#bountyPrice").val();
    });
  
    newPage.find("#bountyReason").on('input', function() {
      ret["Reason"] = newPage.find("#bountyReason").val();
    });
    newPage.find("#bountyDescription").on('input', function() {
      ret["Description"] = newPage.find("#bountyDescription").val();
    });
  
    newPage.find("#search").click(function() {
      popOutOpen = $(`
      <div class="popOut list" style="opacity:0; height:auto; width:25%;"></div>`).appendTo("body");
      $('.contractPage').css("pointer-events", "none");
      let searchQuery = newPage.find("#name").val();
      if (searchQuery == "" || searchQuery == " ") {
        $(`<div>${locales.NoResults}</div>`).appendTo(popOutOpen);
        popOutOpen.animate({opacity:1}, 200);
        setTimeout(function(){
          popOutOpen.animate({opacity:0}, 100, function(){
            $('.contractPage').css("pointer-events", "auto");
            popOutOpen.remove();
            popOutOpen = false;
          });
        }, 2000);
      } else {
        Post("getPlayers", {query: searchQuery}, function(searchResults){
          if (searchResults.length == 0) {
            $(`<div>${locales.NoResults}</div>`).appendTo(popOutOpen);
            setTimeout(function(){
              popOutOpen.animate({opacity:0}, 100, function(){
                $('.contractPage').css("pointer-events", "auto");
                popOutOpen.remove();
                popOutOpen = false;
              });
            }, 2000);
          }
          for (let i = 0; i < searchResults.length; i++) {
            let newResult = $(`
            <div class="result">
              <i class="fa-solid fa-user"></i>
              <div>
                <div class="name">${searchResults[i].name}</div>        
                <div>|</div>
                <div class="name">${searchResults[i].DOB}</div> 
              </div>
            </div>`).appendTo(popOutOpen);
            newResult.click(function() {

  
              if (consequences.Vehicle){
                Post("getPlayerVehicles", {id: searchResults[i].ID}, function(vehicles){
    
                  ret["TargetVehicles"] = vehicles;
                });
              }
              newPage.find("#name").val(searchResults[i].name);
              ret["TargetName"] = searchResults[i].name;
              ret["DOB"] = searchResults[i].DOB;
              ret["TargetID"] = searchResults[i].ID;
              popOutOpen.animate({opacity:0}, 200, function(){
                $('.contractPage').css("pointer-events", "auto");
    
                popOutOpen.remove();
                popOutOpen = false;
              });
            });
          }
       
          popOutOpen.animate({opacity:1}, 200);
        });
      }
  
  
    });
  
    let checkIfConsequence = function() {
      let myConsequences = ret.Consequences;
      for (let i = 0; i < Object.keys(myConsequences).length; i++) {
        if (myConsequences[Object.keys(myConsequences)[i]]) {
          return true;
        }
      }
      return false;
    }
  
    newPage.find(".contractPageFooter").find(".confirmButton").click(function() {
      if (!ret.TargetName || !ret.TargetID) {
        ErrorModal(locales.SelectTarget);
        return;
      }
      if (ret.Bounty <= 0) {
        ErrorModal(locales.EnterPrice);
        return;
      }
      if (!checkIfConsequence()){ 
        ErrorModal(locales.SelectConsequence)
        return;
      }
      newPage.animate({opacity:0}, 200, function(){
        Post("newContract", ret);
        contractOpen = false;
        newPage.remove();
      });
    });
  });


}

ErrorModal = function(errorMsg) {
  popOutOpen = $(`
  <div class="popOut list" style="opacity:0;">
    <div style = "color:red;">${errorMsg}</div>
  </div>`).appendTo("body");
  $('.contractPage').css("pointer-events", "none");
  popOutOpen.css("pointer-events", "none");
  setTimeout(function(){
    if (popOutOpen) {
      popOutOpen.animate({opacity:0}, 100, function(){
        $('.contractPage').css("pointer-events", "auto");
        popOutOpen.remove();
        popOutOpen = false;
      });
    }
  }, 2000);
  popOutOpen.animate({opacity:1}, 200);
}

Post = function(route,data,cb){
  $.post(`http://dirk-bountiesv2/${route}`, JSON.stringify(data), function(data){
    if (cb) {
      cb(data);
    };  
  });
}

$(document).keyup(function(e) {
  if (e.key === "Escape") { // escape key maps to keycode `27`

    if (popOutOpen && popOutOpen[0]) {
      popOutOpen.animate({opacity:0}, 200, function(){
        popOutOpen.remove();
        popOutOpen = false;
        $('.contractPage').css("pointer-events", "auto");
      });
    
    } else if (openImpound && openImpound[0]) {
      Post("closeUI", {});
      openImpound.animate({opacity:0}, 200, function(){
        openImpound.remove();
        openImpound = null;
      });

    } else if (contractOpen) {

      contractOpen = false;
      Post("closeUI", {});
      $(".contractPage").animate({opacity:0}, 200, function(){
        $(".contractPage").remove();
        $("body").empty();
      });
    
    } else if(openTablet && openTablet[0]){
      openTablet.animate({opacity:0}, 200, function(){
        openTablet.remove();
        openTablet = null;
      });
      Post("closeTablet", {});
    }
 }
});

window.addEventListener('message', function(event) {
  if (event.data.type == "createNewContract") {
    fromGame.language = event.data.language;
    CreateNewContract(event.data.info);
  }
});



// // USE BELOW IN BROWSER CONSOLE TO CREATE NEW CONTRACTS
// CreateNewContract({
//   Title: "Police Bounty",
//   Icon: "fa-solid fa-handcuffs",
//   OriginOffice: "policeBounties",
//   Color: "#ff0000",

//   Consequences:{
//     Vehicle: true,
//     Fine: 5000,
//     Jail: 100,

//   }
// });




