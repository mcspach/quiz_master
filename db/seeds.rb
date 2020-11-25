# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  campaign_questions = [
    {
    question: "What structure supporting the fifth wheel skid plate should be checked for cracks or breaks?",
    answers: [
      {
        content: "Kingpin",
        is_correct: false
      },
      {
        content: "Platform",
        is_correct: true,
        explanation: "Sliding pintle"
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
    answers: [
      {
        content: "3, 5",
        is_correct: false
      },
      {
        content: "5, 10",
        is_correct: true,
        explanation: "Sliding pintle"
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
    answers: [
      {
        content: "True",
        is_correct: true,
        explanation: "To be inserted"
      },
      {
        content: "False",
        is_correct: false
      }
    ]},
    {
    question: "An external inspection of the steering box and hoses will include checking that the steering box is securely mounted and not leaking more than 4 ounces of fluid per hour.",
    answers: [
      {
        content: "True",
        is_correct: true
      },
      {
        content: "False",
        is_correct: true,
        explanation: "To be inserted"
      }
    ]},
    {
    question: "What releases the fifth wheel locking jaws so the trailer can be coupled?",
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
        explanation: "The release arm allows you to disengage the fifth-wheel locking jaws so you can uncouple the trailer. During your pre-trip inspection, check that the release arm is in the engaged position and the safety latch (if so equipped) is in place."
      }
    ]},
    {
    question: "What do you inspect to make sure that all are present and show no signs of looseness such as rust trails or shiny threads?",
    answers: [
      {
        content: "Lug nuts",
        is_correct: true,
        explanation: "During your pre-trip inspection, check that all lug nuts are present and accounted for, tightly fastened, and free of cracks or distortions."
      },
      {
        content: "Rims",
        is_correct: false
      },
      {
        content: "Spacers",
        is_correct: false
      },
      {
        content: "None of the above",
        is_correct: true,
        explanation: "The release arm allows you to disengage the fifth-wheel locking jaws so you can uncouple the trailer. During your pre-trip inspection, check that the release arm is in the engaged position and the safety latch (if so equipped) is in place."
      }
    ]},
    {
    question: "On the steering linkage you must check for joints and sockets that are worn or loose and that there are no missing bolts, nuts, or cotter keys.",
    answers: [
      {
        content: "True",
        is_correct: true,
        explanation: "To be inserted"
      },
      {
      content: "False",
      is_correct: false
      }
    ]},
    {
    question: "_________ should be clean with no dirt, illegal stickers, obstructions, or damage.",
    answers: [
      {
        content: "The lighting indicators",
        is_correct: false
      },
      {
        content: "The headlights",
        is_correct: false
      },
      {
        content: "The windshield and mirrors",
        is_correct: true,
        explanation: "Windshields and mirrors should be clean and free of damage, illegal stickers, or obstructions that could impede visibility."
      },
      {
        content: "None of the above",
        is_correct: false
      }
    ]},
    {
    question: "It is unnecessary to check the slack adjusters when checking the brake system.",
    answers: [
      {
        content: "True",
        is_correct: true
      },
      {
        content: "False",
        is_correct: false,
        explanation: "To be inserted"
      }
    ]},
    {
    question: "________ are gas or hydraulic devices that cushion the vehicle's ride and stabilize the vehicle.",
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
        is_correct: true,
        explanation: "During your pre-trip inspection, check the shock absorbers on every axle of your vehicle (including the trailers if any) to be sure that they are securely mounted and not leaking."
      }
    ]},
    {
    question: "It is unnecessary to check the slack adjusters when checking the brake system.",
    answers: [
      {
        content: "True",
        is_correct: true
      },
      {
        content: "False",
        is_correct: false,
        explanation: "To be inserted"
      }
    ]},
    {
    question: "Should you be prepared to perform the same brake components inspection of every axle (power unit and trailer, if equipped)?",
    answers: [
      {
        content: "True",
        is_correct: true,
        explanation: "To be inserted"
      },
      {
        content: "False",
        is_correct: false
      }
    ]},
    {
    question: "What transforms steering column action into wheel action?",
    answers: [
      {
        content: "Steering linkage",
        is_correct: false
      },
      {
        content: "Steering box",
        is_correct: false,
        explanation: "When you turn the steering wheel, the steering box translates this motion into turning the front wheels. During your pre-trip inspection, check that the steering box is in good condition, securely mounted, and not leaking. Also check that no nuts, bolts, or cotter keys are missing."
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
    answers: [
      {
        content: "True",
        is_correct: false
      },
      {
        content: "False",
        is_correct: true,
        explanation: "To be inserted"
      }
    ]},
    {
    question: "What should you check to be sure it is solid, clear of objects, and securely bolted to the tractor frame?",
    answers: [
      {
        content: "Apron",
        is_correct: false
      },
      {
        content: "Kingpin",
        is_correct: false      },
      {
        content: "Catwalk",
        is_correct: true,
        explanation: "Check that the steps leading up to the cab and catwalk (if any) are clear of obstructions and secured to the tractor frame."
      },
      {
        content: "Platform",
        is_correct: false
        }
      ]},
    {
    question: "What maintains air pressure in the air brake system?",
    answers: [
      {
        content: "Alternator",
        is_correct: false
      },
      {
        content: "Water pump",
        is_correct: false      },
      {
        content: "Air compressor",
        is_correct: true,
        explanation: "The air compressor maintains air pressure for the air brakes by pumping air into the air storage tanks. If your vehicle's air compressor is belt driven, make sure that its drive belt is snug. A belt that is too loose might slip and not drive the air compressor properly."
      },
      {
        content: "Power steering",
        is_correct: false
        }
      ]},
    {
    question: "What should be fully engaged with no loose or missing pins in the slide mechanism of the sliding fifth wheel?",
    answers: [
      {
        content: "Locking pins",
        is_correct: true,
        explanation: "On many vehicles, the fifth wheel is designed to slide forward and backward on slider rails. If that is so on your vehicle, check the sliding fifth wheel locking pins. Make sure that none of them are loose or missing and that all of them are fully engaged."
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
    answers: [
      {
        content: "Frame",
        is_correct: false
      },
      {
        content: "Tandem release arm / locking pins",
        is_correct: true,
        explanation: "If so equipped, make sure that the locking pins are locked in place and the release arm is secured."
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
    question: "If the wheel has a sight glass, check that the oil level is adequate. Otherwise, look for leaks around the",
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
        is_correct: true,
        explanation: "As part of your pre-trip inspection of the wheels, check the axle seals and the hub oil/grease seals for leaks. Look for oil or grease on the wheels and any visible evidence of cracks or leaks. If the wheel has a sight glass, you can visually confirm that the oil level is adequate."
      },
      {
        content: "Hydraulic braeks",
        is_correct: false
      }
    ]},
    {
    question: "What common errors can cause you to fail a vehicle inspection?",
    answers: [
      {
        content: "Brakes that aren't adjusted properly",
        is_correct: false
      },
      {
        content: "Lack of correct, up-to-date paperwork",
        is_correct: true,
        explanation: "To be inserted"
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
        is_correct: true,
        explanation: "Compressed air (or hydraulic fluid if your vehicle has hydraulic brakes) flows to the brakes through hoses and lines. During your pre-trip inspection, check all hoses and lines for leaks or tangles."
      },
      {
        content: "Slack adjusters",
        is_correct: false
      }
    ]},
    {
    question: "You are looking for puddles on the ground and dripping fluids on the underside of the engine and transmission. What are you checking for?",
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
        is_correct: true,
        explanation: "As part of your engine inspection, check the ground below the engine compartment for puddles or dripping liquids."
      },
      {
        content: "None of the above",
        is_correct: false
      }
    ]},
    {
    question: "You pump the pedal three times and hold it down for five seconds, making sure that the pedal does not move. What are you inspecting?",
    answers: [
      {
        content: "Hydraulic brakes",
        is_correct: false
      },
      {
        content: "Air brakes",
        is_correct: true,
        explanation: "If your vehicle has hydraulic brakes, test them by pumping the brake pedal three times and then applying firm pressure to it for five seconds, making sure the pedal does not move during that time. If your vehicle has air brakes, test them by performing the final air brake check as described in the Maine Commercial Driver License Manual."
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
    answers: [
      {
        content: "Steering axle tires",
        is_correct: true,
        explanation: "The tires on the steering axle should have at least 4/32 inch of tread, and all other tires should have at least 2/32 inch of tread. Inadequate tread on the front tires increases the risk of a front-wheel skid."
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
        is_correct: true,
        explanation: "During your pre-trip inspection, check the electrical lines and air hoses (or hydraulic hoses for hydraulic brakes). Make sure that the lines and hoses are not cut, chafed, spliced, or worn. Also make sure they are not tangled, pinched, or dragging on parts of the tractor."
      }
    ]},
    {
    question: "What transmits power from the transmission to the drive axle?",
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
        is_correct: true,
        explanation: "During your pre-trip inspection, check the electrical lines and air hoses (or hydraulic hoses for hydraulic brakes). Make sure that the lines and hoses are not cut, chafed, spliced, or worn. Also make sure they are not tangled, pinched, or dragging on parts of the tractor."
      }
    ]},
    {
    question: "When checking the oil pressure gauge you should make sure that:",
    answers: [
      {
        content: "The gauge shows decreasing oil pressure",
        is_correct: false
      },
      {
        content: "Shows increasing or normal oil pressure or that the warning light goes off",
        is_correct: true,
        explanation: "To be inserted"
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
        is_correct:  true,
        explanation: "Spring mounts consist of the brackets, bolts, shackles, and bushings used for attaching springs or air bags (for an air ride suspension) to the vehicle frame. During your inspection, check that the spring mounts are secured to the vehicle's frame and axles. Check that no bushings are damaged or missing. Check that there are no broken, loose, or missing bolts or U-bolts."
      },
      {
        content: "Torque",
        is_correct: false
      }
    ]},
    {
    question: "To improve visibility during severe or stormy weather, __________ must be secure, undamaged, and operating smoothly and correctly.",
    answers: [
      {
        content: "The windshielf wipers and washer",
        is_correct: true,
        explanation: "Check that the windshield wiper blades are in good condition and press hard enough against the windshield to keep it clean without excessive streaking. Also make sure that the windshield washer mechanism works and there is enough windshield washer fluid in the reservoir."
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
        is_correct:  true,
        explanation: "To be inserted"
      },
      {
        content: "10 degrees",
        is_correct: false
      }
    ]},
    {
    question: "Which of the following can disengage the engine from the drivetrain?",
    answers: [
      {
        content: "Parking brake",
        is_correct: false
      },
      {
        content: "Clutch and gearshift",
        is_correct: true,
        explanation: "To ensure that your vehicle doesn't move once you start the engine, first depress the clutch (unless the vehicle has an automatic transmission) and put the gearshift in neutral (or Park for an automatic transmission). Once the engine has started, slowly release the clutch."
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
    answers: [
      {
        content: "True",
        is_correct: false
      },
      {
        content: "False",
        is_correct: true,
        explanation: "To be inserted"
      }
    ]},
    {
    question: "You must check to make sure that the oil pressure gauge is working.",
    answers: [
      {
        content: "True",
        is_correct: true,
        explanation: "To be inserted"
      },
      {
        content: "False",
        is_correct: false
      }
    ]},
    {
    question: "The temperature gauge is unimportant at a pre-trip inspection.",
    answers: [
      {
        content: "False",
        is_correct: true,
        explanation: "To be inserted"
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

puts campaign_questions

puts "creating companies"
Company.create(name: "Popeyes");
Company.create(name: "Casella");
puts "all done!"
