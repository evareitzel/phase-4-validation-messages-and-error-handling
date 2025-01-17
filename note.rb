# From MovieForm.js
# pre async-await refactor:

function handleSubmit(e) {
  e.preventDefault();
  fetch("/movies", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(formData),
  }).then((response) => {
    if (response.ok) {
      response.json().then((newMovie) => console.log(newMovie))
    } else {
      response.json().then((errorData) => setErrors(errorData.errors))
    }
  }) 
}
