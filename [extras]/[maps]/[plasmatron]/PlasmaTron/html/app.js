var CurrentPseudo

window.addEventListener("message", function(event) {
    var v = event.data    
    switch (v.action) {
        case 'Accueil': 
             // $('.MenuContainer').fadeIn(500)
			 CurrentPseudo = v.username
			 console.log("Accueil pseudo "+CurrentPseudo)
			 OpenAcceuil()
        break;

        case 'lstGame': 
            var checkValue 
            // $('.ListContainer').fadeIn(500)
			OpenList()
            // $('tbody').append(`
                // <tr class="eachListGame" id="${v.GameID}">
                    // <td class="GameName">${v.GameName}</td>
                    // <td class="GameOwner">${v.GameOwner}</td>
					// <td class="NbPlayer">${v.NbPlayer}</td>
                    // <td class="GameMap">${v.GameMap}</td>
                    // <td class="GameRound">${v.round}</td>
                    // <td class="GameStatus">${v.status}</td>
                // </tr>
            // `)
			
			 $('tbody').append(`
                <tr class="eachListGame" id="${v.GameID}">
                    <td class="GameOwner">${v.GameOwner}</td>
					<td class="NbPlayer">${v.NbPlayer}</td>
                    <td class="GameMap">${v.GameMap}</td>
                    <td class="GameRound">${v.Round}</td>
                    <td class="GameStatus">${v.status}</td>
                </tr>
            `)

            $(`#${v.GameID}`).click(function(){
				console.log("ERTYUIOP"+v.GameID)
                $.post('https://PlasmaTron/RequestGameDetails', JSON.stringify({
                    reportid : this.id
                }));
                
            })
        break;

        case 'OpenGame': 
			OpenDetails()
			console.log("OpenGame "+v.data.GameID)
			console.log("maps "+v.data.maps)
			console.log("maps "+v.data.ownerName)
			players = v.data.player
			// document.getElementById("
			$('#HiddenDataID').val(v.data.GameID)
			$('#JoinCreatorName').val(v.data.ownerName)
			$('#JoinGameName').val(v.data.nbRound)
			$('#JoinMapName').val(v.data.maps)
			players.forEach(function (a, b) {
				console.log("a:"+a.name+" b:"+b)
				CurText = $('#JoinPlayerList').val()
				CurText = CurText + a.name + '\r'
				$('#JoinPlayerList').val(CurText)
			});
			console.log("whoami: "+v.whoami+" v.data.ownerName: "+v.data.ownerName)
			if (v.whoami === v.data.ownerName) {
			// CloseAll()
			$('.ValidateStartGame').show()
			}
			// $('#JoinBox').val(v.data.maps)
			img = "./img/"+v.data.maps+".jpg"
			document.getElementById("JoinBoxID").style.backgroundImage = "url('"+img+"')"
			// $('.ListContainer').fadeOut(100)
			// $('.PageAcceuil').fadeOut(100)
			// $('.MenuContainer').fadeIn(500)
			// $('.GameDetails').fadeIn(500)
            // $('.titulo').text(v.typejs)
            // $('.NameUser').text(v.namejs)
            // $('#TitleText-3').val(v.titulojs)
            // $('#DescriptionText-3').val(v.descriptionjs)
            // $('#pidjs').val(v.playerjs)
            // $('#DescriptionText-3').attr('readonly', 'readonly')
            // $('#TitleText-3').attr('readonly', 'readonly')
            // $('.fotoBox').css({'background-image':`url(${v.picturejs})`})
            // $('#locacionPlayer').val(v.coordsjs)
            // $('.ValidateCreateGame').hide()
            // $('#SolveProblem').show()
            // $('.fa-image').hide()
            // Create()
        break;
		
		case 'quit':
			CloseAll()
		break;

    }
});

$(document).keyup((e) => {
    if (e.key === "Escape") {
        CloseAll()
    }
});


$(function(){
	
    $('.closeMenu').click(function(){
        CloseAll()
        $('.titre').text('PLASMATRON')
    })
	
	$('.closeMenuList').click(function(){
        CloseAll()
		$('.titre').text('PLASMATRON')
    })
	
    $('.CreateGame').click(function(){
        OpenCreateGame()
        $('.titre').text('Create Game')
		console.log("pseudo "+CurrentPseudo)
		$('.InputCreatePseudo').val(CurrentPseudo)
    })
	
    $('.JoinGame').click(function(){
		CloseAll()
		$('.titre').text('PLASMATRON')
		$.post('https://PlasmaTron/OpenJoinGame', JSON.stringify({}));
    })
	
    $('.ValidateCreateGame').click(function(){
		// pseudo = $('.InputCreatePseudo').val()
		maps = $('.InputCreateMap').val()
		round = $('.InputCreateRound').val()
        $.post('https://PlasmaTron/SendData', JSON.stringify({
			// pseudo : pseudo,
			round : round,
			maps : maps
        }));
        CloseAll()
    })
})

function changeListMap(a){
	// console.log("Et la map elle a changé ! "+a.value)
	img = "./img/"+a.value+".jpg"
	// document.body
	
	// $('.CreateIMGMapBox').backgroundImage = "url('"+img+"')"
	document.getElementById("CreateIMGMapBoxID").style.backgroundImage = "url('"+img+"')"
	// style.backgroundImage = "url('"img"')"
}

// $('.InputCreateMap').addEventListener('change', function() {
  // console.log('You selected: ', this.value);
// });

function CloseAll(){
    $.post('https://PlasmaTron/exit', JSON.stringify({}));
	
	$('.ListContainer').fadeOut(500)
    $('.PageAcceuil').hide()
    $('.CreateGamePage').hide()
    $('.GameDetails').hide()
	$('.MenuContainer').fadeOut(500)

    $('.eachListGame').remove()
    $(':input').val('')
	$('.ValidateStartGame').hide()
}

function OpenCreateGame(){
	$('.ListContainer').fadeOut(500)
    $('.PageAcceuil').hide()
    $('.CreateGamePage').show()
    $('.GameDetails').hide()
	$('.MenuContainer').fadeIn(500)
	$('.ValidateStartGame').hide()
}

function OpenAcceuil(){
	$('.ListContainer').fadeOut(500)
    $('.PageAcceuil').show()
    $('.CreateGamePage').hide()
    $('.GameDetails').hide()
	$('.MenuContainer').fadeIn(500)
	$('.ValidateStartGame').hide()
}

function OpenDetails(){
	$('.ListContainer').fadeOut(500)
    $('.PageAcceuil').hide()
    $('.CreateGamePage').hide()
    $('.GameDetails').show()
	$('.MenuContainer').fadeIn(500)
	$('.ValidateStartGame').hide()
}

function OpenList() {
	$('.MenuContainer').fadeOut(500)
	$('.ListContainer').fadeIn(500)
	$('.ValidateStartGame').hide()
}


function JoinGame() {
	
	var game = $('#HiddenDataID').val()
	
	
	$.post('https://PlasmaTron/JoinAGame', JSON.stringify({
		Game : game
		
	}));
	
	CloseAll()
	// console.log("CLICK !!!" + $('#JoinGameName').val())
}

function StartGame() {
	var game = $('#HiddenDataID').val()
	
	
	$.post('https://PlasmaTron/StartAGame', JSON.stringify({
		Game : game
		
	}));
	
	CloseAll()
	
	
}

function SpectateGame() {
	var game = $('#HiddenDataID').val()
	
	
	$.post('https://PlasmaTron/SpectateAGame', JSON.stringify({
		Game : game
		
	}));
	
	CloseAll()
	
	
}

function ExitLobby() {
	var game = $('#HiddenDataID').val()
	
	
	$.post('https://PlasmaTron/ExitLobby', JSON.stringify({
		Game : game
		
	}));
	
	CloseAll()
	
	
}

function BackFromList() {

	$.post('https://PlasmaTron/OpenJoinGame', JSON.stringify({}));
	
	CloseAll()
	
	
}

