
let timeout;
let blueTeamSize = 0;
let redTeamSize = 0;
const redBttn = document.getElementById("join-red");
const blueBttn = document.getElementById("join-blue");
const playBttn = document.getElementById("play-game");
const leaveTeamBttn = document.getElementById("exit-game");
let maps = document.querySelectorAll('.carousel-item');
let selectedMap;
let actuallife = 3;

function playMap(){
  maps = document.querySelectorAll('.carousel-item');
  for (let i = 0; i < maps.length; i++){
    if(maps[i].classList.contains('active')){
      selectedMap = maps[i].id;
    }
  }
   return selectedMap;
}

const closeBttn = document.getElementById("close-bttn");
closeBttn.addEventListener("click",function(e){
    $("#position").fadeOut(400);
    $.post(`https://freecity_paintball/close`, JSON.stringify({}));
    timeout = setTimeout(function () {
      $('#position').hide()
    }, 400);
});


redBttn.addEventListener("click",function(e){
  $.post(`https://freecity_paintball/playerJoinedRed`, JSON.stringify({}));
})
blueBttn.addEventListener("click",function(e){
  $.post(`https://freecity_paintball/playerJoinedBlue`, JSON.stringify({}));
})
playBttn.addEventListener("click",function(e){
  let gameMap = playMap();
  $.post(`https://freecity_paintball/startGame`, JSON.stringify({newmap : gameMap}));

})
leaveTeamBttn.addEventListener("click",function(e){
  $.post(`https://freecity_paintball/leaveTeam`, JSON.stringify({}));
})

window.addEventListener("message", function (event) {
	switch (event.data.action) {
		case 'playerJoined':
			$('#position').show()
			register(event)
			break;
		case 'closeUI' :
			$('#position').hide();
			break;
		case 'openUI':
			$('#position').show()
			let maplist = '';
			let list = 0
			for (var key of Object.keys(event.data.maps)) {
				if (list < 1) {
					maplist = `${maplist} <div id = ${key} class="carousel-item active"><p>${key}</p><img src="img/${key}.jpg" class="d-block mw-45 mh-25 h-25 w-45"></div>`
					list++
				} else{
					maplist = `${maplist} <div id = ${key} class= "carousel-item"><p>${key}</p><img src="img/${key}.jpg" class="d-block mw-45  w-45"></div>`
				}
			}
			$('.carousel-inner').html(maplist)
				register(event)
				break;
		case 'redTeamHud':
			$('#container').show()
			$('#redhud').show()
			$('.lifes').show()
			break
		case 'blueTeamHud':
			$('#container').show()
			$('#bluehud').show()
			$('.lifes').show()
			break
		case 'closeRedTeamHud':
			 $('#redhud').hide()
			$('#container').hide()
			break;
		case 'closeBlueTeamHud':
			 $('#bluehud').hide()
			$('#container').hide()
			break;
		case 'redTeamLifeLost':
			actuallife = event.data.actuallife
			if (actuallife === 2) {
				$('#life3').hide()
			}else if ( actuallife === 1) {
				$('#life2').hide()
			}
			break;
		case 'blueTeamLifeLost':
			actuallife = event.data.actuallife
			if (actuallife === 2) {
				$('#life3').hide()
			}else if ( actuallife === 1) {
				$('#life2').hide()
			}
			break;
		default:
			break;
	}
});



function register(event) {
	if (event.data.blueTeam == null) {
		blueTeamSize = 0
	} else {
		blueTeamSize = event.data.blueTeam
	}
	if (event.data.redTeam == null) {
		redTeamSize = 0
	} else {
		redTeamSize = event.data.redTeam
	}
	$('#teamBlueTotal').html("BlueTeam: " + Object.keys(blueTeamSize).length)
	$('#teamRedTotal').html("RedTeam: " + Object.keys(redTeamSize).length)
	redTeam = ''
	$('#infoText2').html('')
	for (var key of Object.keys(event.data.redTeam)) {
		redTeam = redTeam + "<div>" + key + "</div>"
	}
	$('#infoText2').html(redTeam)

	$('#infoText').html('')
	blueTeam = ''
	for (var key of Object.keys(event.data.blueTeam)) {
		blueTeam = blueTeam + "<div>" + key + "</div>"
	}
	$('#infoText').html(blueTeam)
}


$('.carousel').carousel({
  interval: false,
});
