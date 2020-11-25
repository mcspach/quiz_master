document.querySelectorAll(".submit-button").forEach(submitButton => {
  submitButton.addEventListener("click", (event) => {
    const question = event.target.parentElement.parentElement 
      question.classList.toggle("d-none");
    const nextQuestion = question.nextElementSibling
      nextQuestion.classList.toggle("d-none");
  });
})
  

ra