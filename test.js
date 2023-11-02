url = 'http://127.0.0.1:8000/api/fortune_cookies/';
fetch(url, {
	method: 'GET',
})
	.then((response) => {
		return response.json();
	})
	.then((data) => {
		console.log(data);
	})
	.catch((error) => {
		console.log(error);
	});