DASH = {};

DASH.CurrentShop = null;
DASH.Data = null;
DASH.SelectedPlate = null;


lang = LOCALES[LOCALE];

DASH.Open = function(type, data){

    $('.dashboard').css('display', 'flex');

    DASH.CurrentShop = HUD.STORE.StoreName;
    DASH.Data = data;

    $("#dealership-panel").html(` 
        <div class="side_bar">
            
        <section class="dashboard_header">
            <h3>${DASH.CurrentShop}</h3>
        </section> 

        <div class="menu_bar">
            
        </div>

        </div>

        <div class="dashboard_content">

        <section class="subheader">
            <h5>${lang.DASHBOARD}</h5>
        </section>

        <section class="main">          
            <div class="panel">         
                <div class='title'>
                    ${lang.SELECT_ONE_OPTION} 
                </div>
            </div>
        </section>

        </div>           


        <section class="dashboard_footer">
        <div>

        </div>
        </section> 
    `);

    switch(type){

        case "player":
            DASH.ClientData();
        break;

        case "boss":
            DASH.BossMenu();
        break;

        case "seller":
            DASH.SellerMenu();
        break;

    }    
}

DASH.ClientData = function (){

    $("#dealership-panel .dashboard_header").html(` 
        <h3>${DASH.CurrentShop}</h3>
    `);

    $("#dealership-panel .menu_bar").html(`
        <div class="button" onclick="DASH.ClientData()">
            ${lang.HOME}
        </div>
    `);

    $("#dealership-panel .main > .panel").html(` 
        <div class='title'>
            ${lang.LIST_INVOICES}
        </div>

        <header>                            
            <div class="tr">${lang.VEHICLE}</div>
            <div class="tr">${lang.PLATE}</div>                            
            <div class="tr">${lang.DATE}</div>                    
            <div class="tr">${lang.PAYMENT_PRICE}</div>                                                
            <div class="tr">${lang.PAY}</div>                                     
        </header>                        

        <section class="content_table">   

        </section>                      
    `);

    var table_size = Object.size(DASH.Data);

    let installmentSelected = null;
    let paymentFinished = true;
    let lineThrough = "";    

    for (let i = 0; i < table_size; i++)
    {        
        if (DASH.Data[i].installments == 1) {    

            var timestamp = DASH.Data[i].date
            var date = new Date(timestamp);

            $(".content_table").append(`
                <div id="${DASH.Data[i].plate}" class="row ${lineThrough}">
                    <div class="tr">${DASH.Data[i].model}</div>
                    <div class="tr">${DASH.Data[i].plate}</div>
                    <div class="tr"> ${date.getMonth()}.${date.getDate()}.${date.getFullYear()} | ${date.getHours()}:${date.getMinutes()} </div>            
                    <div class="tr">${LOCALES[LOCALE].CURRENCY} ${DASH.Data[i].price}</div>
                    <div class="tr button" onclick="DASH.BillingClient('${DASH.Data[i].plate}')" >${lang.OPEN_INVOICE}</div>
                </div>
            `);
        }
    }

    // if (DASH.Data[i].plate ) {
    //     if (DASH.Data[i].status == 0){
    //         paymentFinished = false
    //     } else {
    //         paymentFinished = true
    //     }

        
        
    //     if (paymentFinished) {
    //         lineThrough = "through"
    //     }    
    // }
}


DASH.SellerMenu = function (data){
    $("#dealership-panel .menu_bar").html(`
        <div class="button" onclick="DASH.BillingsVendor()">
            ${lang.BILLINGS}
        </div>

        <div class="button" onclick="DASH.VehiclesList()">
            ${lang.STOCK}
        </div>

        <div class="button" onclick="DASH.VehiclesInShowroom()">
            ${lang.SHOWROOM}
        </div>
    `);
}


DASH.BossMenu = function (data){

    $("#dealership-panel .menu_bar").html(`
        <div class="button" onclick="DASH.BillingsVendor()">
            ${lang.BILLINGS}
        </div>  

        <div class="button" onclick="DASH.VehiclesListBoss()">
            ${lang.STOCK}
        </div>

        <div class="button" onclick="DASH.OpenGlobalStock()">
            ${lang.BUY_VEHICLES}
        </div>

        <div class="button" onclick="DASH.VehiclesInShowroom()">
            ${lang.SHOWROOM}
        </div>

        <div class="button" onclick="DASH.SettingsShop()">
            ${lang.SETTINGS}
        </div>
    `);
}

let globalSettings

DASH.SettingsShop = function (data) {

    $("#dealership-panel .main > .panel").html(`
        <div class='title'>
            ${lang.SETTINGS}
        </div>

        <header>

        </header>

        <section class="content_table">

        </section>
    `);

    $.post('https://nxt-carshop/getStoreSettings', {}, function(result) {
        var table_size = Object.size(result);

        globalSettings = result;

        for (let [idx, data] of Object.entries(result))
        {
            if (idx != "id")

            {   
                let type = ''
                let enabled = false
                switch(idx)
                {
                    case "name":
                    case "subtitle":
                    case "description":
                        type = 'text'
                    break;
    
                    case "commission":
                        type = 'number'
                    break;
    
                    case "isCatalog":
                    case "testDrive":
                    case "showroom":
                        type = 'checkbox'
                        if (data) {
                            enabled = 'checked'
                        }
                    break;
                }
                $("#dealership-panel .content_table").append(`        
                    <div class="row">
                        <label>
                            <span> ${lang[idx]} </span>
                            <input id="settings_${idx}" name="${idx}" class="text" type="${type}" value="${data}" ${enabled}>
                        </label>
                    </div>
                `);
            }
        }

        $("#dealership-panel .content_table").append(`
            <div class="button actionSave" style="z-index:88" onclick="DASH.SaveStoreSettings()">${lang.SAVE_SETTINGS}</div>
        `)
    });
}


DASH.SaveStoreSettings = function ()
{

    var table_size = Object.size(globalSettings);

    let tableToSave = {};

    for (let [idx, data] of Object.entries(globalSettings))
    {
        let type = ''
        switch(idx)
        {
            case "isCatalog":
            case "testDrive":
            case "showroom":
                type = 'checkbox'
            break;
        }

        let actualValue = $(`#settings_${idx}`).val();

        if (type == "checkbox")
        {
            actualValue = $(`#settings_${idx}`).is(":checked");
        }

        tableToSave[idx] = actualValue 
    }

    $.post('https://nxt-carshop/SaveStoreSettings', JSON.stringify(tableToSave));
}

DASH.OpenGlobalStock = function (data) {

    $("#dealership-panel .main > .panel").html(`
        <div class='title'>
            Lista de veículos para compra
        </div>

        <header>
            <div class="tr">${lang.VEHICLE_MODEL}</div>
            <div class="tr">${lang.CATEGORY}</div>
            <div class="tr">${lang.PAYMENT_PRICE}</div>
            <div class="tr">${lang.STOCK}</div>
            <div class="tr">${lang.BUY}</div>
        </header>

        <section class="content_table">

        </section>
    `);

    $.post('https://nxt-carshop/getGlobalStockToBuy', {}, function(result) {
        var table_size = Object.size(result);

        for (let i = 0; i < table_size; i++)
        {
            let resultImg = `../../imgs/${result[i].model.toUpperCase()}.png`;

            $("#dealership-panel .content_table").append(`        
                <div class="row">
                    <div class="tr">${result[i].customName ? result[i].customName : result[i].name }</div>
                    <div class="tr">${result[i].class}</div>
                    <div class="tr">${lang.CURRENCY} ${result[i].price}</div>
                    <div class="tr">${result[i].stock}</div>   
                    <div class="tr button" onclick="DASH.BuyVehicleToStore('${result[i].model}' , '${result[i].price}')">${lang.BUY}</div>
                    <img class="imgTable" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">
                </div>
            `);
        }
    });
}

DASH.BillingsVendor = function (){
    $("#dealership-panel .main > .panel").html(` 
        <div class='title'>
            ${lang.LIST_INVOICES}
        </div>

        <header>                            
            <div class="tr">${lang.BUYER_NAME}</div>
            <div class="tr">${lang.SELLER_ID}</div>
            <div class="tr">${lang.VEHICLE}</div>
            <div class="tr">${lang.DATE}</div>
            <div class="tr">${lang.PAID_OFF}</div>
        </header>                        

        <section class="content_table">   

        </section>
    `);

    $.post('https://nxt-carshop/getCustomersInvoices', {}, function(result) {
        var table_size = Object.size(result);

        for (let i = 0; i < table_size; i++)
        {
                
            var timestamp = result[i].date
            var date = new Date(timestamp);
            
            let resultImg = `../../imgs/${result[i].model.toUpperCase()}.png`;
            
            $("#dealership-panel .content_table").append(`        
                <div class="row" onclick="DASH.OpenBillingFullDetails('${result[i].plate}')">
                    <div class="tr">${result[i].playerName}</div>
                    <div class="tr">${result[i].sellerId != 0 ? result[i].sellerId : lang.BUY_CATALOG }</div>
                    <div class="tr">${result[i].name}</div>
                    <div class="tr"> ${date.getMonth()}.${date.getDate()}.${date.getFullYear()} | ${date.getHours()}:${date.getMinutes()} </div>
                    <div class="tr">${result[i].paidOff ? lang.YES : lang.NO }</div>
                    <img class="imgTable" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">
                </div>
            `);
        }
    });

    // if (DASH.Data[i].plate ) {
    //     if (DASH.Data[i].status == 0){
    //         paymentFinished = false
    //     } else {
    //         paymentFinished = true
    //     }

    //     if (paymentFinished) {
    //         lineThrough = "through"
    //     }    
    // }
}


DASH.OpenBillingFullDetails = function (plate){

    
    $.post('https://nxt-carshop/getBillingFullDetails', JSON.stringify({plate: plate}), function(result) {

        $("#dealership-panel .main > .panel").html(` 
            <div class='title'>
                This vehicle was purchased by <b>${result[0].playerName}</b>, his phone number is <b>${result[0].playerPhone}</b>
                </br></br>
                <span id="paid_off"> 
                    This vehicle was paid off
                </span>
            </div>

            <header>
                <div class="tr">${lang.VEHICLE_MODEL}</div>
                <div class="tr">${lang.PLATE}</div>
                <div class="tr">${lang.INSTALLMENTS}</div>
                <div class="tr">${lang.PAYMENT_PRICE}</div>
                <div class="tr">${lang.PAID_OFF}</div>
            </header>                        

            <section class="content_table">

            </section>    
        `);    

        var table_size = Object.size(result);

        let paidOff = true;

        for (let i = 0; i < table_size; i++)
        {        
            let isDisabled = "";

            if (result[i].status)
            {
                isDisabled = "disabled"
            } 
            else
            {
                paidOff = false;
            }

            $("#dealership-panel .content_table").append(`
                <div class="row ${isDisabled}">
                    <div class="tr">${result[i].name}</div>
                    <div class="tr">${result[i].plate}</div>
                    <div class="tr">${result[i].installments}</div>
                    <div class="tr">${LOCALES[LOCALE].CURRENCY} ${result[i].price}</div>
                    <div class="tr">${result[i].status ? lang.YES : lang.NO}</div>
                </div>
            `);
        }

        $("#paid_off").html('This vehicle still not paid off')
    })
}

DASH.VehiclesListBoss = function (data) {

    $("#dealership-panel .main > .panel").html(`
        <div class='title'>
            ${lang.STORE_STOCK}
        </div>

        <header>
            <div class="tr">${lang.VEHICLE_MODEL}</div>
            <div class="tr">${lang.PAYMENT_PRICE}</div>
            <div class="tr">${lang.STOCK}</div>
            <div class="tr">${lang.EDIT_PRICE}</div>
            <div class="tr">${lang.INVOICE}</div>
        </header>

        <section class="content_table">

        </section>
    `);

    $.post('https://nxt-carshop/getActualStoreVehicles', {}, function(result) {
        var table_size = Object.size(result);

        for (let i = 0; i < table_size; i++)
        {
            let resultImg = `../../imgs/${result[i].model.toUpperCase()}.png`;

            $("#dealership-panel .content_table").append(`        
                <div class="row" >
                    <div class="tr">${result[i].name}</div>
                    <div class="tr">${LOCALES[LOCALE].CURRENCY} ${result[i].price}</div>
                    <div class="tr">${result[i].qtd}</div>

                    <div class="tr button" onclick="DASH.EditVehiclePrice('${result[i].model}' , '${result[i].price}')">${lang.EDIT_PRICE}</div>

                    <div class="tr button" onclick="DASH.SellThisVehicle('${result[i].model}', '${result[i].price}')">${lang.SELL_VEHICLE}</div>

                    <img class="imgTable" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">
                </div>
            `);
        }
    });
}

DASH.VehiclesList = function (data) {

    $("#dealership-panel .main > .panel").html(`
        <div class='title'>
            ${lang.STORE_STOCK}
        </div>

        <header>
        <div class="tr">${lang.VEHICLE_MODEL}</div>
        <div class="tr">${lang.PAYMENT_PRICE}</div>
        <div class="tr">${lang.STOCK}</div>
        <div class="tr">${lang.INVOICE}</div>
        </header>

        <section class="content_table">

        </section>
    `);

    $.post('https://nxt-carshop/getActualStoreVehicles', {}, function(result) {
        var table_size = Object.size(result);

        for (let i = 0; i < table_size; i++)
        {
            let resultImg = `../../imgs/${result[i].model.toUpperCase()}.png`;

            $("#dealership-panel .content_table").append(`        
                <div class="row">
                    <div class="tr">${result[i].name}</div>
                    <div class="tr">${LOCALES[LOCALE].CURRENCY} ${result[i].price}</div>
                    <div class="tr">${result[i].qtd}</div>
                    
                    <div class="tr button" onclick="DASH.SellThisVehicle('${result[i].model}', '${result[i].price}')">${lang.SELL_VEHICLE}</div>

                    <img class="imgTable" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">
                </div>
            `);
        }
    });
}


DASH.SellThisVehicle = function (model, price)
{   
    HUD.Close()
    $.post('https://nxt-carshop/trySelectPlayerToSell', JSON.stringify({model: model, price: price}), function(vehicles) {

    });
}


DASH.VehiclesInShowroom = function () {

    $("#dealership-panel .main > .panel").html(`
        <div class='title'>
            ${lang.VEHICLES_IN_SHOWROOM}
        </div>

        <header>
            <div class="tr">${lang.DISPLAY_SLOT}</div>
            <div class="tr">${lang.VEHICLE_MODEL}</div>
            <div class="tr">${lang.PAYMENT_PRICE}</div>
            <div class="tr">${lang.DISPLAY_SHOWROOM}</div>
            <div class="tr">${lang.REMOVE}</div>
        </header>

        <section class="content_table">

        </section>
    `);

        
    let tableVehicles = "";

    $.post('https://nxt-carshop/getActualStoreVehiclesToShowroom', {}, function(vehicles) {

        var table_size = Object.size(vehicles);

        for (let i = 0; i < table_size; i++)
        {
            tableVehicles = tableVehicles + `<option value="${vehicles[i].model}"> ${vehicles[i].name} </option>`;
        }

        $.post('https://nxt-carshop/getVehicleListShowroom', {}, function(result) {
    
            for (let i = 0; i < result[1]; i++)
            {
                const vehicle = result[0][i]
    
                if (vehicle)
                {
                    let resultImg = `../../imgs/${vehicle.model.toUpperCase()}.png`;
                    $("#dealership-panel .content_table").append(`        
                        <div class="row">
                            <div class="tr">${vehicle.display}</div>
                            <div class="tr">${vehicle.model}</div>
                            <div class="tr">${LOCALES[LOCALE].CURRENCY} ${vehicle.price}</div>

                            <div class="tr">
                                <select id="vehiclesTable_${i}">
                                    <option value="" selected disabled hidden>${vehicle.name ? vehicle.name : vehicle.model}</option>
                                    <option value="none">${lang.SELECT_AN_OPTION}</option>
                                    ${tableVehicles}
                                </select>
                            </div>                       

                        </div>
                    `);
                    
                    // <img class="imgTable" src="${resultImg}" onerror="this.src='../../imgs/Nothumb.png'">
                } else 
                {
                    $("#dealership-panel .content_table").append(`        
                        <div class="row">
                            <div class="tr">${lang.EMPTY}</div>
                            <div class="tr">${lang.EMPTY}</div>
                            <div class="tr">${lang.EMPTY}</div>

                            <div class="tr">
                                <select id="vehiclesTable_${i}">
                                    <option value="none" >${lang.SELECT_AN_OPTION}</option>
                                    ${tableVehicles}
                                </select>
                            </div>
                        </div>
                    `);
                }
            }

            $("#dealership-panel .content_table").append(`
                <div class="button actionSave" style="z-index:88" onclick="DASH.ConfirmShowroomEdit(${result[1]})">${lang.SAVE_SETTINGS}</div>
            `)

        });

    });
}

DASH.ConfirmShowroomEdit = function (showroomData) {
    let newShowroomVehicles = []

    for (let i = 0; i < showroomData; i++)
    {
        var e = document.getElementById(`vehiclesTable_${i}`);
        var strUser = e.value;
        
        if (strUser) {
            newShowroomVehicles.push({
                model: strUser,
                display: i+1
            })
        }
    }

    $.post('https://nxt-carshop/newShowroomVehicles', JSON.stringify(newShowroomVehicles));
}


DASH.BillingClient = function (plate){

    DASH.SelectedPlate = plate;

    $("#dealership-panel .menu_bar").html(`
        <div class="button" onclick="DASH.ClientData()">
            ${lang.HOME}
        </div>
    `);

    $("#dealership-panel .main > .panel").html(` 
        <div class='title'>
            ${lang.LIST_INVOICES}
        </div>

        <header>                            
            <div class="tr">${lang.VEHICLE}</div>
            <div class="tr">${lang.PLATE}</div>
            <div class="tr">${lang.INSTALLMENTS}</div>                    
            <div class="tr">${lang.PAYMENT_PRICE}</div>                                                
            <div class="tr">${lang.PAY}</div>                                     
        </header>                        

        <section class="content_table">   

        </section>    
    `);    

    var table_size = Object.size(DASH.Data);
    for (let i = 0; i < table_size; i++)
    {        
        let isDisabled = "";
        let buttonToPay = `<div class="tr" onclick="DASH.OpenModalConfirmation('${DASH.Data[i].id}')">Pay</div>`

        if (DASH.Data[i].status) {
            isDisabled = "disabled"
            buttonToPay = "Paid out";
        }

        if (DASH.Data[i].plate == DASH.SelectedPlate) { 
            $(".content_table").append(`        
            <div class="row ${isDisabled}">
                <div class="tr">${DASH.Data[i].model}</div>
                <div class="tr">${DASH.Data[i].plate}</div>                            
                <div class="tr">${DASH.Data[i].installments}</div>                    
                <div class="tr">${LOCALES[LOCALE].CURRENCY} ${DASH.Data[i].price}</div>   
                ${buttonToPay}
            </div>
        `);
        }       
    }
}

DASH.BuyVehicleToStore = function (model){

    $("#dealership-panel").append(`
        <div class="billing-modal">
            <header>
                <h5>
                    ${lang.HOW_MANY_VEHICLES_TO_BUY}
                </h5>
            </header>

            <section>
                <input type="number" id="amount_vehicle_to_buy" style="background: rgba(255,255,255,0.5); padding: 0.2vh 0.5vh;">
            </section>

            <section class="buttons">

                <div class="confirm button" onclick="DASH.ConfirmVehiclePurchase('${model}')">           
                    ${lang.BUTTON_CONFIRM}
                </div>
                
                <div class="cancel button" onclick="DASH.ConfirmVehiclePurchase('cancel')">                        
                    ${lang.BUTTON_CANCEL}
                </div>

            </section>

        </div>
    `);
}

DASH.EditVehiclePrice = function (model, price){

    price = Number(price);

    $("#dealership-panel").append(`
        <div class="billing-modal">
            <header>
                <h5>
                    ${lang.NEW_VEHICLE_PRICE}
                </h5>
            </header>

            <section>
                <input type="number" id="vehicle_price" style="background: rgba(255,255,255,0.5); padding: 0.2vh 0.5vh;" placeholder="${price}" value="${price}">
            </section>

            <section class="buttons">

                <div class="confirm button" onclick="DASH.ConfirmEditPrice('${model}')">           
                    ${lang.BUTTON_CONFIRM}
                </div>
                
                <div class="cancel button" onclick="DASH.ConfirmEditPrice('cancel')">                        
                    ${lang.BUTTON_CANCEL}
                </div>

            </section>

        </div>
    `);
}

DASH.ConfirmVehiclePurchase = function (model){    
    
    if (model != "cancel"){
        $.post('https://nxt-carshop/confirmVehiclePurchase', JSON.stringify({model: model, amount: $("#amount_vehicle_to_buy").val() }));
    }

    $(".billing-modal").remove();
}


DASH.ConfirmEditPrice = function (model){    
    
    if (model != "cancel"){
        $.post('https://nxt-carshop/changeVehiclePrice', JSON.stringify({model: model, price: $("#vehicle_price").val() }));
    }

    $(".billing-modal").remove();
}

DASH.OpenModalConfirmation = function (id){
    $.post('https://nxt-carshop/getInvoiceInfo', JSON.stringify({invoiceId: id}), function(invoiceResult){      

        $("#dealership-panel").append(`         
            <div class="billing-modal">
                <header>
                    <h5>
                        ${lang.PAY_INVOICE}
                    </h5>
                </header>


                <section>
                    <p>
                        ${lang.INVOICE}: #${invoiceResult.id}
                    </p>
                    <p>
                        ${lang.PAYMENT_PRICE}: ${LOCALES[LOCALE].CURRENCY} ${invoiceResult.price}
                    </p>
                </section>

                <section class="buttons">

                    <div class="confirm button" onclick="DASH.ModalPay('${invoiceResult.id}')">           
                        ${lang.BUTTON_CONFIRM}
                    </div>
                    
                    <div class="cancel button">                        
                        ${lang.BUTTON_CANCEL}
                    </div>

                </section>

            </div>
        `);        
    })
}

DASH.ModalPay = function (id) {
    $.post('https://nxt-carshop/checkToPayInvoice', JSON.stringify({invoiceId: id}), function(result){

        switch(result) {
            case "success":
                HUD.Notify(1, LOCALES[LOCALE].SUCCESS_INVOICE_PAY);

                $.post("https://nxt-carshop/CloseUi");          
                HUD.Close();
            break;

            case "error":
                HUD.Notify(3, LOCALES[LOCALE].ERROR_INVOICE_PAY);
            break;        
        }

    });
}