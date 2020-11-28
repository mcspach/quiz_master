
let score = 0;
console.log(score);

document.querySelectorAll(".submit-button").forEach(submitButton => {
  submitButton.addEventListener("click", (event) => {
    
    const question = event.target.parentElement.parentElement

        event.currentTarget.classList.toggle('d-none')

        const nextButton = event.currentTarget.nextElementSibling
          nextButton.classList.toggle("d-none");
    
        const showExplanation = nextButton.nextElementSibling
        showExplanation.classList.toggle("d-none");


    const isCorrect = question.querySelector('input:checked').value == 'true'
    if (isCorrect) {

      score = score + 1;
      console.log(score);

      const image = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling 
        image.classList.toggle("d-none");

      const imageYes = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling
      imageYes.classList.toggle("d-none");

      const radio = question.querySelector('input:checked')
        radio.classList.toggle('color-correct');

      const message = question.querySelector('.correct-message')
       message.classList.toggle('d-none');

    } else {

      const image = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling 
        image.classList.toggle("d-none");
      
      const imageNo = event.target.parentElement.parentElement.parentElement.previousElementSibling 
      imageNo.classList.toggle("d-none");

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

    const image = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling 
    image.classList.remove("d-none");
    
    const imageYes = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling
    imageYes.classList.add("d-none");

    const imageNo = event.target.parentElement.parentElement.parentElement.previousElementSibling 
    imageNo.classList.add("d-none");

  })
})