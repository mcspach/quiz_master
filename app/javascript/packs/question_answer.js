
let score = 0

document.querySelectorAll(".submit-button").forEach(submitButton => {
  submitButton.addEventListener("click", (event) => {
    
    const question = event.target.parentElement.parentElement
    // run the is_correct method for chosen radio button
        // Toggle d-none on submit
        event.currentTarget.classList.toggle('d-none')

        // Toggle d-none on NextQ and Explanation button
        const nextButton = event.currentTarget.nextElementSibling
          nextButton.classList.toggle("d-none");
    
        // const sButton = document.querySelector('.submit-button')
        //   sButton.classList.add("d-none");

    const isCorrect = question.querySelector('input:checked').value == 'true'
    if (isCorrect) {

      // add 1 to score if correct, else dont
      score = score + 1;

      // toggle 'color-correct' class for the radio button thats chosen
      const radio = question.querySelector('input:checked')
        radio.classList.toggle('color-correct');

      // Toggle d-none on the 'message-correct'
      const message = question.querySelector('.correct-message')
       message.classList.toggle('d-none');

    } else {

      // toggle 'color-incorrect' class for the radio button thats chosen
      const radio = question.querySelector('input:checked')
        radio.classList.toggle('color-incorrect');

      // Toggle d-none on the 'message-incorrect'
      const message = question.querySelector('.incorrect-message')
       message.classList.toggle('d-none');
    };
  });
})

document.querySelectorAll(".next-button").forEach(nextButton => {
  nextButton.addEventListener("click", (event) => {
    const question = event.target.parentElement.parentElement 
      question.classList.toggle("d-none");
    const nextQuestion = question.nextElementSibling
      nextQuestion.classList.toggle("d-none");
    // add d-none on all message
    const message = question.querySelector('.q-message')
      message.classList.add('d-none');

    const nextButton = question.querySelector('.next-button')
      nextButton.classList.toggle("d-none");

    const sButton = question.querySelector('.submit-button')
      sButton.classList.remove("d-none");

  })
})