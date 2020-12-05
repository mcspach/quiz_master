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
  question: "During a hydraulic brake check you must pump the brake pedal____times and then hold it down for______seconds.",
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
  explanation: "An air brake is a serious safety issue but does not result in automatic failure under the legislation",
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
  question: "If the wheel has a sight glass, check that the oil level is adequate. Otherwise, look for leaks around the:",
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
      content: "Hydraulic brakes",
      is_correct: false
    }
  ]},
  {
    question: "On the steering linkage you must check for joints and sockets that are worn or loose and that there are no missing bolts, nuts, or cotter keys.",
    explanation: "Worn joints and sockets on the steering linkage can result in significant equipment failure and therefore should be checked at regular intervals.",
    answers: [
      {
        content: "True",
        is_correct: true
      },
      {
        content: "False",
        is_correct: false,
      }
    ]},
    {
  question: "_________ should be clean with no dirt, illegal stickers, obstructions, or damage.",
  explanation: "Windshields and mirrors should be clean and free of damage, illegal stickers, or obstructions that could impede visibility.",
  answers: [
    {
      content: "The lighting indicators",
      is_correct: false
    },
    {
      content: "The headlights",
      is_correct: false      },
    {
      content: "The windshield and mirrors.",
      is_correct: true
    },
    {
      content: "None of the above.",
      is_correct: false
    }
  ]},
  {
  question: "It is unnecessary to check the slack adjusters when checking the brake system.",
  explanation: "It is good practice but unecessary given slack adjusters are not a direct impact on the braking system.",
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
  question: "What common errors can cause you to fail a vehicle inspection?",
  explanation: "Statistics show that incorrect paperwork is responsible for 57% of all vehicle inspection failures.",
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
  question: "What are you looking for on the underside of the engine and transmission?",
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
  question: "When pumping the pedal three times and holding it down for five seconds, what are you inspecting?",
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
  explanation: "This is good safety behavior that you should check on regular occassions like stopping to refuel for gas.",
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
  explanation: "That is not correct - you should check the reservoir sight glass on regular occasions.",
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
  explanation: "This is good safety behavior which you should try and make second nature through common practice.",
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
  explanation: "The tempature gauge is not one of the key elements that a highway patrol officer will be looking for during a roadside vehicle inspection.",
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
  question: "________ are gas or hydraulic devices that cushion the vehicle's ride and stabilize the vehicle.",
  explanation: "During your pre-trip inspection, check the shock absorbers on every axle of your vehicle (including the trailers if any) to be sure that they are securely mounted and not leaking.",
  answers: [
    {
      content: "Springs",
      is_correct: false
    },
    {
      content: "Brakes",
      is_correct: false
    },
    {
      content: "Mounts",
      is_correct: false
    },
    {
      content: "Shock absorbers",
      is_correct: true
    }
  ]},
  {
  question: "Should you be prepared to perform the same brake components inspection of every axle (power unit and trailer, if equipped)?",
  explanation: "Yes, each brake axle has a similar structure and therefore should be checked using the same test.",
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
  question: "What transforms steering column action into wheel action?",
  explanation: "When you turn the steering wheel, the steering box translates this motion into turning the front wheels. During your pre-trip inspection, check that the steering box is in good condition, securely mounted, and not leaking. Also check that no nuts, bolts, or cotter keys are missing.",
  answers: [
    {
      content: "Steering linkage",
      is_correct: false
    },
    {
      content: "Steering box",
      is_correct: true
    },
    {
      content: "Suspension",
      is_correct: false
    },
    {
      content: "Steering play",
      is_correct: false
    }
  ]},
  {
  question: "Listen for air leaks when checking the air/electric lines. Hoses and electrical lines should not be cut but can be spliced.",
  explanation: "That is incorrect - you should not splice hoses and electrical lines when checking for leaks.",
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
  question: "What should you check to be sure it is solid, clear of objects, and securely bolted to the tractor frame?",
  explanation: "Check that the steps leading up to the cab and catwalk (if any) are clear of obstructions and secured to the tractor frame.",
  answers: [
    {
      content: "Apron",
      is_correct: false
    },
    {
      content: "Kingpin",
      is_correct: false
    },
    {
      content: "Catwalk",
      is_correct: true
    },
    {
      content: "Platform",
      is_correct: false
    }
  ]},
  {
  question: "What maintains air pressure in the air brake system?",
  explanation: "The air compressor maintains air pressure for the air brakes by pumping air into the air storage tanks. If your vehicle's air compressor is belt driven, make sure that its drive belt is snug. A belt that is too loose might slip and not drive the air compressor properly.",
  answers: [
    {
      content: "Alternator",
      is_correct: false
    },
    {
      content: "Water pump",
      is_correct: false
    },
    {
      content: "Air compressor",
      is_correct: true
    },
    {
      content: "Power steering",
      is_correct: false
    }
  ]},
  {
  question: "What should be fully engaged with no loose or missing pins in the slide mechanism of the sliding fifth wheel?",
  explanation: "On many vehicles, the fifth wheel is designed to slide forward and backward on slider rails. If that is so on your vehicle, check the sliding fifth wheel locking pins. Make sure that none of them are loose or missing and that all of them are fully engaged.",
  answers: [
    {
      content: "Locking pins",
      is_correct: true
    },
    {
      content: "Gap",
      is_correct: false
    },
    {
      content: "Locking jaws",
      is_correct: false
    },
    {
      content: "Sliding pintle",
      is_correct: false
    }
  ]},
  {
  question: "What is the sliding mechanism and locking device for tandem axles on trailers?",
  explanation: "If so equipped, make sure that the locking pins are locked in place and the release arm is secured.",
  answers: [
    {
      content: "Frame",
      is_correct: false
    },
    {
      content: "Tandem release arm / locking pins",
      is_correct: true
    },
    {
      content: "Landing gear",
      is_correct: false
    },
    {
      content: "Suspension system",
      is_correct: false
    }
  ]},
  {
  question: "If the wheel has a sight glass, check that the oil level is adequate. Otherwise, look for leaks around the:",
  explanation: "As part of your pre-trip inspection of the wheels, check the axle seals and the hub oil/grease seals for leaks. Look for oil or grease on the wheels and any visible evidence of cracks or leaks. If the wheel has a sight glass, you can visually confirm that the oil level is adequate.",
  answers: [
    {
      content: "Rims",
      is_correct: false
    },
    {
      content: "Battery",
      is_correct: false
    },
    {
      content: "Hub oil seals and axle seals",
      is_correct: true
    },
    {
      content: "Hydraulic breaks",
      is_correct: false
    }
  ]},
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
company = Company.create!( name: 'Trucking USA')
puts 'Company Created'


    # 1. Create a subject area
subject_area = SubjectArea.create!(
  title: 'Pre-Inspection',
  content: 'Pre-Inspection is a major topic for any trucking company. Under state and federal regulations, pre-inspection safety now covers a 37 point test which all drivers should be prepared for. Significant fines and penalties can result from failing a pre-inspection test.'
)
puts 'Subject Area Created'

12.times do |number|

  # 1. Create a quiz
  quiz = Quiz.create!(
    quiz_type: 'refresher',
    subject_area: subject_area,
    title: "Week #{number}"
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
  first_name: 'Matt',
  last_name: 'Spach',
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
  last_name: 'Yang',
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
  last_name: 'Jones',
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

puts 'Creating refresher quizzes'

    # 1. Create a subject area
    subject_area2 = SubjectArea.create!(
      title: 'Checking Brakes',
      content: 'Brake Failure is a significant, common cause in trucking accidents. This usually occurs in combination with other risk factors.'
    )
    puts 'Subject Area Created'

    3.times do |number|

      # 1. Create a quiz
      quiz = Quiz.create!(
        quiz_type: 'minimizer',
        subject_area: subject_area2,
        title: "Quiz Minimizer #{number}"
      )

      # 2. questions
      5.times do
        hash_question = minimizer_questions.sample
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

    puts '3 Minimizer Quizzes with Q&A Created'


    # 20.times do User.create!(
    #   first_name: Faker::Name.first_name,
    #   last_name: Faker::Name.last_name,
    #   password: '123456',
    #   email: Faker::Internet.unique.email,
    #   phone_number: Faker::PhoneNumber.phone_number,
    #   company: company,
    #   location: 'California',
    #   role: 'driver'
    # )
    # end

    # puts 'Minimizer Users Created'


    #Create Company Quizzes
    3.times do
      CompanyQuiz.create!(
        company: company,
        quiz: Quiz.where("quiz_type = 'minimizer'").sample
      )
    end
    puts '3 Minimizer Company_Quizzes created'

    # Create Quiz Results

    # User.all.each do |user|
    #   CompanyQuiz.joins(:quiz).where("quizzes.quiz_type = 'minimizer'").each do |cq|
    #       QuizResult.create!(
    #         user: user,
    #         quiz: cq.quiz,
    #         score: (2..5).to_a.sample,
    #         possible_score: 5
    #       )
    #   end
    # end

    puts '3 Minimizer Q_Results Created for each User'
