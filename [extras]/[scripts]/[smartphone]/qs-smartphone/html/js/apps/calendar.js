var allMonths, dayArray = [], click = 0, dotw = [/Sun/gi,/Mon/gi,/Tue/gi,/Wed/gi, /Thu/gi,/Fri/gi,/Sat/gi];
function getAllDays(month, year) {
  var date = new Date(year, month, 1);
  var days = [];
  while (date.getMonth() === month) {
    var dayToPush = new Date(date);
    days.push(dayToPush);
    date.setDate(date.getDate() + 1);
  }
  return days;
}

function getYear(){
  var d = new Date();
  var curYear = d.getFullYear();
  return curYear;
}
function addElements (query, id){
  //for onload, use activeIndex+1 as query value
  document.getElementById(id).innerHTML = '';
  var allDays = getAllDays((query), getYear());
    for(var i = 0; i<allDays.length; i++){
      allDays[i] = allDays[i].toString();
    }
  var stopNow = false, counter = 0;
  for(var i = 0; i<dotw.length; i++){
    if(allDays[0].match(dotw[i])){
      stopNow = true;
    } else {
      if (!stopNow) {
        counter += 1;
      }
    }
  }
  for(var i=0; i<counter; i++){
    allDays.unshift(" ");
  }
  for(var i=0; i<allDays.length; i++){
    var singleDay = document.createElement('div');
      singleDay.className = 'day';
      singleDay.dataset.title = '';
      singleDay.dataset.location = '';
      //Parse Day
    if(allDays[i]!==" "){
      var dayOTW = allDays[i].split(' ')[2];
      if(dayOTW.charAt(0)==="0"){
        allDays[i]=dayOTW.replace(/0/gi, '');
      } else {
        allDays[i] = dayOTW;
      }
    }
    singleDay.innerHTML = allDays[i];  document.getElementById(id).appendChild(singleDay);
  }
}
//Thanks: http://stackoverflow.com/questions/4649699/is-it-possible-to-get-elements-numerical-index-in-its-parent-node-without-loopi
function whichChild(elem){
    var  i= 0;
    while((elem=elem.previousSibling)!=null) ++i;
    return i;
}
window.onload = function(){
  allMonths = document.querySelectorAll('.month');
  var monthCont = document.getElementById('months');
  for(var i=0; i<allMonths.length; i++){
    allMonths[i].innerHTML += ' ' + getYear();
  }
  addElements(0, 'days');
}
