const higherOrLower = () => {

  const myRate = document.querySelector('#rate');
  const marketRate = document.querySelector('#market_rate');
  console.log(marketRate);
  console.log(myRate);
  if (marketRate.innerHTML < rate.innerHTML) {
    marketRate.classList.add('lower');
    myRate.classList.add('higher');
  }
  if (marketRate.innerHTML > rate.innerHTML) {
    marketRate.classList.add('higher');
    myRate.classList.add('lower');
  }
}

module.exports = (higherOrLower);
