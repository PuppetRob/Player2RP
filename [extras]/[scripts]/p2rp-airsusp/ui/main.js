function clickButton(type) {
  $.post(
    "https://" + GetParentResourceName() + "/p2rp-airsusp:change",
    JSON.stringify({ type: type, value: document.getElementById('info').innerHTML})
  ).then(res => {$("#info").text(res)});
}




function Open(data) {
  $("body").css("display", "flex");
  $("#info").text(data.lvl)
}

function Close() {
  $("body").css("display", "none");
  $.post("https://" + GetParentResourceName() + "/p2rp-airsusp:closeUI");
}


$(document).ready(function () {
  window.addEventListener("message", function (event) {
    switch (event.data.action) {
      case "open":
        Open(event.data.data);
        break;
      case "update":
        Update(event.data.data);
        break;
      case "close":
        Close();
    }
  });
});




$(document).on("keydown", function () {
  switch (event.keyCode) {
    case 27: // ESC
      Close();
      break;
    case 9: // ESC
      Close();
      break;
  }
});



