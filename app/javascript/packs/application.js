import "bootstrap";

const desired_amount = document.querySelector('#desired_amount');
const value = document.querySelector('#total_value');
const rate = document.querySelector('#rate').innerHTML;

const calculate = () => {
  value.innerHTML = desired_amount.value * rate
}

document.addEventListener('keyup', calculate);
