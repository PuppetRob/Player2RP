HUD = {};
HUD.SLIDE_SELECTED = null;
HUD.VEHICLE_SELECTED = null;
HUD.VEHICLES = {};
HUD.STORE = {
    StoreName: "Default Name",
    FinanceTax : 0,
    AcceptFinancing : false,
    TestDrive: false
}

lang = LOCALES[LOCALE];

primaryColor = "#2057b8" // azul
secondaryColor = "#71ca28" // verde

darkColor = "#201e1c"; 
lightDarkColor = "#302e2c"

showroom = false;
dashboard = false;

gVehicleInfo = null;
menuHasBeenLoaded = false

HUD.selectedColor = "primary";

HUD.NextSlide = function(){

    $('#carousel_vehicles').slick('slickNext');      
    
    HUD.SLIDE_SELECTED = $('#carousel_vehicles').slick('slickCurrentSlide');

    HUD.SelectVehicle();          
}

HUD.PrevSlide = function(){         
    $('#carousel_vehicles').slick('slickPrev');
    
    HUD.SLIDE_SELECTED = $('#carousel_vehicles').slick('slickCurrentSlide');

    HUD.SelectVehicle();
}

HUD.Open = function(vehicles){
    HUD.VEHICLES = vehicles;
    menuHasBeenLoaded = false

    HUD.LoadVehicles()    

    if (HUD.STORE.isCatalog) {
        $('.button_payment_modal').css('display', 'none');
    } else {
        $('.button_payment_modal').css('display', 'block');
    }

    if (HUD.STORE.TestDrive) {
        $('.button_test_drive').css('display', 'block');
    } else {
        $('.button_test_drive').css('display', 'none');
    }

    $('.button_payment_modal').html(lang.BUY_BUTTON);
    $('.button_test_drive').html(lang.TEST_DRIVE);

    $('#camera_rotation').html(lang.ROTATION);
    $('#camera_distance').html(lang.DISTANCE);
    $('#camera_height').html(lang.HEIGHT);
    $("#top-menu .all").html(lang.ALL);

    $('.camera_nav .header_title').html(lang.CAMERA);

    $('.vehicle_info').fadeOut();


    // if (!HUD.STORE.AcceptFinancing){
    //     $(".middle-container .payment").hide()
    // }

    HUD.Colors();
}

HUD.LoadVehicles = function(){ 
    var table_size = Object.size(HUD.VEHICLES);    

    let slidesToShow = CONFIG_UI.VEHICLES_TO_SHOWING;
    let slidesToScroll = CONFIG_UI.SLIDES_TO_SCROLL;
    let slideArrowEnabled = false;
    let slideCenterMode = CONFIG_UI.CENTER_MODE;
    let slideInfinity = CONFIG_UI.INFINITY;

    if (table_size < CONFIG_UI.VEHICLES_TO_SHOWING) {
        slidesToShow = table_size,
        slidesToScroll = 1
    }
    
    if (!menuHasBeenLoaded) {
        $("#top-menu").html(`    
            <div class="item-menu all selected" onclick="HUD.ChooseCategory('all')"  >all </div>
        `);
    }    

    for (var i = 0; i < (table_size); i++) {
        let menuName = $(`#top-menu .${HUD.VEHICLES[i].category}`).html();
        
        if (!menuName && !menuHasBeenLoaded) {
            $("#top-menu").append(`
                <div class="item-menu ${HUD.VEHICLES[i].category}" onclick="HUD.ChooseCategory('${HUD.VEHICLES[i].category}')"  >${HUD.VEHICLES[i].category} </div>
            `);
        }        

        let soldOut = ''

        if (HUD.VEHICLES[i].qtd < 1) {       
            soldOut = `<div class="sold_out">${lang.SOLD_OUT}</div>`
        }

        let resultImg = `../../imgs/${HUD.VEHICLES[i].model.toUpperCase()}.png`;

        checkIfImageExists(resultImg, (exists) => {
            if (!exists) {
                resultImg = '../../imgs/Nothumb.png';
            }
        });

        $("#carousel_vehicles").append(`
            <div class='slider-item all ${HUD.VEHICLES[i].model}' id="${HUD.VEHICLES[i].category}" data-value="${HUD.VEHICLES[i].model}" style="background: url(${resultImg}); background-position:center; background-size: 100%;" >
                ${soldOut}
                <div class="car_price"> ${lang.CURRENCY} ${HUD.VEHICLES[i].price}</div>
                
                <img src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">

                <div class="car_name"> ${HUD.VEHICLES[i].name} </div>    
            </div>
        `);

        
    }

    menuHasBeenLoaded = true

    setTimeout(function()
    {      
        $('.spinner-loading').css("display","none");        
        $("#showroom-content").css("display","block"); 

        setTimeout(function()
        {      
            $('#carousel_vehicles').slick({
                lazyLoad: 'ondemand',

                slidesToShow: slidesToShow,
                slidesToScroll: slidesToScroll,
                arrows: slideArrowEnabled,
                adaptiveHeight: false,
        
                centerMode: slideCenterMode,
                swipeToSlide: true,
                touchMove: true,
                infinite: slideInfinity,
                focusOnSelect: true,
                focusOnChange: true,
            });    
            
        }, 500);
    
    }, 1000);
    

}


function checkIfImageExists(url, callback) {
    const img = new Image();

    img.src = url;

    if (img.complete) {
            callback(true);
    } else {
        img.onload = () => {
            callback(true);
        };
        
        img.onerror = () => {
            callback(false);
        };
    }
}

HUD.Colors = function(){
    for (let i = 0; i < 159; i++)
    {
        const color = vehicleColors[i];

        $(".content_colors").append(`
            <div class="color_item" data-tooltip="${color.label}" style="background: ${color.hash};" onclick="HUD.ChangeVehicleColor(${i})"></div>
        `)
    }
}

HUD.ChangeVehicleColor = function(colorIndex)
{   
    $.post("https://nxt-carshop/ChangeVehicleColor", JSON.stringify({colorId: colorIndex}) )
}

HUD.ShowUi = function(){
    $("#showroom-content").fadeIn();
}

HUD.HideUi = function(){
    $("#showroom-content").fadeOut();
}

HUD.Close = function(data){    

    if (showroom){
        $('#carousel_vehicles').slick("unslick");
        $("#carousel_vehicles").html("");        
        $(".content_colors").html('');

        $(".payment_mode_modal").css('display',"none");
        $("#first_step-select_mode").css('display',"none");
    
        HUD.SLIDE_SELECTED = null;
        HUD.VEHICLE_SELECTED = null;
        HUD.VEHICLES = {};

        HUD.SellerId = null;
        
        $("#showroom-content").css("display","none");

        showroom = false
    }

    if (dashboard) {
        DASH.Data = null;
        
        $('.dashboard').css('display', 'none');
        $("#showroom-content").css("display","none");
        $("#dealership-panel").html("");

        dashboard = false
    }

    
    $(".payment_mode_modal").css('display',"none");

    HUD.HideUi();
    
}

HUD.NotifiesCount = 0;

HUD.EnableClientCustomerYourVehicle = function()
{
    HUD.Colors();

    $('.button_payment_modal').html(lang.BUY_BUTTON);

    HUD.ShowUi();

    // HUD.PaymentConfirmation();
}

HUD.Notify = function(type, msg, time){
    let actualNotify = 0

    let typeMsg = type || 'error'

    let element = $(".notifications .container").append(`
        <div id='${HUD.NotifiesCount}' class="item ${typeMsg}">
            <span>${msg}</span>
        </div>    
    `);    

    actualNotify = HUD.NotifiesCount;

    let timeOut = time || 2000

    setTimeout(() => {
        $(`.notifications .container #${actualNotify}`).fadeOut(100);
        $(`.notifications .container #${actualNotify}`).remove();
        
        HUD.NotifiesCount -= 1
    }, timeOut);

    HUD.NotifiesCount += 1
}

HUD.TestDrive = function(isEnable){
    if (!isEnable) {        
        $(".test_drive").fadeOut(0);
    } else {        
        $(".test_drive").fadeIn(0);
    }
}

HUD.PaymentConfirmation = function(financed) {

    // if (! HUD.VEHICLE_SELECTED) {
    //     HUD.Notify('error', lang.SELECT_A_VEHICLE);
    //     return
    // }

    let vehicleImg = ``
    if (HUD.SellerId) {

        let resultImg = `../../imgs/${HUD.VEHICLE_SELECTED.model.toUpperCase()}.png`;
        vehicleImg = `<img style="width: 100%; margin-bottom: 10px;" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'"></img>`        
    }

    let price = `${lang.CURRENCY} ${HUD.VEHICLE_SELECTED.price}`

    $(".payment_mode_modal").css('display',"flex");
    $("#first_step-select_mode").css('display',"flex");

    $('#first_step-select_mode').html(`
        <div class="header">
            ${vehicleImg}
            <div class="title"> ${lang.PURCHASE_CONFIRMATION}</div>

            <div class="price">
                <span class="label">${lang.PAYMENT_PRICE}</span>
                <span class="price_value">${price}</span>
            </div>
        </div>

        <div class="content">
            <div class="description">
                <div class="title">${lang.PAYMENT_METHOD}</div>

                <div class="text">
                    ${lang.PAYMENT_METHOD_DESCRIPTION}
                </div>
            </div>

            <div class="input_selection">

                <div class="form-check" id="credit_card_method">
                    <label class="credit_card" for="credit_card_box">
                        <input class="form-check-input" type="radio" name="paymento_method" id="credit_card_box">
                        <i class="fab fa-cc-mastercard"></i>
                        ${lang.FINENCED_PAYMENT}
                    </label>
                </div>

                <div class="form-check" id="money_box_method">
                    <label class="cash" for="money_box">
                        <input class="form-check-input" type="radio" name="paymento_method" id="money_box">
                        <i class="fas fa-money-bill"></i>                        
                        ${lang.BANK_PAYMENT}
                    </label>
                </div>

            </div>

            <div class="action_buttons">
                <div class="cancel" onclick="HUD.HidePurchaseModal()" >${lang.BUTTON_CANCEL}</div>
                <div class="confirm" onclick="HUD.ConfirmSplitButton()" >${lang.BUTTON_NEXT}</div>
            </div>
        </div>
    `)

    if (!HUD.STORE.AcceptFinancing) {
        $('.input_selection #credit_card_method').css('display', "none");
    }

    // $(".payment-confirmation").html(`              
    //     <div class="payment-background"></div>

    //     <div class='box'>

    //         <div class='header'>
    //             
    //         </div>

    //         <div class="content">
    //             <div class="fake-input">
    //                 <span class="title">${lang.PAYMENT_PRICE}</span> <span class="info">${lang.CURRENCY}${HUD.VEHICLE_SELECTED.price}</span>
    //             </div>
    //         </div>

    //         <div class="tax">                    

    //         </div>

    //         <div class="button-footer">
    //             <div class="item-button" id="split-confirm" onclick="HUD.ConfirmSplitButton()" ><i class="fas fa-check"></i></div>
    //             <div class="item-button" id="split-cancel" onclick="HUD.HidePurchaseModal()" ><i class="fas fa-times"></i></div>     
    //         </div>     

    //     </div>
    // `)

    
    // if (financed && HUD.STORE.AcceptFinancing) {
    //     $(".payment-confirmation .content").append(`
    //         <div class="fake-input">
    //             <span class="title">${lang.INSTALLMENTS}</span> <span class="info" style="width: 10vh;"><input id="inst-val" type="number" min="1" max="12" value="1"></span>
    //         </div>      
    //     `)

    //     let installments = $("#inst-val").val()

    //     let vehPrice = HUD.VEHICLE_SELECTED.price

    //     let priceInst = vehPrice / installments

    //     let tax = (vehPrice * (HUD.STORE.FinanceTax/100)) * installments

    //     let instTaxPrice = priceInst

    //     if (installments > 1) {
    //         instTaxPrice = priceInst + (tax / installments)
    //     }

    //     $(".box .tax").html(` 
    //     <span id="installments">${installments}x of ${lang.CURRENCY}${Math.ceil(instTaxPrice)}</span>
    //     <span id="tax-value">${HUD.STORE.FinanceTax}% tax</span>

    //     <span id="tax-value">Total ${lang.CURRENCY}${Math.ceil(installments * instTaxPrice)}</span>
    //     `)
    // }
}

HUD.ConfirmCreditPurchase = function(){
    let installments = $('#inst-val').val();

    HUD.Buy(true, installments);
}

HUD.InstallmentsMethod = function(){
    $("#second_step-credit_card").css('display',"flex");

    $(`#second_step-credit_card`).html(`
        <div class="header">
            <div class="title"> ${lang.PURCHASE_CONFIRMATION} </div>

            <div class="price">
                <span class="label">${lang.PAYMENT_PRICE}</span>
                <span class="price_value">${lang.CURRENCY}${HUD.VEHICLE_SELECTED?.price}</span>
                <span class="installment"> 1x ${lang.CURRENCY}${HUD.VEHICLE_SELECTED?.price}</span>



            </div>
        </div>

        <div class="content">
            <div class="description">
                <div class="title"> ${lang.INSTALLMENTS_CREDIT}</div>

                <div class="text">
                    ${lang.INSTALLMENTS_AMOUNT}
                </div>
            </div>

            <div class="input_selection">
                <div class="fake_input">

                    <span class="installment_title"> ${lang.INSTALLMENTS} </span> 

                    <span class="info" style="width: 10vh;">
                        <input class="input_number" id="inst-val" type="number" min="1" max="12" value="1">
                    </span>

                </div>   
                
            </div>

            <div class="action_buttons">
                <div class="cancel" onclick="HUD.HidePurchaseModal()" >${lang.BUTTON_CANCEL}</div>
                <div class="confirm" onclick="HUD.ConfirmCreditPurchase()" >${lang.BUY_BUTTON}</div>
            </div>
        </div>
    `);
    
    // HUD.Buy(methodSelected, installments);
}

HUD.CashMethod = function() {
    $(".payment_mode_modal").css('display',"none");

    HUD.Buy(false, 1);
}

HUD.ConfirmSplitButton = function() {
    var methodSelected = document.querySelector('input[name = "paymento_method"]:checked');

    $("#first_step-select_mode").html("");
    $("#first_step-select_mode").css('display',"none");

    switch(methodSelected?.id)
    {
        case 'credit_card_box':
            HUD.InstallmentsMethod();
        break;

        case 'money_box':
            HUD.CashMethod();
        break;

        default:
            $(".payment_mode_modal").css('display',"none");
            HUD.Notify('error', lang.NO_PAYMENT_SELECTED);
            return
        break;
    }
}

HUD.HidePurchaseModal = function() {    
    $(".payment_mode_modal").css('display',"none");
    $("#first_step-select_mode").css('display',"none");
    $("#first_step-select_mode").html("");
    $("#second_step-credit_card").html("");
}

HUD.Buy = function(method, inst){    
    HUD.HidePurchaseModal();

    $.post("https://nxt-carshop/Buy",  JSON.stringify({ model: HUD.VEHICLE_SELECTED.model, method: method, installments: inst, sellerId: HUD.SellerId || null}));
}

var filtered = false;

HUD.ChooseCategory = function(name){        
    //var filtername = name

    //$(this).addClass('active').siblings('.active').removeClass('active');

    // $('#carousel_vehicles').slick('slickUnfilter');
    
    // if (name == "all") {
    //     return
    // }

    // $('#carousel_vehicles').slick('slickFilter', `#${name}`);   

    $('#carousel_vehicles').slick("unslick");
    $("#carousel_vehicles").html("");

    HUD.SLIDE_SELECTED = null;
    HUD.VEHICLE_SELECTED = null;
    HUD.VEHICLES = {};

    $("#showroom-content").css("display","none"); 
    
    $('.spinner-loading').css("display","flex");        

    $.post('https://nxt-carshop/loadCategory', JSON.stringify({category: name}), function(data){

        HUD.VEHICLES = data;

        HUD.LoadVehicles();
    })

    $(`#top-menu .selected`).removeClass("selected");    

    $(`#top-menu .${name}`).addClass("selected");
    
}

HUD.SelectVehicle = function(data){        
    let actualVehicle = $(".slick-current .slider-item");    
            
    var vehicleModel = actualVehicle.data("value");

    if (!HUD.VEHICLE_SELECTED) {
        $('.vehicle_info').fadeIn();
    }


    if (HUD.VEHICLES[HUD.SLIDE_SELECTED]) {
        HUD.VEHICLE_SELECTED = HUD.VEHICLES[HUD.SLIDE_SELECTED]
    } else {
        var table_size = Object.size(HUD.VEHICLES);

        for(var i = 0; i < table_size; i ++){        
            if (HUD.VEHICLES[i].model == vehicleModel){
                HUD.VEHICLE_SELECTED = HUD.VEHICLES[i]
            }
        }         
    }


    // $(".footer .disabled").removeClass('disabled');
    $('.button_payment_modal').removeClass('disabled');


    if (HUD.VEHICLE_SELECTED.qtd == 0 ) {
        $('.button_payment_modal').addClass('disabled');
    }
    
    $.post("https://nxt-carshop/VehicleSelected",  JSON.stringify({ model: HUD.VEHICLE_SELECTED.model}));
}

HUD.UpdateVehicleInfo = function(vehicleInfo){    

    gVehicleInfo = vehicleInfo

    let vehicleBrand = vehicleInfo.brand;

    $(".vehicle_info .header .model").html(vehicleInfo.name);

    $(".vehicle_info .header .brand").html(vehicleBrand);
    
    if (vehicleBrand )
    {
        $(".vehicle_info .header .right-content").html(`<img class="vehicle-brand" src="../imgs/brands/${vehicleBrand.toUpperCase()}.png">`);
    }

    $(".menu_specifications").html(`

    <div class="item-info">                    
        <span class="title">Acceleration</span>
        
        <div class="bar_with_value">
            <div class="bar">
                <div class="percent" style="width:${vehicleInfo.acceleration}%">                 
                </div>
            </div>
            <div class="float_value">${Number(vehicleInfo.acceleration / 10 + 0.01).toFixed(1)}</div>
        </div>                
    </div> 

    <div class="item-info">                    
        <span class="title">Speed</span>
        
        <div class="bar_with_value">
            <div class="bar">
                <div class="percent" style="width:${vehicleInfo.maxSpeed}%">                 
                </div>
            </div>
            <div class="float_value">${Number(vehicleInfo.maxSpeed / 10 + 0.01).toFixed(1)}</div>
        </div>                
    </div> 
    <div class="item-info">                    
        <span class="title">Handling</span>
        
        <div class="bar_with_value">
            <div class="bar">
                <div class="percent" style="width:${vehicleInfo.traction}%">                 
                </div>
            </div>
            <div class="float_value">${Number(vehicleInfo.traction / 10 + 0.01).toFixed(1)}</div>
        </div>                
    </div> 

    <div class="item-info">                    
        <span class="title">Braking</span>
        
        <div class="bar_with_value">
            <div class="bar">
                <div class="percent" style="width:${vehicleInfo.breaking}%">                 
                </div>
            </div>
            <div class="float_value">${Number(vehicleInfo.breaking / 10 + 0.01).toFixed(1)}</div>
        </div>                
    </div>`);
}

Object.size = function(obj) {
    var size = 0,
        key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
};

// document.addEventListener('wheel', function(event) {    
//     if (event.deltaY < 0) { // Scroll Up
//         if (showroom) {
//             HUD.NextSlide();
//         }
//     }
//     else if (event.deltaY > 0) { // Scroll Down
//         if (showroom) {            
//             HUD.PrevSlide();
//         }
//     }
// });


$(document).ready(function() {

    var cameraNavOpen = false;

   // document.addEventListener('contextmenu', event => event.preventDefault());   // BLOCK RIGHT CLICK
    
    $(document).on('keydown', function(event){        
        switch(event.key){
            case "Escape":
                $.post("https://nxt-carshop/CloseUi");                
                HUD.Close();

                break;
        }
    });

    

    // $('.menu_payment').html(`    
    //     <section class="header">
    //         ${lang.HEADER_PAYMENT}            
    //     </section>
    //     <p>${lang.PAYMENT_SUBTITLE}</p>

    //     <section class="middle-container" style="padding: 0 0;">              
    //         <div class="payment form-check form-switch" style="padding: 0 0;">
    //             <label class="form-check-label" for="flexSwitchCheckDefault">${lang.CASH_PAYMENT}</label>
    //             <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" style="margin-left: -0.5vh; margin-right: 3vh">
    //             <label class="form-check-label" for="flexSwitchCheckDefault">${lang.FINENCED_PAYMENT}</label>
    //         </div>
    //     </section>

    //     <section class="buy-footer">            
    //         <div class="confirm-button" id="buy_confirmation">
    //             ${lang.BUY_BUTTOM}
    //         </div>
    //     </section>
    // `)


    $(document).change('#inst-val', function(event){        
        let installments = $("#inst-val").val()
        
        let vehPrice = HUD.VEHICLE_SELECTED?.price;

        let priceInst = vehPrice / installments

        let tax = (vehPrice * ( HUD.STORE.FinanceTax/100)) * installments
        
        let instTaxPrice = priceInst

        if (installments > 1) {
            instTaxPrice = priceInst + (tax / installments)
        }
        $("#second_step-credit_card .price").html(`
            <span class="label">${lang.PAYMENT_PRICE}</span>
            <span class="price_value">Total ${lang.CURRENCY}${Math.ceil(installments * instTaxPrice)}</span>

            <span class="installment tax-value">${ HUD.STORE.FinanceTax}% tax</span>
            <span class="installment">${installments}x ${lang.CURRENCY}${Math.ceil(instTaxPrice)}</span>
        `);
    });

    $(document).on('mousedown', ".slick-slide ", function(event){        
        switch(event.which) {
            case 3:
                // click direito
                
                break;
            case 1:
                // click esquerdo            
                HUD.SLIDE_SELECTED = $(event.currentTarget).attr("data-slick-index");

                $('#carousel_vehicles').slick('slickGoTo', HUD.SLIDE_SELECTED);

                HUD.SelectVehicle();
                
                break;
        }
    });

    $(document).on('click', "#bflexSwitchCheckDefault", function(event){        
        var button = document.getElementById('flexSwitchCheckDefault');
        var elementChecked = $('#flexSwitchCheckDefault').is(":checked");   
        
        if (!elementChecked) {
            button.setAttribute("checked", true);
            return            
        }        

        button.setAttribute("checked", false);

    });  
    
    $(document).on('click', ".button_test_drive", function(event){      

        if(HUD.STORE.TestDrive){
            if (HUD.VEHICLE_SELECTED.model){                
                $.post("https://nxt-carshop/testDrive",  JSON.stringify({ model: HUD.VEHICLE_SELECTED.model}));
            } else {
                // console.log(" você precisa escolher um veículo");
            }
        }
    });


    $(document).on('click', ".button_payment_modal", function(event){        
        // var methodSelected = $('#flexSwitchCheckDefault').is(":checked");        
        HUD.PaymentConfirmation();
    });

    $(document).on('click', "#camera_control", function(event){                
        cameraNavOpen = !cameraNavOpen;

        if (cameraNavOpen){    
            $("#camera_container").css("display","block");       
        

        } else {      
            $("#camera_container").css("display","none");      
            
        }

    });
        
    $("#customRange2").change(function() {
        
    });

    $('.upper-bottom-container').on('afterChange', function(event, slick, currentSlide) {
        $('.button-container').appendTo(currentSlide);
    });

    $(".pcr-app").css("display","none");

 //   DASH.Open("vendor");
});


function changeCamera(type){
    var value = document.getElementById(`input-${type}`).value;

    $.post("https://nxt-carshop/cameraMovement", JSON.stringify({
        type: type,
        value: value
    }));
}

function menuVehicleOption(type){
    
    $('.menu-actived').removeClass('menu-actived');

    $(`.menu-${type}`).addClass('menu-actived');

    $(".footer .current").removeClass('current');
    
    $(`#${type}`).addClass("current");

}

function mouseOnCarousel(OnCarousel)
{
    $.post("https://nxt-carshop/disableSetNuiFocusKeepInput", JSON.stringify({OnCarousel}))
}

window.addEventListener('message', function(event) {
    var data = event.data;
    switch(data.type){
        case "open":            
            $('.spinner-loading').css("display","flex");            

            HUD.STORE.FinanceTax = data.FinanceTax
            HUD.STORE.AcceptFinancing = data.AcceptFinancing
            HUD.STORE.TestDrive = data.TestDrive
            HUD.STORE.StoreName = data.StoreName
            HUD.STORE.StoreSubTitle = data.StoreSubTitle
            HUD.STORE.StoreDescription = data.StoreDescription

            $(".title").html(HUD.STORE.StoreName);            
            $(".sub_title").html(HUD.STORE.StoreSubTitle);            
            $(".description").html(HUD.STORE.StoreDescription);

            HUD.STORE.isCatalog = data.isCatalog;

            HUD.Open(data.data);
            HUD.TestDrive(data.TestDrive)       
            
            showroom = true

        break;

        case "close":
            HUD.Close();
        break;

        case "notify":
            HUD.Notify(data.msgType, data.msg, data.time)
        break;

        case "show":
            HUD.ShowUi()
        break;

        case "hide":
            HUD.HideUi()
        break;

        case "menu_selected":
            
        break;

        case "dashboard": 
            HUD.STORE.StoreName = data.StoreName
            DASH.Open(data.mode, data.request);
            dashboard = true;
        break;

        case "update_vehicle_info":
            HUD.UpdateVehicleInfo(data.data);
        break;

        case "receive_vehicle_to_buy":
            HUD.SellerId = data.sellerId
            HUD.VEHICLE_SELECTED = data.vehicle

            HUD.STORE.StoreName = data.StoreName
            HUD.STORE.StoreSubTitle = data.StoreSubTitle
            HUD.STORE.StoreDescription = data.StoreDescription
            HUD.STORE.TestDrive = data.TestDrive;

            HUD.STORE.FinanceTax = data.FinanceTax
            HUD.STORE.AcceptFinancing = data.AcceptFinancing

            $(".title").html(HUD.STORE.StoreName);            
            $(".sub_title").html(HUD.STORE.StoreSubTitle);            
            $(".description").html(HUD.STORE.StoreDescription);

            $("#carousel_vehicles").html("");
            $('.button_payment_modal').css('display', 'block');

            HUD.EnableClientCustomerYourVehicle();
        break;
    }
});



function setVehicleColorRGB(R,G,B){
    if (HUD.selectedColor == 'primary'){
        $.post("https://nxt-carshop/RGBVehicle", JSON.stringify({primary: true, R: R, G: G, B: B}));
    } else {
        $.post("https://nxt-carshop/RGBVehicle", JSON.stringify({primary: false, R: R, G: G, B: B}));
    }
}