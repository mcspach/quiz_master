
document.querySelectorAll(".minimizer-submit-button").forEach(submitButtonMinimizer => {
  submitButtonMinimizer.addEventListener("click", (event) => {

    const questionMinimizer = event.target.parentElement.parentElement

        event.currentTarget.classList.toggle('d-none');

        const nextButtonMinimizer = event.currentTarget.nextElementSibling
          nextButtonMinimizer.classList.toggle("d-none");

        const showExplanationMinimizer = nextButtonMinimizer.nextElementSibling
        showExplanationMinimizer.classList.toggle("d-none");
    $("#correct-answer").addClass("highlight-correct-answer");

    const isCorrect = questionMinimizer.querySelector('input:checked').value == 'true'
    if (isCorrect) {

      const imageMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling
        imageMinimizer.classList.toggle("d-none");

      const imageYesMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling
      imageYesMinimizer.classList.toggle("d-none");

      const radioMinimizer = questionMinimizer.querySelector('input:checked')
        radioMinimizer.classList.toggle('color-correct');

      const messageMinimizer = questionMinimizer.querySelector('.correct-message')
       messageMinimizer.classList.toggle('d-none');

    } else {
      $(questionMinimizer.querySelector('input:checked').parentElement).addClass("highlight-wrong-answer");
      const imageMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling
        imageMinimizer.classList.toggle("d-none");

      const imageNoMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling
      imageNoMinimizer.classList.toggle("d-none");
      const radioMinimizer = questionMinimizer.querySelector('input:checked')
        radioMinimizer.classList.toggle('color-incorrect');

      const messageMinimizer = questionMinimizer.querySelector('.incorrect-message')
       messageMinimizer.classList.toggle('d-none');
    };
  });
})


document.querySelectorAll(".minimizer-next-button").forEach(nextButtonMinimizer => {
  nextButtonMinimizer.addEventListener("click", (event) => {

    const questionMinimizer = event.target.parentElement.parentElement
      questionMinimizer.classList.toggle("d-none");
    const nextQuestionMinimizer = questionMinimizer.nextElementSibling
      nextQuestionMinimizer.classList.toggle("d-none");
    
    const messageMinimizer = questionMinimizer.querySelector('.q-message')
      messageMinimizer.classList.add('d-none');

    const nextButtonMinimizer = questionMinimizer.querySelector('.minimizer-next-button')
      nextButtonMinimizer.classList.toggle("d-none");

    const sButtonMinimizer = questionMinimizer.querySelector('.minimizer-submit-button')
      sButtonMinimizer.classList.remove("d-none");

    const imageMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling
    imageMinimizer.classList.remove("d-none");

    const imageYesMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling
    imageYesMinimizer.classList.add("d-none");

    const imageNoMinimizer = event.target.parentElement.parentElement.parentElement.previousElementSibling
    imageNoMinimizer.classList.add("d-none");

  })
})


