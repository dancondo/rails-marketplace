const fakeCronometer = () => {

  let time = document.querySelector('.values');

  let hour = 1;
  let minutes = 59;
  let seconds = 59;

  if (time === null) {
    time = document.querySelector('.values2');
    hour = 1;
    minutes = 57;
    seconds = 12;
  }

  time.innerHTML = `0${hour}:${minutes}:${seconds}`

  const new_time = () => {
    seconds -= 1;
    if (seconds < 0) {
      minutes -= 1;
      seconds = 59;
    }
    if (seconds < 10) {
      time.innerHTML = `0${hour}:${minutes}:0${seconds}`
    } else {
      time.innerHTML = `0${hour}:${minutes}:${seconds}`
    }

  }

  setInterval (new_time, 1000);

}

module.exports = (fakeCronometer);
