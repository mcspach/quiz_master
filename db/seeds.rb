# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# delete eveything
# DO NOT CHANGE THE ORDER!!!!!!!!!!
CompanyQuiz.destroy_all
Answer.destroy_all
Question.destroy_all
QuizResult.destroy_all
Quiz.destroy_all
User.destroy_all
Company.destroy_all
SubjectArea.destroy_all
# DO NOT CHANGE THE ORDER!!!!!!!!!!!



puts 'deleted everything'

refresher_questions = [
  {
  question: "What is the longest recorded life of an elephant?",
  explanation: "That's pretty old for a beast like that.",
  answers: [
    {
      content: "39 years",
      is_correct: false
    },
    {
      content: "86 years",
      is_correct: true,
    },
    {
      content: "104 years",
      is_correct: false
    },
    {
      content: "142 years",
      is_correct: false
    }
  ]},
  {
  question: "How many rings are there on the Olympic flag",
  explanation: "Three on top, two on bottom.",
  answers: [
    {
      content: "3",
      is_correct: false
    },
    {
      content: "5",
      is_correct: true,
    },
    {
      content: "7",
      is_correct: false
    },
    {
      content: "11",
      is_correct: false
    }
  ]},
  {
    question: "What is a tarsier?",
    explanation: "🐒",
    answers: [
      {
        content: "A cat",
        is_correct: false
      },
      {
        content: "A primate",
        is_correct: true,
      },
      {
        content: "A lizard",
        is_correct: false
      },
      {
        content: "A bird",
        is_correct: false
      }
    ]},
  {
    question: "In a game of darts, what is the most you can score with a single throw?",
    explanation: "60 points is a Triple 20! Wait, better than a bullseye...",
    answers: [
      {
        content: "25 pts",
        is_correct: false
      },
      {
        content: "50 pts",
        is_correct: false
      },
      {
        content: "60 pts",
        is_correct: true
      },
      {
        content: "100 pts",
        is_correct: false
      }
    ]},
  {
    question: "Which of these animals is not in the Chinese Zodiac?",
    explanation: "Bears aint there. What can I say.",
    answers: [
      {
        content: "Rabbit",
        is_correct: false
      },
      {
        content: "Bear",
        is_correct: true,
      },
      {
        content: "Dragon",
        is_correct: false
      },
      {
        content: "Dog",
        is_correct: false
      }
    ]},
  {
    question: "What are Brahmins?",
    explanation: 'Definition: ',
    answers: [
      {
        content: "Hawaiian local surfers",
        is_correct: false
      },
      {
        content: "Members of the highest caste in India",
        is_correct: true,
      },
      {
        content: "A building block of muscle tissue",
        is_correct: false
      },
      {
        content: "It is a nonsence word",
        is_correct: false
      }
    ]},
    {
      question: "Would a Catholic living in the US ever celebrate Easter in May?",
      explanation: "The earliest date is March 22nd and the latest is April 25th",
      answers: [
        {
          content: "Yes",
          is_correct: false
        },
        {
          content: "No",
          is_correct: true,
        }
      ]},
  {
    question: "What are the main two colors on the flag of Spain?",
    explanation: "🇪🇸",
    answers: [
      {
        content: "Blue and Red",
        is_correct: false
      },
      {
        content: "Yellow and Red",
        is_correct: true,
      },
      {
        content: "Yellow and Green",
        is_correct: false
      },
      {
        content: "Blue and White",
        is_correct: false
      }
    ]},
    {
      question: "In the nursery rhyme, how many blackbirds were baked in a pie?",
      explanation: "...Four and twenty blackbirds baked in a pie...",
      answers: [
        {
          content: "4",
          is_correct: false
        },
        {
          content: "11",
          is_correct: false
        },
        {
          content: "24",
          is_correct: true
        },
        {
          content: "40",
          is_correct: false
        }
      ]},
  {
    question: "What is a pomelo?",
    explanation: "Pomelo is one of the few ancient acestors of all the yummy citrus fruits we have today.",
    answers: [
      {
        content: "An old-fashioned punching bag",
        is_correct: false
      },
      {
        content: "A large citrus fruit",
        is_correct: true,
      },
      {
        content: "A Swiss board game played with marbles",
        is_correct: false
      },
      {
        content: "A dog breed similar to a poodle",
        is_correct: false
      }
    ]},
    {
      question: "Who killed Greedo?",
      explanation: "In the Original Star Wars film. But who shot first?",
      answers: [
        {
          content: "Hannibal Lecter",
          is_correct: false
        },
        {
          content: "Han Solo",
          is_correct: true,
        },
        {
          content: "Hercules",
          is_correct: false
        },
        {
          content: "Prince Humperdink",
          is_correct: false
        }
      ]},
    {
      question: "Are giant pandas a type of bear",
      explanation: "Yes, the giant panda is one of the eight species in the family Ursidae.",
      answers: [
        {
          content: "No",
          is_correct: false
        },
        {
          content: "Yes",
          is_correct: true,
        }
      ]},
      {
        question: "How many points is the letter X worth in Scrabble?",
        explanation: "8! Which is the highest score any one letter has.",
        answers: [
          {
            content: "8",
            is_correct: true
          },
          {
            content: "9",
            is_correct: false
          },
          {
            content: "10",
            is_correct: false
          },
          {
            content: "11",
            is_correct: false
          }
        ]},
        {
          question: "Which part of the tongue tastes sweet stuff?",
          explanation: "There is a bunch of different receptor areas in the tongue for different tastes.",
          answers: [
            {
              content: "The back, by the throat",
              is_correct: false
            },
            {
              content: "All your tastebuds are the same",
              is_correct: false
            },
            {
              content: "The side edges",
              is_correct: false
            },
            {
              content: "The tip",
              is_correct: true
            }
          ]},
          {
            question: "What is the most common color for toilet paper in France?",
            explanation: "They are so cute.",
            answers: [
              {
                content: "brown",
                is_correct: false
              },
              {
                content: "pink",
                is_correct: true
              },
              {
                content: "white",
                is_correct: false
              },
              {
                content: "blue",
                is_correct: false
              }
            ]}
]

minimizer_questions = [
  {
  question: "What should you do if a customer requires you to stop in a spot which is high-risk - for example, on an incline with two way surrounding traffic?",
  explanation: "No two situations are alike. Your manager will be able to provide further guidance taking into account safety factors, business imperatives as well as communication with the client to work out a safe way to proceed for you.",
  answers: [
    {
      content: "You should go ahead and park there because the customer is always right.",
      is_correct: false
    },
    {
      content: "You should skip this stop because it's too hazardous",
      is_correct: true
    },
    {
      content: "You should phone your shift manager, explain the situation and get their instructions of how to proceed.",
      is_correct: true
    },
    {
      content: "All of the above.",
      is_correct: false
    }
  ]},
  {
  question: "When parking in a hazardous area - for example, on an incline - the main cause of an incident will be the hazards you considered before parking there - for example, poor visibility to surrounding drivers.",
  explanation: "In the majority of cases, there is no single cause of an incident but rather an accumulation of many small factors which led to the incident.",
  answers: [
    {
      content: "True",
      is_correct: false
    },
    {
      content: "False",
      is_correct: true
    }
  ]},
  {
  question: "When parking in a hazardous area - for example, on an incline - the gear shift should be left in reverse.",
  explanation: "The gear shift should not be left in reverse when parking on an incline.",
  answers: [
    {
      content: "True",
      is_correct: false
    },
    {
      content: "False",
      is_correct: true
    }
  ]},
  {
  question: "Who bears liability for an accident when the driver of the company was at fault?",
  explanation: "Under state and federal legislation, even if the company driver was at fault, legal liability can extend up the company's chain of command to include other company employees, including its directors.",
  answers: [
    {
      content: "The driver.",
      is_correct: false
    },
    {
      content: "The driver's supervising manager.",
      is_correct: true
    },
    {
      content: "The company's directors.",
      is_correct: false
    },
    {
      content: "All of the above.",
      is_correct: true
    }
  ]},
  {
    question: "You should only think about safety risks in situations which look risky.",
    explanation: "The data shows that the majority of safety incidents happen in what are perceived as 'safe situations'. This can lead to complacency which is a significant cause of incidents. So, you should also consider risks when everything 'seems right'.",
    answers: [
      {
        content: "True",
        is_correct: false
      },
      {
        content: "False",
        is_correct: true
      }
    ]}
]

#Create a company
company = Company.create!( name: 'Food Fighters')
end
  
puts 'Company Created'


    # 1. Create a subject area
subject_area = SubjectArea.create!(
  title: 'Math',
  content: 'Math is that thing with numbers and symbols and is hard.'
)
puts 'Subject Area Created'

12.times do |number|

  # 1. Create a quiz
  quiz = Quiz.create!(
    quiz_type: 'refresher',
    subject_area: subject_area,
    title: "Quiz Numero #{number}"
  )

  # 2. questions
  3.times do
    hash_question = refresher_questions.sample
    question = Question.create!(
      quiz: quiz,
      content: hash_question[:question],
      explanation: hash_question[:explanation]
    )

    # 3. answers
    hash_question[:answers].each do |answer_attributes|
      Answer.create!(
        content: answer_attributes[:content],
        is_correct: answer_attributes[:is_correct],
        question: question
      )
    end
  end
end

puts '12 Refreshers Quizzes with Q&A Created'

#Create User
user1 = User.create!(
  first_name: 'Mott',
  last_name: 'Pock',
  password: '123456',
  email: 'matt@example.com',
  phone_number: '1-559-355-0338',
  company: company,
  location: 'California',
  role: 'driver'
)

#Create User
user2 = User.create!(
  first_name: 'Andy',
  last_name: 'Wang',
  password: '123456',
  email: 'andy@example.com',
  phone_number: '1-667-444-0338',
  company: company,
  location: 'California',
  role: 'driver'
)

#Create User
user2 = User.create!(
  first_name: 'Frank',
  last_name: 'Yones',
  password: '123456',
  email: 'frank@example.com',
  phone_number: '1-617-448-5001',
  company: company,
  location: 'California',
  role: 'driver'
)

9.times do User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456',
  email: Faker::Internet.unique.email,
  phone_number: Faker::PhoneNumber.phone_number,
  company: company,
  location: 'California',
  role: 'driver'
)
end

puts '12 Users Created'


#Create Company Quizzes
8.times do
  CompanyQuiz.create!(
    company: company,
    quiz: Quiz.all.sample,
  )
end
puts '8 Refresher Company_Quizzes created, week 8 quiz should be available to complete'

#Create Quiz Results
User.all.each do |user|
  CompanyQuiz.all.each do |cq|
    unless cq == CompanyQuiz.last
      QuizResult.create!(
        user: user,
        quiz: cq.quiz,
        score: (2..3).to_a.sample,
        possible_score: 3
      )
    end
  end
end

puts '7 Refresher Q_Results Created for each User, its week 8 in the Quarter'

