// // task 1 url (Fortune Cookies)
const url = 'http://127.0.0.1:8000/api/fortune_cookies/random';

// // button
const getFortuneCookies = document.getElementById('getFortuneCookies');
// // render block
const fortuneCookiesResult = document.getElementById('fortuneCookiesResult');
if (getFortuneCookies) {
  getFortuneCookies.addEventListener('click', () => {
    getFortuneCookies.disabled = true;
    $(fortuneCookiesResult).css({
      'animation-name': 'FortuneCookies',
      'animation-duration': '3s',
      'animation-timing-function': 'linear',
      'animation-iteration-count': '1',
    });
    fetch(url, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
      mode: 'cors',
    })
      .then((response) => response.json())
      .then((data) => {
        fortuneCookiesResult.innerHTML = `<span>${data.result}</span>`;
      })
      .catch((error) => {
        console.log(error);
      });
    setTimeout(() => {
      getFortuneCookies.disabled = false;
      $(fortuneCookiesResult).css({
        'animation-name': 'none',
      });
    }, 60000);
  });
}
