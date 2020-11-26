
let score = 0

document.querySelectorAll(".submit-button").forEach(submitButton => {
  submitButton.addEventListener("click", (event) => {
    // run the is_correct method for chosen radio button
        // Toggle d-none on submit
        event.currentTarget.classList.toggle('d-none')

        // Toggle d-none on NextQ and Explanation button
        const nextButton = document.querySelector('.next-button')
          nextButton.classList.toggle("d-none");
    
        const sButton = document.querySelector('.submit-button')
          sButton.classList.add("d-none");

    const isCorrect = document.querySelector('input:checked').value
    if (isCorrect) {

      // add 1 to score if correct, else dont
      score = score + 1;

      // toggle 'color-correct' class for the radio button thats chosen
      const radio = document.querySelector('input:checked')
        radio.classList.toggle('color-correct');

      // Toggle d-none on the 'message-correct'
      const message = document.querySelector('.correct-message')
       message.classList.toggle('d-none');

    } else {

      // toggle 'color-incorrect' class for the radio button thats chosen
      const radio = document.querySelector('input:checked')
        radio.classList.toggle('color-incorrect');

      // Toggle d-none on the 'message-incorrect'
      const message = document.querySelector('.incorrect-message')
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
    const message = event.target.querySelector('.q-message')
      message.classList.add('d-none');

    const nextButton = document.querySelector('.next-button')
      nextButton.classList.toggle("d-none");

    const sButton = document.querySelector('.submit-button')
      sButton.classList.remove("d-none");

  })
})