let openImpound = null;

OpenImpound = function(data){
  ChooseLanguage(data.language, function(){
    openImpound = $(`
      <impound>
        <header>  
          <i class="fas fa-car-burst"></i>
          <div>${data.title}</div>
        </header>
        <impoundList>
        </impoundList>
        <release>

          <div>
            <i class="fas fa-money-bill-wave"></i>
            <div>
              <div>${locales.RetrievalFee}</div>
              <div>${data.currency}${data.releaseFee}</div>
            </div>
          </div>

          <div id="releaseButton">
            <div>${locales.Release}</div>
            <i class="fa-solid fa-file-signature"></i>
          <div>
        </release>
      </impound>
    `).appendTo('body');

    let list = openImpound.find('impoundList')

    for(let plate in data.vehicles){
      let vehicle = data.vehicles[plate]
      let item = $(`
        <impoundItem>


          <div>
            <i class="fa-solid fa-arrow-down-a-z"></i>
            <div>
              <div>${locales.Plate}</div>
              <div>${plate}</div>
            </div>
          </div>
          <div>
            <i class="fas fa-car"></i>
            <div>
              <div>${locales.Model}</div>
              <div>${vehicle}</div>
            </div>
          </div>
          

        </impoundItem>
      `).appendTo(list)
    }

    let releaseButton = openImpound.find('#releaseButton')
    releaseButton.click(function(){
      openImpound.animate({opacity:0}, 250, function(){
        openImpound.remove()
        openImpound = null
        Post("impoundRelease", {retrievalSpot : data.spotName})
      })
    })

    openImpound.animate({opacity:1}, 250)

  })

}

window.addEventListener('message', function(event){
  if (event.data.type == "impound") {
    fromGame = event.data
    OpenImpound({
      title   : event.data.title,
      vehicles: event.data.vehicles,
      language: event.data.language,
      releaseFee: event.data.releaseFee,
      currency: event.data.currency,
      spotName: event.data.spotName,
    })
  }
})



let vehicles = {
  'XYZ 123':'Model',
  'XYZ 121233':'Model',
  'XYZ 112313223':'Model',
}

// OpenImpound({
//   title   : 'Impound',
//   vehicles: vehicles,
//   language:"ENG",
//   releaseFee:1000,
//   currency:"£",
//   spotName:"Mission Row",

// })