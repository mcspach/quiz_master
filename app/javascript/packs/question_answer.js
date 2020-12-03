
let score = 0;
console.log(score);
let correctSound = new Audio ('https://res.cloudinary.com/duj93wpnu/video/upload/v1606842266/Correct_Answer_aalpwh.mp3');
let wrongsound = new Audio ('https://res.cloudinary.com/duj93wpnu/video/upload/v1606843161/Negative-sound-effect_g2nodn.mp3');

const radioButtons = document.querySelectorAll('.input-answer');
radioButtons.forEach(button => {
  button.addEventListener('change', event => {
    console.log("boobs");
    const submitButton = document.querySelectorAll(".submit-button");
      submitButton.forEach(button => {
        button.disabled = false;
      }) 
  })
})


document.querySelectorAll(".submit-button").forEach(submitButton => {
  submitButton.addEventListener("click", (event) => {

    const question = event.target.parentElement.parentElement

    event.currentTarget.classList.toggle('d-none');

    const nextButton = event.currentTarget.nextElementSibling
      nextButton.classList.toggle("d-none");

    const showExplanation = nextButton.nextElementSibling
    showExplanation.classList.toggle("d-none");

    question.querySelector("#correct-answer").classList.toggle("highlight-correct-answer");

    const isCorrect = question.querySelector('input:checked').value == 'true'
    if (isCorrect) {
      correctSound.play();
      score = score + 1;
      console.log(score);

      const inputScore = document.querySelector('.final_score');
        inputScore.value = score;

      const image = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling
        image.classList.toggle("d-none");

      const imageYes = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling
      imageYes.classList.toggle("d-none");

      // const radio = question.querySelector('input:checked')
      //   radio.classList.toggle('color-correct');


      const message = question.querySelector('.correct-message')
       message.classList.toggle('d-none');

    } else {

      const image = event.target.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.previousElementSibling
        image.classList.toggle("d-none");

      const imageNo = event.target.parentElement.parentElement.parentElement.previousElementSibling
      imageNo.classList.toggle("d-none");

      const wrong = question.querySelector('input:checked').parentElement
        wrong.classList.add('highlight-incorrect-answer');

      const message = question.querySelector('.incorrect-message')
       message.classList.toggle('d-none');
       wrongsound.play();
    };
  });
})



document.querySelectorAll(".next-button").forEach(nextButton => {
  nextButton.addEventListener("click", (event) => {

    const submitButton = document.querySelectorAll(".submit-button");
      submitButton.forEach(button => {
        button.disabled = true;
    })


    const question = event.target.parentElement.parentElement
      question.classList.toggle("d-none");
    const nextQuestion = question.nextElementSibling
      nextQuestion.classList.toggle("d-none");

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

document.querySelectorAll(".finish-button").forEach(finishButton => {
  finishButton.addEventListener("click", (event) => {
    document.querySelector('#new_quiz_result').submit()
  })
})

