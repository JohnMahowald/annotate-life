var Welcome = function(userName) {
  this.userName = userName
}

Welcome.prototype.currentTime = function() {
  return new Date();
}

Welcome.prototype.timeString = function () {
  var time = this.currentTime();
  var hours = this.paddedTime(time.getHours());
  var minutes = this.paddedTime(time.getMinutes());
  return hours + ":" + minutes
}

Welcome.prototype.paddedTime = function (num) {
  return (num < 10) ? "0" + num : num
}

Welcome.prototype.greeter = function () {
  var hour = this.currentTime().getHours();
  
  if (hour < 4) {
    return 'Good Evening, ' + this.userName + ".";
  } else if (hour < 12) {
    return 'Good Morning, ' + this.userName + ".";
  } else if (hour < 18) {
    return 'Good Afternoon, ' + this.userName + ".";
  } else {
    return 'Good Evening, ' + this.userName + ".";
  }
}

function updateGreeting(welcome) {
  $('.time-string').html(welcome.timeString());
  $('.greet-string').html(welcome.greeter()); 
};