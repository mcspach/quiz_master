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

campaign_questions = [
  {
  question: "What structure supporting the fifth wheel skid plate should be checked for cracks or breaks?",
  explanation: "Sliding pintle", 
  answers: [
    {
      content: "Kingpin",
      is_correct: false 
    },
    {
      content: "Platform",
      is_correct: true,
    },
    {
      content: "Absence of required emergency kit",
      is_correct: false
    },
    {
      content: "Apron",
      is_correct: false 
    }
  ]},
  {
  question: "During a hydraulic brake check you must pump the brake pedal____times and then hold it down for______seconds. The brake pedal should not move (depress) for five seconds.",
  explanation: "Sliding pintle",
  answers: [
    {
      content: "3, 5",
      is_correct: false 
    },
    {
      content: "5, 10",
      is_correct: true, 
    },
    {
      content: "7, 12",
      is_correct: false
    },
    {
      content: "10, 15",
      is_correct: false 
    }
  ]},
  {
  question: "Failure to perform an air brake check will result in an automatic failure of the vehicle inspection test.",
  explanation: "To be inserted",
  answers: [
    {
      content: "True",
      is_correct: true, 
    },
    {
      content: "False",
      is_correct: false 
    }
  ]},
  {
  question: "An external inspection of the steering box and hoses will include checking that the steering box is securely mounted and not leaking more than 4 ounces of fluid per hour.",
  explanation: "To be inserted",
  answers: [
    {
      content: "True",
      is_correct: true
    },
    {
      content: "False",
      is_correct: true,
    }
  ]},
  {
  question: "What releases the fifth wheel locking jaws so the trailer can be coupled?",
  explanation: "The release arm allows you to disengage the fifth-wheel locking jaws so you can uncouple the trailer. During your pre-trip inspection, check that the release arm is in the engaged position and the safety latch (if so equipped) is in place.",
  answers: [
    {
      content: "Apron",
      is_correct: false 
    },
    {
      content: "Drawbar",
      is_correct: false
    },
    {
      content: "Locking pins",
      is_correct: false
    },
    {
      content: "Release arms",
      is_correct: true, 
    }
  ]},
  {
  question: "What do you inspect to make sure that all are present and show no signs of looseness such as rust trails or shiny threads?",
  explanation: "During your pre-trip inspection, check that all lug nuts are present and accounted for, tightly fastened, and free of cracks or distortions.",
  answers: [
    {
      content: "Lug nuts",
      is_correct: true 
    },
    {
      content: "Rims",
      is_correct: false
    },
  ]},
    {
  question: "If the wheel has a sight glass, check that the oil level is adequate. Otherwise, look for leaks around the",
  explanation: "As part of your pre-trip inspection of the wheels, check the axle seals and the hub oil/grease seals for leaks. Look for oil or grease on the wheels and any visible evidence of cracks or leaks. If the wheel has a sight glass, you can visually confirm that the oil level is adequate.",
  answers: [
    {
      content: "Rims",
      is_correct: false
    },
    {
      content: "Battery",
      is_correct: false      },
    {
      content: "Hub oil seals and axle seals",
      is_correct: true
    },
    {
      content: "Hydraulic braeks",
      is_correct: false 
    }
  ]},
  {
  question: "What common errors can cause you to fail a vehicle inspection?",
  explanation: "To be inserted",
  answers: [
    {
      content: "Brakes that aren't adjusted properly",
      is_correct: false
    },
    {
      content: "Lack of correct, up-to-date paperwork",
      is_correct: true
    },
    {
      content: "Absence of required emergency kit",
      is_correct: false
    },
    {
      content: "Apron",
      is_correct: false
    }
  ]},
  {
  question: "What carries air or hydraulic fluid to the wheel brake assembly?",
  explanation: "Compressed air (or hydraulic fluid if your vehicle has hydraulic brakes) flows to the brakes through hoses and lines. During your pre-trip inspection, check all hoses and lines for leaks or tangles.",
  answers: [
    {
      content: "Brake linings",
      is_correct: false
    },
    {
      content: "Brake hoses / lines",
      is_correct: false
    },
    {
      content: "Brake chambers",
      is_correct: true
    },
    {
      content: "Slack adjusters",
      is_correct: false
    }
  ]},
  {
  question: "You are looking for puddles on the ground and dripping fluids on the underside of the engine and transmission. What are you checking for?",
  explanation: "As part of your engine inspection, check the ground below the engine compartment for puddles or dripping liquids.",
  answers: [
    {
      content: "Oil level",
      is_correct: false
    },
    {
      content: "Power steering fluid",
      is_correct: false
    },
    {
      content: "Leaks",
      is_correct: true
    },
    {
      content: "None of the above",
      is_correct: false
    }
  ]},
  {
  question: "You pump the pedal three times and hold it down for five seconds, making sure that the pedal does not move. What are you inspecting?",
  explanation: "If your vehicle has hydraulic brakes, test them by pumping the brake pedal three times and then applying firm pressure to it for five seconds, making sure the pedal does not move during that time. If your vehicle has air brakes, test them by performing the final air brake check as described in the Maine Commercial Driver License Manual.",
  answers: [
    {
      content: "Hydraulic brakes",
      is_correct: false
    },
    {
      content: "Air brakes",
      is_correct: true
    },
    {
      content: "Parking brake",
      is_correct: false
    },
    {
      content: "All of the above",
      is_correct: false
    }
  ]},
  {
  question: "Which tires should have a minimum tread depth of 4/32 inch?",
  explanation: "The tires on the steering axle should have at least 4/32 inch of tread, and all other tires should have at least 2/32 inch of tread. Inadequate tread on the front tires increases the risk of a front-wheel skid.",
  answers: [
    {
      content: "Steering axle tires",
      is_correct: true
    },
    {
      content: "Non-drive axle tires",
      is_correct: false
    },
    {
      content: "Spare tires",
      is_correct: false
    },
    {
      content: "All of the above",
      is_correct: false
    }
  ]},
  {
  question: "Make sure that the _________ are not cut, chafed, spliced, or worn, and not tangled, pinched, or dragged against tractor parts.",
  explanation: "During your pre-trip inspection, check the electrical lines and air hoses (or hydraulic hoses for hydraulic brakes). Make sure that the lines and hoses are not cut, chafed, spliced, or worn. Also make sure they are not tangled, pinched, or dragging on parts of the tractor.",
  answers: [
    {
      content: "Locking jaws",
      is_correct: false
    },
    {
      content: "Splash guards",
      is_correct: false
    },
    {
      content: "Door tiles and lifts",
      is_correct: false
    },
    {
      content: "Air lines and electrical tires",
      is_correct: true
    }
  ]},
  {
  question: "What transmits power from the transmission to the drive axle?",
  explanation: "During your pre-trip inspection, check the electrical lines and air hoses (or hydraulic hoses for hydraulic brakes). Make sure that the lines and hoses are not cut, chafed, spliced, or worn. Also make sure they are not tangled, pinched, or dragging on parts of the tractor.",
  answers: [
    {
      content: "Air compressor belt",
      is_correct: false
    },
    {
      content: "Power steering belt",
      is_correct: false
    },
    {
      content: "Steering play",
      is_correct: false
    },
    {
      content: "Drive shaft",
      is_correct: true
    }
  ]},
  {
  question: "When checking the oil pressure gauge you should make sure that:",
  explanation: "To be inserted",
  answers: [
    {
      content: "The gauge shows decreasing oil pressure",
      is_correct: false
    },
    {
      content: "Shows increasing or normal oil pressure or that the warning light goes off",
      is_correct: true
    },
    {
      content: "Shows that there is enough gas for your trip",
      is_correct: false
    },
    {
      content: "All of the above",
      is_correct: false
    }
  ]},
  {
  question: "_________ are the brackets, bolts, or bushings that are used to attach the spring or air bag to the axle and vehicle frame.",
  explanation: "Spring mounts consist of the brackets, bolts, shackles, and bushings used for attaching springs or air bags (for an air ride suspension) to the vehicle frame. During your inspection, check that the spring mounts are secured to the vehicle's frame and axles. Check that no bushings are damaged or missing. Check that there are no broken, loose, or missing bolts or U-bolts.",
  answers: [
    {
      content: "Mounting bolts",
      is_correct: false
    },
    {
      content: "Shock absorbers",
      is_correct:false
    },
    {
      content: "Spring mounts",
      is_correct:  true
    },
    {
      content: "Torque",
      is_correct: false
    }
  ]},
  {
  question: "To improve visibility during severe or stormy weather, __________ must be secure, undamaged, and operating smoothly and correctly.",
  explanation: "Check that the windshield wiper blades are in good condition and press hard enough against the windshield to keep it clean without excessive streaking. Also make sure that the windshield washer mechanism works and there is enough windshield washer fluid in the reservoir.",
  answers: [
    {
      content: "The windshielf wipers and washer",
      is_correct: true
    },
    {
      content: "The handholds and steps",
      is_correct:false
    },
    {
      content: "The emergency equipment",
      is_correct:  false
    },
    {
      content: "The lighting indicators",
      is_correct: false
    }
  ]},
  {
  question: "To check for steering play in a non-power steering vehicle you should turn the steering wheel back and forth. Play should not exceed:",
  explanation: "To be inserted",
  answers: [
    {
      content: "40 degrees",
      is_correct: false
    },
    {
      content: "30 degrees",
      is_correct:false
    },
    {
      content: "20 degrees",
      is_correct:  true
    },
    {
      content: "10 degrees",
      is_correct: false
    }
  ]},
  {
  question: "Which of the following can disengage the engine from the drivetrain?",
  explanation: "To ensure that your vehicle doesn't move once you start the engine, first depress the clutch (unless the vehicle has an automatic transmission) and put the gearshift in neutral (or Park for an automatic transmission). Once the engine has started, slowly release the clutch.",
  answers: [
    {
      content: "Parking brake",
      is_correct: false
    },
    {
      content: "Clutch and gearshift",
      is_correct: true
    },
    {
      content: "Drive shaft",
      is_correct: false
    },
    {
      content: "Water pump",
      is_correct: false
    }
  ]},
  {
  question: "You should never check the reservoir sight glass of the coolant level.",
  explanation: "To be inserted",
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
  question: "You must check to make sure that the oil pressure gauge is working.",
  explanation: "To be inserted",
  answers: [
    {
      content: "True",
      is_correct: true
    },
    {
      content: "False",
      is_correct: false
    }
  ]},
  {
  question: "The temperature gauge is unimportant at a pre-trip inspection.",
  explanation: "To be inserted",
  answers: [
    {
      content: "False",
      is_correct: true
    },
    {
      content: "True",
      is_correct: false
    }
  ]}
]

burst_questions = [
  {
  question: "What should you do if a customer requires you to stop in a spot which is high-risk - for example, on an incline with two way surrounding traffic?",
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
      is_correct: true,
      explanation: "No two situations are alike. Your manager will be able to provide further guidance taking into account safety factors, business imperatives as well as communication with the client to work out a safe way to proceed for you."
    },
    {
      content: "All of the above.",
      is_correct: false
    }
  ]},
  {
  question: "When parking in a hazardous area - for example, on an incline - the main cause of an incident will be the hazards you considered before parking there - for example, poor visibility to surrounding drivers.",
  answers: [
    {
      content: "True",
      is_correct: false
    },
    {
      content: "False",
      is_correct: true,
      explanation: "In the majority of cases, there is no single cause of an incident but rather an accumulation of many small factors which led to the incident."
    }
  ]}
]

#Create a company
company = Company.create!( name: 'The Trucking Guys')
puts 'Company Created'


    # 1. Create a subject area
subject_area = SubjectArea.create!(
  title: 'Pre-Inspection',
  content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
)
puts 'Subject Area Created'

12.times do |number|

  # 1. Create a quiz
  quiz = Quiz.create!(
    quiz_type: 'campaign',
    subject_area: subject_area,
    title: "Week #{number}"
  )

  # 2. questions
  3.times do
    hash_question = campaign_questions.sample
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

puts '12 Quizzes with Q&A Created'

#Create User
user1 = User.new( 
  first_name: 'Matthew',
  last_name: 'Spach',
  password: '123456',
  email: 'matt@example.com',
  phone_number: '1-559-355-0338',
  company: company,
  location: 'California',
  role: 'driver'
) 
puts 'User New, not yet saved'

user1.save!

puts 'User Created'


#Create Company Quizzes
8.times do
  CompanyQuiz.create!(
    company: company,
    quiz: Quiz.all.sample,
  )
end
puts '8 Company_Quizzes created, week 8 quiz should be available to complete'  

#Create Quiz Results
CompanyQuiz.all.each do |cq|
  QuizResult.create!(
    user: user1,
    quiz: cq.quiz,
    score: (1..3).to_a.sample,
    possible_score: 3
  )
end
puts '7 Q_Results Created for user1, its week 8 in the Quarter'

