let mouseOver = false;
let selectedIdentity = null;
let selectedIdentityType = null;
let selectedIdentityCost = null;
let selectedJob = null;
let selectedJobId = null;

let swooshreverse = new Audio('swooshreverse.mp3'); /* | Volume on close */
swooshreverse.volume = 0.03;
let accessgranted = new Audio('accessgranted.mp3'); /* | Volume on scanning */
accessgranted.volume = 0.03;

Open = function() { 
    $(".container").fadeIn(150);
}

Close = function() {
    $(".container").fadeOut(150, function(){
        ResetPages();
    });
    $.post('https://qb-cityhall/close');
    $(selectedJob).removeClass("job-selected");
    $(selectedIdentity).removeClass("job-selected");
    swooshreverse.play();
}

SetJobs = function(jobs) {
    $.each(jobs, (job, name) => {
        let html = `<div class="job-page-block" data-job="${job}"><p>${name}</p></div>`;
        $('.job-page-blocks').append(html);
    })
}

ResetPages = function() {
    $(".cityhall-option-blocks").show();
    $(".cityhall-main-container").css("background-image", "url('./img/background.png')"); 
    $(".cityhall-identity-page").hide();
    $(".cityhall-job-page").hide();
}

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case "open":
                Open();
                break;
            case "close":
                Close();
                break;
            case "setJobs":
                SetJobs(event.data.jobs);
                break;
        }
    })
});

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
            Close();
            break;
    }
});

$('.cityhall-option-block').click(function(e){
    e.preventDefault();
    let blockPage = $(this).data('page');
    $(".cityhall-option-blocks").fadeOut(100, () => {
        $(`.cityhall-${blockPage}-page`).fadeIn(100);
    });
    if (blockPage == "identity") {
        $(".identity-page-blocks").html("");
        $.post('https://qb-cityhall/requestLicenses', JSON.stringify({}), function(licenses){
            $.each(licenses, (i, license) => {
                let elem = `<div class="identity-page-block" data-type="${i}" data-cost="${license.cost}" data-label="${license.label}"><p>${license.label}</p></div>`;
                $(".identity-page-blocks").append(elem);
            });
        });
    }
});

$(".cityhall-option-block").click(function(e){
    e.preventDefault();
    $(".cityhall-main-container").css("background-image", "none");  
});

$(".intro-link").click(function(e){
    e.preventDefault();
    $(".intro-img").hide();
    $(".intro-h1").hide();
    $(".intro-link").hide();

    let helem = `<div class="intro-verify"><div id="finger" class="intro-fingerprint"></div><h3 class="intro-scanning">Scanning...</h3></div>`;
    $(".hics-intro").append(helem)
    accessgranted.play();
    setInterval(function(){
        $(".intro-scanning").html("ACCESS GRANTED");
        $(".intro-scanning").css("color", "green");
        let styleElem = document.head.appendChild(document.createElement("style"));
        styleElem.innerHTML = "#finger:after {background: green; filter:drop-shadow(0 0 15px green) drop-shadow(0 0 40px green);} #finger:before {background-image:url('./img/fingerprintgreen.png')}";
        setInterval(function(){
            $(".hics-intro").hide("500");
        }, 2300)
    }, 3900);
});



$(document).on("click", ".identity-page-block", function(e){
    e.preventDefault();
    selectedIdentityType = $(this).data('type');
    selectedIdentityCost = $(this).data('cost');
    selectedIdentityName = $(this).data("label");
    if (selectedIdentity == null) {
        $(this).addClass("identity-selected");
        $(".hover-description").fadeIn(10);
        selectedIdentity = this;
        $(".request-identity-button").css("display", "flex"); 
        $(".identity-details").css('display', 'flex'); /* appear */
        $(".request-identity-button").html(`<p>Buy $${selectedIdentityCost}</p>`);
        if (selectedIdentityName == "ID Card"){
            $(".identity-image").attr("src", "./img/id_card.png");
            $(".identity-name").html("ID Card");
            $(".identity-description").html("License you need for identification, if a cop stops you and you don't have this document you could be in trouble!");
        } else if (selectedIdentityName == "Driver License"){
            $(".identity-image").attr("src", "./img/driver_license.png");
            $(".identity-name").html("Driver License");
            $(".identity-description").html("License you need to drive. Hey drive carefully!");
        } else if (selectedIdentityName == "Weapon License"){
            $(".identity-image").attr("src", "./img/weaponlicense.png");
            $(".identity-name").html("Weapon License");
            $(".identity-description").html("License you need to buy a gun. Use it for self defense only");
        } else if (selectedIdentityName == "Hunting License"){
            $(".identity-image").attr("src", "./img/huntinglicense.png");
            $(".identity-name").html("Hunting License");
            $(".identity-description").html("License you need for Hunting");
        } else if (selectedIdentityName == "Fishing License"){
            $(".identity-image").attr("src", "./img/fishing_license.png");
            $(".identity-name").html("Fishing License");
            $(".identity-description").html("License you need for Fishing");
        };
    } else if (selectedIdentity == this) {
        $(this).removeClass("identity-selected");
        selectedIdentity = null;
        $(".request-identity-button").css("display", "none");
        $(".identity-details").css('display', 'none'); /* disappear */
    } else {
        $(selectedIdentity).removeClass("identity-selected");
        $(this).addClass("identity-selected");
        selectedIdentity = this;
        $(".request-identity-button").html("<p>Buy</p>");
        if (selectedIdentityName == "ID Card"){
            $(".identity-image").attr("src", "./img/id_card.png");
            $(".identity-name").html("ID Card");
            $(".identity-description").html("License you need for identification, if a cop stops you and you don't have this document you could be in trouble!");
        } else if (selectedIdentityName == "Driver License"){
            $(".identity-image").attr("src", "./img/driver_license.png");
            $(".identity-name").html("Driver License");
            $(".identity-description").html("License you need to drive. Hey drive carefully!");
        } else if (selectedIdentityName == "Weapon License"){
            $(".identity-image").attr("src", "./img/weapon_license.png");
            $(".identity-name").html("Weapon License");
            $(".identity-description").html("License you need to buy a gun. Use it for self defense only");
        } else if (selectedIdentityName == "Hunting License"){
            $(".identity-image").attr("src", "./img/hunting_license.png");
            $(".identity-name").html("Hunting License");
            $(".identity-description").html("License you need for Hunting");
        } else if (selectedIdentityName == "Fishing License"){
            $(".identity-image").attr("src", "./img/fishing_license.png");
            $(".identity-name").html("Fishing License");
            $(".identity-description").html("License you need for Fishing");
        };
    }
});

$(".request-identity-button").click(function(e){
    e.preventDefault();
    $.post('https://qb-cityhall/requestId', JSON.stringify({
        type: selectedIdentityType,
        cost: selectedIdentityCost
    }))
    ResetPages();
});


/* JOBS Percentage - Graphic */
let truckerhard = 73;
let truckerheavy = 42;
let taxihard = 47;
let taxiheavy = 22;
let towhard = 62;
let towheavy = 32;
let reporterhard = 68;
let reporterheavy = 12;
let garbagehard = 53;
let garbageheavy = 40;
let bushard = 75;
let busheavy = 31;
let windowcleanerhard = 44;
let windowcleanerheavy = 21;

$(document).on("click", ".job-page-block", function(e){
    e.preventDefault();
    selectedJobId = $(this).data('job');
    $(".job-details").css('display', 'flex'); /* Apparire */
    if (selectedJob == null) {
        $(this).addClass("job-selected");
        selectedJob = this;
        $(".apply-job-button").fadeIn(100);


/* JOBADD OR REMOVE - Remove or add a elseif if you are changing jobs */
/* WARNING! if you change this down there you need to copy that and paste after the line 269 */
        $(".job-name").html(selectedJobId);
        if (selectedJobId == "trucker"){
            $(".job-image").attr("src", "./img/Avatars/trucker.png");
            document.documentElement.style.setProperty('--percentage', truckerhard);
            document.documentElement.style.setProperty('--percentage2', truckerheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "taxi"){
            $(".job-image").attr("src", "./img/Avatars/taxi.png");
            document.documentElement.style.setProperty('--percentage', taxihard);
            document.documentElement.style.setProperty('--percentage2', taxiheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "bus"){
            $(".job-image").attr("src", "./img/Avatars/bus.png");
            document.documentElement.style.setProperty('--percentage', bushard);
            document.documentElement.style.setProperty('--percentage2', busheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "windowcleaner"){
            $(".job-image").attr("src", "./img/Avatars/windowcleaner.png");
            document.documentElement.style.setProperty('--percentage', windowcleanerhard);
            document.documentElement.style.setProperty('--percentage2', windowcleanerheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        }


    } else if (selectedJob == this) {
        $(this).removeClass("job-selected");
        selectedJob = null;
        $(".apply-job-button").fadeOut(100);
        $(".job-details").css('display', 'none'); /* Scompare */
    } else {
        $(selectedJob).removeClass("job-selected");
        $(this).addClass("job-selected");
        selectedJob = this;

/* JOBADD OR REMOVE - Remove or add a elseif if you are changing jobs*/
/* WARNING! if you change this down there you need to copy that and paste after the line 197 */
        $(".job-name").html(selectedJobId);
        if (selectedJobId == "trucker"){
            $(".job-image").attr("src", "./img/Avatars/trucker.png");
            document.documentElement.style.setProperty('--percentage', truckerhard);
            document.documentElement.style.setProperty('--percentage2', truckerheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "taxi"){
            $(".job-image").attr("src", "./img/Avatars/taxi.png");
            document.documentElement.style.setProperty('--percentage', taxihard);
            document.documentElement.style.setProperty('--percentage2', taxiheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "bus"){
            $(".job-image").attr("src", "./img/Avatars/bus.png");
            document.documentElement.style.setProperty('--percentage', bushard);
            document.documentElement.style.setProperty('--percentage2', busheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        } else if (selectedJobId == "windowcleaner"){
            $(".job-image").attr("src", "./img/Avatars/windowcleaner.png");
            document.documentElement.style.setProperty('--percentage', windowcleanerhard);
            document.documentElement.style.setProperty('--percentage2', windowcleanerheavy);
            let value1 = getComputedStyle(document.documentElement).getPropertyValue('--percentage');
            let value2 = getComputedStyle(document.documentElement).getPropertyValue('--percentage2');
            $(".stats1").html(`${value1}%`);
            $(".stats2").html(`${value2}%`);
        }
    }
});

$(document).on('click', '.apply-job-button', function(e){
    e.preventDefault();
    $.post('https://qb-cityhall/applyJob', JSON.stringify(selectedJobId))
    ResetPages();
});

$(document).on('click', '.back-to-main', function(e){
    e.preventDefault();
    $(selectedJob).removeClass("job-selected");
    $(selectedIdentity).removeClass("job-selected");
    ResetPages();
});


