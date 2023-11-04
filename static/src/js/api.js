// // task 1 url (Fortune Cookies)
// // task 1 url (Fortune Cookies)
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
    // FortuneCookies cooldown for 3 seconds
    setTimeout(() => {
      getFortuneCookies.disabled = false;
      $(fortuneCookiesResult).css({
        'animation-name': 'none',
      });
    }, 3000);
  });
}

// // task 2 url (Random Numbers)
// // task 2 url (Random Numbers)
// // task 2 url (Random Numbers)
// 2.1
const url2_1 = 'http://127.0.0.1:8000/api/random_numbers/randomInt/';

// // button
const getRandomInt = document.getElementById('randomInt');
// // render block
const randomIntResult = document.getElementById('randomIntResult');
if (getRandomInt) {
  getRandomInt.addEventListener('click', () => {
    fetch(url2_1, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
      mode: 'cors',
    })
      .then((response) => response.json())
      .then((data) => {
        randomIntResult.innerHTML = `<span>${data.result}</span>`;
      })
      .then(() => {
        $('#randomIntResult span').fadeOut(3000);
      })
      .catch((error) => {
        console.log(error);
      });
  });
}

// 2.2
const url2_2 = 'http://127.0.0.1:8000/api/random_numbers/randomIntInRange/';
// // form POST
const randomIntInRange = document.getElementById('randomIntInRange');
// // render block
const randomIntInRangeResult = document.getElementById('randomIntInRangeResult');
if (randomIntInRange) {
  randomIntInRange.addEventListener('submit', (event) => {
    event.preventDefault();
    const formData = new FormData(event.target);
    fetch(url2_2, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRFToken': document.getElementsByName('csrfmiddlewaretoken')[0].value,
      },
      body: JSON.stringify(Object.fromEntries(formData)),
      mode: 'cors',
    })
      .then((response) => response.json())
      .then((data) => {
        randomIntInRangeResult.innerHTML = `<span>${data.result}</span>`;
      })
      .then(() => {
        $('#randomIntInRangeResult span').fadeOut(3000);
      })
      .catch((error) => {
        console.log(error);
      });
  });
}

// 2.3
const url2_3 = 'http://127.0.0.1:8000/api/random_numbers/randomList/';
// // button
const getRandomList = document.getElementById('randomList');
// // render block
const randomListResult = document.getElementById('randomListResult');
if (getRandomList) {
  getRandomList.addEventListener('click', () => {
    fetch(url2_3, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
      mode: 'cors',
    })
      .then((response) => response.json())
      .then((data) => {
        randomListResult.innerHTML = `<span>${data.result}</span>`;
      })
      .then(() => {
        $('#randomListResult span').fadeOut(3000);
      })
      .catch((error) => {
        console.log(error);
      });
  });
}

// // task 3 url (Poems)
// // task 3 url (Poems)
// // task 3 url (Poems)
// 3.1
const url3_1 = 'http://127.0.0.1:8000/api/poems/randomPoem/';
// // button
const getRandomPoem = document.getElementById('randomPoem');
// // render block
const randomPoemResult = document.getElementById('randomPoemResult');
if (getRandomPoem) {
  getRandomPoem.addEventListener('click', () => {
    getRandomPoem.disabled = true;
    fetch(url3_1, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
      mode: 'cors',
    })
      .then((response) => response.json())
      .then((data) => {
        randomPoemResult.innerHTML = `
        <span class="text-center mb-3">${data.result.title}</span>
        <p class="px-3">${data.result.text}</p>
        <span class="text-end"><i>${data.result.author}</i></span>
        `;
      })
      .catch((error) => {
        console.log(error);
      });
    // randomPoem cooldown for 1 second
    setTimeout(() => {
      getRandomPoem.disabled = false;
    }, 1000);
  });
}

// 3.2
const url3_2 = 'http://127.0.0.1:8000/api/poems/randomPoemByTheme/';
// // form POST
const randomPoemByTheme = document.getElementById('randomPoemByTheme');
// // render block
const randomPoemByThemeResult = document.getElementById('randomPoemByThemeResult');
if (randomPoemByTheme) {
  randomPoemByTheme.addEventListener('submit', (event) => {
    event.preventDefault();
    const formData = new FormData(event.target);
    fetch(url3_2, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRFToken': document.getElementsByName('csrfmiddlewaretoken')[0].value,
      },
      mode: 'cors',
      body: JSON.stringify(Object.fromEntries(formData)),
    })
      .then((response) => response.json())
      .then((data) => {
        randomPoemByThemeResult.innerHTML = `
        <span class="text-center mb-3">${data.result.title}</span>
        <p class="px-3">${data.result.text}</p>
        <span class="text-end"><i>${data.result.author}</i></span>
      `;
      })
      .catch((error) => {
        console.log(error);
      });
  });
}

// 3.3
const url3_3 = 'http://127.0.0.1:8000/api/poems/randomPoemByAuthor/';
// // form POST
const randomPoemByAuthor = document.getElementById('randomPoemByAuthor');
// // render block
const randomPoemByAuthorResult = document.getElementById('randomPoemByAuthorResult');
if (randomPoemByAuthor) {
  randomPoemByAuthor.addEventListener('submit', (event) => {
    event.preventDefault();
    const formData = new FormData(event.target);
    fetch(url3_3, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRFToken': document.getElementsByName('csrfmiddlewaretoken')[0].value,
      },
      mode: 'cors',
      body: JSON.stringify(Object.fromEntries(formData)),
    })
      .then((response) => response.json())
      .then((data) => {
        randomPoemByAuthorResult.innerHTML = `
        <span class="text-center mb-3">${data.result.title}</span>
        <p class="px-3">${data.result.text}</p>
        <span class="text-end"><i>${data.result.author}</i></span>`;
      })
      .catch((error) => {
        console.log(error);
      });
  });
}
