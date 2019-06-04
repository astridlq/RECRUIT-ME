# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Message.destroy_all
Conversation.destroy_all
DevelopSkill.destroy_all
VacancySkill.destroy_all
UserSkill.destroy_all
Skill.destroy_all
Vacancy.destroy_all
Message.destroy_all
Conversation.destroy_all
User.destroy_all

puts "Creating shit"
skill_hash = [
{
name: "Front-end Development",
description: "The practice of producing HTML, CSS and JavaScript for a website or Web Application so that a user can see and interact with them directly.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/front_end.jpg"))
}, {
name: "Back-end Web Development",
description: "Backend development languages handle the ‘behind-the-scenes’ functionality of web applications. It’s code that connects the web to a database, manages user connections, and powers the web application itself.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/back_end.jpg"))
}, {
name: "Database Management",
description: "Managing databases using management software and SQL",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/database_management.jpg"))
}, {
name: "UI & UX Design",
description: "User experience (UX) design is the process of creating products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability, and function.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/ux_design_1.jpg"))
}, {
name: "Cloud Computing",
description: "using a network of remote servers hosted on the Internet to store, manage, and process data",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/cloud_computing.jpg"))
}, {
name: "AI & Machine Learning",
description: "The theory and development of computer systems able to perform tasks normally requiring human intelligence, such as visual perception, speech recognition, decision-making, and translation between languages",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/ai_machine_learning_1.jpg"))
}, {
name: "Data Analysis",
description: "Inspecting, cleansing, transforming, and modeling data with the goal of discovering useful information, informing conclusions, and supporting decision-making.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/data_analysis.png.jpg"))
}, {
name: "Product Knowledge",
description: "Product knowledge is an essential sales skill. Understanding your products' features allows you to present their benefits accurately and persuasively. Customers respond to enthusiastic sales staff who are passionate about their products and eager to share the benefits with them",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/product_knowledge.jpg"))
}, {
name: "Rapport Building on the Cold Call",
description: "A technique in which a salesperson contacts individuals who have not previously expressed interest in the offered products or services.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/cold_call.jpg"))
}, {
name: "Qualification Questioning",
description: "ISEs need to start off every sales conversations by asking questions.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/question.jpg"))
}, {
name: "Planning and organizational skills",
description: "Creating and keeping deadlines, delegation, goal setting and meeting goals, decision making, managing appointments, team management, project management, making schedules.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/planning_organizing_skills.jpg"))
}, {
name: "Closing Techniques",
description: "One of the most important stages of selling is closing the deal, which is the actions taken by the sales person to gain agreement to the sale.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/closing_techniques.jpg"))
}, {
name: "Post-Sale Relationship Management",
description: "Relationship management involves strategies to build client support for a business and its offerings, and increase brand loyalty.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/post_relationship_sales.jpg"))
}, {
name: "Demo Skills",
description: "Demonstrate or explain products, methods, or services to persuade customers to purchase products or use services.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/demo.jpg"))
}, {
name: "Consumer relevance and market knowledge",
description: "Market knowledge is to know about the various aspects associated with the business one is offering to the market. It includes detail study about the primary and secondary activities that a company can include in its core activities so that value can be delivered to the market.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/consumer_relevance_market_knowledge.jpg"))
}, {
name: "Strategic planning and Global thinking",
description: "Strategic planning is an organizational management activity that is used to set priorities, focus energy and resources, strengthen operations, ensure that employees and other stakeholders are working toward common goals, establish agreement around intended outcomes/results, and assess and adjust the organization's direction in response to a changing environment.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/strategic_planning_global_thinking.jpg"))
}, {
name: "Results oriented",
description: "An individual that focuses on outcome rather than process used to produce a product or deliver a service.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/result_oriented.jpg"))
}, {
name: "Initiative and communication",
description: "A great leader not only has initiative as an individual character trait, but also coaches his or her team or organization in a manner that creates and encourages initiative from all team members.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/initiative_communication.jpg"))
}, {
name: "Financial planning",
description: "The process of estimating the capital required and determining it’s competition. It is the process of framing financial policies in relation to procurement, investment and administration of funds of an enterprise.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/financial_planning.jpg"))
}, {
name: "Financial reporting",
description: "Financial reporting is the disclosure of financial results and related information to management and external stakeholders (e.g., investors, customers, regulators) about how a company is performing over a specific period of time.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/financial_reporting.jpg"))
}, {
name: "Auditing and compliance knowledge",
description: "A compliance audit is a comprehensive review of an organization's adherence to regulatory guidelines. Audit reports evaluate the strength and thoroughness of compliance preparations, security policies, user access controls and risk management procedures over the course of a compliance audit.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/auditing_compliance_knowledge.jpg"))
}, {
name: "Accounting qualified",
description: "The AAT qualification is the minimal level of qualification required for most kinds of accountancy.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/accounting_qualified.jpg"))
}, {
name: "Commercial awareness",
description: "Staying up-to-date on daily happenings and developments in the business and commercial world.",
skill_type: "hard",
photo: File.open(Rails.root.join("db/fixtures/skills/commercial_awareness.jpg"))
}, {
name: "Communication",
description: "Clarity, confidence, respect, empathy, listening, (non-)verbal communication, written communication, constructive feedback, friendliness",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/communication.jpg"))
}, {
name: "Team Work",
description: "Conflict management, delegation, listening, active listening, collaboration, cooperation, idea exchange, negotiating",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/teamwork.jpg"))
}, {
name: "Adaptability",
description: "Curiosity, self-management, decision-making, calmness, optimism, open-mindedness, self-confidence, self-motivation",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/adaptability.jpg"))
}, {
name: "Problem-Solving & decision making",
description: "Lateral thinking, logical reasoning, initiative, persistence, observation, persuasion, brainstorming",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/problem_solving.jpg"))
}, {
name: "Creativity",
description: "Divergent thinking, inspiration, imagination, design, innovation, experimenting",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/creativity.jpg"))
}, {
name: "Work Ethic",
description:"Integrity, responsibility, discipline, commitment, self-motivated, professionalism",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/work_ethic.jpg"))
}, {
name: "Interpersonal Skills",
description: "Empathy, humor, mentoring, networking, sensitivity, patience, tolerance, public speaking, positive reinforcement, diplomacy",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/interpersonal_skills.jpg"))
}, {
name: "Time Management",
description: "Goal setting, prioritizing, self-starter, planning, delegation, stress management, organization",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/time_management.jpg"))
}, {
name: "Leadership",
description: "Empathy, selflessness, agility, listening, humility, cultural intelligence, authenticity, versatility, generosity, trust",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/leadership.jpg"))
}, {
name: "Attention to Detail",
description: "Critical observation, listening, introspection, memory, acuity, questioning",
skill_type: "soft",
photo: File.open(Rails.root.join("db/fixtures/skills/attention_to_detail.jpg"))
}, {
name: "Worked with agencies / external partners",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/worked_with_agencies.jpg"))
}, {
name: "Territory experience",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/territory_experience.jpg"))
}, {
name: "3+ years experience",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/3_years_experience.jpg"))
}, {
name: "5+ years experience",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/5_years_experience.jpg"))
}, {
name: "Managed end-to-end projects",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/managed_end_to_end_projects.jpg"))
}, {
name: "Have shown visionary thinking",
description:"y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/have_shown_visionary_thinking.jpg"))
}, {
name: "Worked in a multicultural environment",
description: "y" ,
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/worked_in_multicultural_environment.jpg"))
}, {
name: "Expanded technical capability significantly",
description: "y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/expanded_technical_capability.jpg"))
}, {
name: "Worked on out-of-expertise projects",
description: "y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/worked_on_out_of_expertice_projects.jpg"))
}, {
name: "Managed a team",
description: "y",
skill_type: "experience",
photo: File.open(Rails.root.join("db/fixtures/skills/managed_a_team.jpg"))
}
]

puts "Creating skills.."
skills = Skill.create!(skill_hash)


user_hash =
[
{
first_name:"test",
last_name:"user",
email: "example@big.com",
password: "password",
password_confirmation: "password",
job_title:"Key Account Manager",
description:"I'm a test",
department:"Sales",
is_manager: false,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/skills/backend.jpg"))
},
{
first_name:"Axel",
last_name:"Kalland",
email: "axel@big.com",
password: "password",
password_confirmation: "password",
job_title:"Software Engineer",
description:"Front-end, back-end, middle-end, hi-end, low-end, you name it, I fix it! No problem.",
department:"IT",
is_manager: false,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/users/axel.jpg"))
},
{
first_name:"Alexander",
last_name:"Miesen",
email: "alexander@big.com",
password: "password",
password_confirmation: "password",
job_title:"Key Account Executive",
description:"I am a Key Account Executive but I don't really enjoy it. I decided that this wasn't something I wanted to do for the rest of my life. After trying to code a little on my own, I discovered that I really want to become a programmer. I hope to become a Jr. Software Engineer.",
department:"Sales",
is_manager: false,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/users/alexander.jpg"))
},
{
first_name:"Edward",
last_name:"Phillips",
email: "edward@big.com",
password: "password",
password_confirmation: "password",
job_title:"Architect Engineer",
description:"Coding anything, anytime, anywhere. You know where to find me. Does your code have an attitude? Does your code break like the ice on a warm spring day? Better call Ed!",
department:"IT",
is_manager: false,
location:"London",
photo: File.open(Rails.root.join("db/fixtures/users/edward.jpg"))
},
{
first_name:"Astrid",
last_name:"Le Quéré",
email: "astrid@big.com",
password: "password",
password_confirmation: "password",
job_title:"UX Designer",
description:"I got a Master's degree in Digital Marketing in France, also spending some time in Canada, in the Netherlands and Hong-Kong.
After a 8-month solo road-trip in Asia, I started working in Digital Sales.
But my passion is in design. I thus decided to join Le Wagon to get better tech knowledge and eventually change career in Front-end / UX",
department:"IT",
is_manager: true,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/users/astrid.jpg"))
},
{
first_name:"Guerrique",
last_name:"Desmoulins",
email: "guerrique@big.com",
password: "password",
password_confirmation: "password",
job_title:"Budget Analyst",
description:"Half Turkish Half Dutch. Born in England. Raised in Belgium and Czech Republic. Political Science degree. Previously in Real Estate in France & Holland. Hoping to build startups. Divide my time between Turkey, Holland and UK.",
department:"Finance",
is_manager: false,
location:"Paris",
photo: File.open(Rails.root.join("db/fixtures/users/guerrique.jpg"))
},
{
first_name:"Lea",
last_name:"Agterberg",
email: "lea@big.com",
password: "password",
password_confirmation: "password",
job_title:"Key Account Executive",
description:"Have worked in TV for the last few years and, after joining the technology department, became enamored with the world of computer programming. After studying C++ on my own for a year or so I decided that I would love to have a career in development. After finishing Le Wagon I plan to find work as a full stack engineer or perhaps create my own business, the path ahead is fairly open at the moment but as we progress I feel like I will acquire a sharper focus on what will be my main passion.",
department:"Sales",
is_manager: false,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/lea.jpg"))
},
{
first_name:"Leila",
last_name:"Hall",
email: "leila@big.com",
password: "password",
password_confirmation: "password",
job_title:"Software Engineer",
description:"24 years old, Italian living in Amsterdam for 4 years.
I studied audio engineering but ended up in a boring desk job, so i promised myself that in 2019 i would switch career and learn something new, code it is!
I hope to start working as a programmer and maybe one day implement this knowledge with my past studies.",
department:"IT",
is_manager: false,
location:"London",
photo: File.open(Rails.root.join("db/fixtures/users/leila.jpg"))
},
{
first_name:"Dion",
last_name:"Shahini",
email: "dion@big.com",
password: "password",
password_confirmation: "password",
job_title:"Architect Engineer",
description:"Graduated from business school, did hotel management for 10 years, learned chinese medicine for 7 years, went to China to go on internship in chinese medicine hospitals, stayed there.",
department:"IT",
is_manager: false,
location:"Tokyo",
photo: File.open(Rails.root.join("db/fixtures/users/dion_dion.jpg"))
},
{
first_name:"Angela",
last_name:"Kooji",
email: "angela@big.com",
password: "password",
password_confirmation: "password",
job_title:"Brand Manager",
description:"I've studied Medicine and Global Health. Most of the jobs I can apply to are policy based, and a more practical approach is more suitable to me. Hence I want to learn to code to contribute to the areas I'm interested in while doing something practical and are able to enjoy the perks of being able to work abroad more easily.",
department:"Marketing",
is_manager: true,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/angela.jpg"))
},
{
first_name:"Tecia",
last_name:"Vailati",
email: "tecia@big.com",
password: "password",
password_confirmation: "password",
job_title:"Front-end Developer",
description:"Former catastrophe insurance adjuster, I've worked and lived all over the USA for many years. I want to learn coding to be more marketable with the option to create my own startup one day.",
department:"IT",
is_manager: false,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/users/tecia.jpg"))
},
{
first_name:"Yves",
last_name:"Lesaffre",
email: "yves@big.com",
password: "password",
password_confirmation: "password",
job_title:"Demand Planner",
description:"I have worked in sales in Brasil and the Uk before, and I am ready to change my career and learn to code So I can strive to work as a contractor",
department:"Sales",
is_manager: true,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/yves.jpg"))
},
{
first_name:"Chris",
last_name:"Hordijk",
email: "chris@big.com",
password: "password",
password_confirmation: "password",
job_title:"Sales Representative",
description:"6 years of marketing and sales experience at Unilever. Quit my job to learn to code so that I can develop concepts and learn to communicate with programmers. Look forward to learning from LeWagon and my peers during the course!",
department:"Sales",
is_manager: false,
location:"Tokyo",
photo: File.open(Rails.root.join("db/fixtures/users/chris.jpg"))
},
{
first_name:"Edvar",
last_name:"ter Haar",
email: "edvar@big.com",
password: "password",
password_confirmation: "password",
job_title:"Data Analyst",
description:"Ex-finance, ex-marine biologist getting back to his computing roots, interested in cloud computing and networks. Lives in Amsterdam, world citizen",
department:"IT",
is_manager: false,
location:"London",
photo: File.open(Rails.root.join("db/fixtures/users/edvar.jpg"))
},
{
first_name:"Quint",
last_name:"Pieters",
email: "quint@big.com",
password: "password",
password_confirmation: "password",
job_title:"Digital Marketing Manager",
description:"Dutchie living in Tel Aviv. I've been working for the past three years for high tech company MyHeritage. They introduced me to the world of the R&D department and have been studying programming ever since. I've been doing two different courses in TLV but since I've got addicted I've decided to go for it and joinng Le wagon. I After finishing Le Wagon I plan to find work as a full stack engineer!",
department:"Marketing",
is_manager: true,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/quint.jpg"))
},
{
first_name:"Gerry",
last_name:"Garcia",
email: "gerry@big.com",
password: "password",
password_confirmation: "password",
job_title:"Sales Representative",
description:"I am an business university student, have my own company called PRINTX that makes graphic design & printing. Was in gymnastics for 14 years (Mexico Champion 2008-2009), looking always for some adventure!",
department:"Sales",
is_manager: false,
location:"Paris",
photo: File.open(Rails.root.join("db/fixtures/users/gerry.jpg"))
},
{
first_name:"Rob",
last_name:"Tuinte",
email: "rob@big.com",
password: "password",
password_confirmation: "password",
job_title:"Financial Analyst",
description:"Background in the publishing industry, followed by sales and marketing role at a technology firm in London. I am now heading back to university to study a Business degree and am hoping my degree and coding experience will allow me to get a job in strategy and consultancy within the technology sector.",
department:"Finance",
is_manager: false,
location:"Paris",
photo: File.open(Rails.root.join("db/fixtures/users/rob.jpg"))
},
{
first_name:"Omolola",
last_name:"Fagade",
email: "omolola@big.com",
password: "password",
password_confirmation: "password",
job_title:"Account Manager",
description:"I'm 30 years old and I'm living in Almere together with my boyfriend and street cat who adopted us. I've worked as an (online)marketer and designer for almost 10 years now. Huge animal lover! <3",
department:"Sales",
is_manager: true,
location:"Tokyo",
photo: File.open(Rails.root.join("db/fixtures/users/omolola.jpg"))
},
{
first_name:"Juriaan",
last_name:"Romijn",
email: "juriaan@big.com",
password: "password",
password_confirmation: "password",
job_title:"Demaned Planner",
description:"Until I was 15 I lived in Italy and went to a french school, I then moved to The Hague and went to a dutch school. After I received my degree I chose to follow the study Precision Engineering. After a while I realised that I did not like the study and decided to stop. Seen as I always had an interest in coding and that now I have the time, I want to learn and practice coding.",
department:"Sales",
is_manager: false,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/juriaan.jpg"))
},
{
first_name:"Max",
last_name:"Salemans",
email: "maxs@big.com",
password: "password",
password_confirmation: "password",
job_title:"Software Engineer",
description:"I used to run an online grocery wholesale store in Nigeria. I am also an accountant(ACCA) qualified and studied a little bit of Financial Analysis(CFA). I am learning to code to get more challenged and work more flexibly.",
department:"IT",
is_manager: false,
location:"Amsterdam",
photo: File.open(Rails.root.join("db/fixtures/users/maxs.jpg"))
},
{
first_name:"Max",
last_name:"Teunissen",
email: "maxt@big.com",
password: "password",
password_confirmation: "password",
job_title:"UX Designer",
description:"I'm a Tech enthousiast, passionate to become a tech entrepreneur. I used to study entrepreneurship at Team Academy in Amsterdam, currently I'm joining Le Wagon to learn how to code and become a developer to execute my ideas.",
department:"IT",
is_manager: false,
location:"London",
photo: File.open(Rails.root.join("db/fixtures/users/maxt.jpg"))
},
{
first_name:"Tristan",
last_name:"Viney",
email: "tristan@big.com",
password: "password",
password_confirmation: "password",
job_title:"Budget Analyst",
description:"Hi There! My name is Tristan, I'm 29 years old and living in Rotterdam, The Netherlands. I have a background in finance and now working on my own start-ups and learning how to code @Le Wagon! :D",
department:"Finance",
is_manager: false,
location:"Paris",
photo: File.open(Rails.root.join("db/fixtures/users/tristan.jpg"))
},
{
first_name:"Joao",
last_name:"Pedro Lobo Miranda",
email: "joao@big.com",
password: "password",
password_confirmation: "password",
job_title:"Digital Marketing Specialist",
description:"I'm 33 and I was born and raised in Brazil but I have been in the Netherlands for about 8 years. I have a degree in Portuguese Language and Literatures and a Research Master in Study of Art and Literature. My last job was as a language teacher, but I have also experience in marketing and administration. I fell out of love with my profession and I gave up the idea of following an academic career. I am learning how to code to start something new.",
department:"Marketing",
is_manager: false,
location:"Barcelona",
photo: File.open(Rails.root.join("db/fixtures/users/joao.jpg"))
},
{
first_name:"Elia",
last_name:"Giangiordano",
email: "elia@big.com",
password: "password",
password_confirmation: "password",
job_title:"Key Account Executive",
description:"I'm an Australian. And, yes the stereotype is true, I love drinking beer. For the last seven years I've worked as an advertising creative. First as a copywriter, then a creative director. I really enjoy solving big, hairy problems. And I've had a bit of success coming up with these kinds of ideas. I've including representing Australia 3 times in the Cannes Young Lions competition (winning silver and gold) and being flown to Montreal to pitch an idea to Richard Branson. But my day-to-day work isn't this *this* kind of work. But I want it to be. So I guess what I'm saying — in a really roundabout way — is that I want to learn to code to build my own ideas and spend my time, effort, and tears working on juicy, worthwhile problems.",
department:"Sales",
is_manager: false,
location:"Paris",
photo: File.open(Rails.root.join("db/fixtures/users/elia.jpg"))
},
{
first_name:"Jacob",
last_name:"Bodden",
email: "jacob@big.com",
password: "password",
password_confirmation: "password",
job_title:"Financial Analyst",
description:"Former corp. buyer, lived & worked in Latin America, US, Middle East and Europe, curious to learn about tech and looking to change career path by learning to code!",
department:"Finance",
is_manager: false,
location:"London",
photo: File.open(Rails.root.join("db/fixtures/users/jacob.jpg"))
}
]

puts "Creating Users..."
users = User.create!(user_hash)

user_skills_hash =
[
{
user: users[1],
skill: skills[0]
},
{
user: users[1],
skill: skills[2]
},
{
user: users[1],
skill: skills[4]
},
{
user: users[1],
skill: skills[10]
},
{
user: users[1],
skill: skills[16]
},
{
user: users[1],
skill: skills[26]
},
{
user: users[1],
skill: skills[30]
},
{
user: users[1],
skill: skills[32]
},
{
user: users[1],
skill: skills[33]
},
{
user: users[1],
skill: skills[35]
},
{
user: users[1],
skill: skills[39]
},
{
user: users[1],
skill: skills[40]
},
{
user: users[2],
skill: skills[6]
},
{
user: users[2],
skill: skills[8]
},
{
user: users[2],
skill: skills[11]
},
{
user: users[2],
skill: skills[12]
},
{
user: users[2],
skill: skills[13]
},
{
user: users[2],
skill: skills[23]
},
{
user: users[2],
skill: skills[26]
},
{
user: users[2],
skill: skills[29]
},
{
user: users[2],
skill: skills[36]
},
{
user: users[2],
skill: skills[38]
},
{
user: users[2],
skill: skills[42]
},
{
user: users[3],
skill: skills[1]
},
{
user: users[3],
skill: skills[2]
},
{
user: users[3],
skill: skills[4]
},
{
user: users[3],
skill: skills[5]
},
{
user: users[3],
skill: skills[17]
},
{
user: users[3],
skill: skills[24]
},
{
user: users[3],
skill: skills[26]
},
{
user: users[3],
skill: skills[28]
},
 {
user: users[3],
skill: skills[33]
},
{
user: users[3],
skill: skills[34]
},
{
user: users[3],
skill: skills[35]
},
{
user: users[4],
skill: skills[0]
},
{
user: users[4],
skill: skills[3]
},
{
user: users[4],
skill: skills[10]
},
{
user: users[4],
skill: skills[14]
},
{
user: users[4],
skill: skills[15]
},
{
user: users[4],
skill: skills[24]
},
{
user: users[4],
skill: skills[25]
},
{
user: users[4],
skill: skills[27]
},
{
user: users[4],
skill: skills[33]
},
{
user: users[4],
skill: skills[34]
},
{
user: users[4],
skill: skills[35]
},
{
user: users[4],
skill: skills[37]
},
{
user: users[5],
skill: skills[16]
},
{
user: users[5],
skill: skills[17]
},
{
user: users[5],
skill: skills[18]
},
{
user: users[5],
skill: skills[21]
},
{
user: users[5],
skill: skills[22]
},
{
user: users[5],
skill: skills[30]
},
{
user: users[5],
skill: skills[31]
},
{
user: users[5],
skill: skills[32]
},
{
user: users[5],
skill: skills[36]
},
{
user: users[5],
skill: skills[37]
},
{
user: users[5],
skill: skills[40]
},
{
user: users[5],
skill: skills[42]
},
{
user: users[6],
skill: skills[6]
},
{
user: users[6],
skill: skills[8]
},
{
user: users[6],
skill: skills[10]
},
{
user: users[6],
skill: skills[11]
},
{
user: users[6],
skill: skills[12]
},
{
user: users[6],
skill: skills[23]
},
{
user: users[6],
skill: skills[24]
},
{
user: users[6],
skill: skills[26]
},
{
user: users[6],
skill: skills[33]
},
{
user: users[6],
skill: skills[35]
},
{
user: users[6],
skill: skills[39]
},
{
user: users[7],
skill: skills[1]
},
{
user: users[7],
skill: skills[2]
},
{
user: users[7],
skill: skills[3]
},
{
user: users[7],
skill: skills[16]
},
{
user: users[7],
skill: skills[17]
},
{
user: users[7],
skill: skills[26]
},
{
user: users[7],
skill: skills[28]
},
{
user: users[7],
skill: skills[29]
},
{
user: users[7],
skill: skills[33]
},
{
user: users[7],
skill: skills[34]
},
{
user: users[7],
skill: skills[38]
},
{
user: users[7],
skill: skills[39]
},
{
user: users[8],
skill: skills[4]
},
{
user: users[8],
skill: skills[5]
},
{
user: users[8],
skill: skills[6]
},
{
user: users[8],
skill: skills[16]
},
{
user: users[8],
skill: skills[17]
},
{
user: users[8],
skill: skills[23]
},
{
user: users[8],
skill: skills[24]
},
{
user: users[8],
skill: skills[30]
},
{
user: users[8],
skill: skills[35]
},
{
user: users[8],
skill: skills[37]
},
{
user: users[8],
skill: skills[41]
},
{
user: users[9],
skill: skills[7]
},
{
user: users[9],
skill: skills[10]
},
{
user: users[9],
skill: skills[14]
},
{
user: users[9],
skill: skills[15]
},
{
user: users[9],
skill: skills[22]
},
{
user: users[9],
skill: skills[28]
},
{
user: users[9],
skill: skills[30]
},
{
user: users[9],
skill: skills[31]
},
{
user: users[9],
skill: skills[34]
},
{
user: users[9],
skill: skills[38]
},
{
user: users[9],
skill: skills[42]
},
{
user: users[10],
skill: skills[0]
},
{
user: users[10],
skill: skills[1]
},
{
user: users[10],
skill: skills[3]
},
{
user: users[10],
skill: skills[6]
},
{
user: users[10],
skill: skills[17]
},
{
user: users[10],
skill: skills[23]
},
{
user: users[10],
skill: skills[27]
},
{
user: users[10],
skill: skills[29]
},
{
user: users[10],
skill: skills[39]
},
{
user: users[10],
skill: skills[40]
},
{
user: users[10],
skill: skills[41]
},
{
user: users[11],
skill: skills[7]
},
{
user: users[11],
skill: skills[8]
},
{
user: users[11],
skill: skills[10]
},
{
user: users[11],
skill: skills[13]
},
{
user: users[11],
skill: skills[17]
},
{
user: users[11],
skill: skills[23]
},
{
user: users[11],
skill: skills[24]
},
{
user: users[11],
skill: skills[25]
},
{
user: users[11],
skill: skills[34]
},
{
user: users[11],
skill: skills[35]
},
{
user: users[11],
skill: skills[39]
},
{
user: users[12],
skill: skills[7]
},
{
user: users[12],
skill: skills[8]
},
{
user: users[12],
skill: skills[10]
},
{
user: users[12],
skill: skills[11]
},
{
user: users[12],
skill: skills[12]
},
{
user: users[12],
skill: skills[26]
},
{
user: users[12],
skill: skills[28]
},
{
user: users[12],
skill: skills[29]
},
{
user: users[12],
skill: skills[33]
},
{
user: users[12],
skill: skills[34]
},
{
user: users[12],
skill: skills[35]
},
{
user: users[13],
skill: skills[2]
},
{
user: users[13],
skill: skills[4]
},
{
user: users[13],
skill: skills[6]
},
{
user: users[13],
skill: skills[14]
},
{
user: users[13],
skill: skills[15]
},
{
user: users[13],
skill: skills[24]
},
 {
user: users[13],
skill: skills[30]
},
{
user: users[13],
skill: skills[31]
},
{
user: users[13],
skill: skills[35]
},
{
user: users[13],
skill: skills[40]
},
{
user: users[13],
skill: skills[41]
},
{
user: users[14],
skill: skills[0]
},
{
user: users[14],
skill: skills[3]
},
{
user: users[14],
skill: skills[14]
},
{
user: users[14],
skill: skills[15]
},
{
user: users[14],
skill: skills[16]
},
{
user: users[14],
skill: skills[24]
},
{
user: users[14],
skill: skills[30]
},
{
user: users[14],
skill: skills[31]
},
{
user: users[14],
skill: skills[35]
},
{
user: users[14],
skill: skills[38]
},
{
user: users[14],
skill: skills[42]
},
{
user: users[15],
skill: skills[7]
},
{
user: users[15],
skill: skills[8]
},
{
user: users[15],
skill: skills[10]
},
{
user: users[15],
skill: skills[11]
},
{
user: users[15],
skill: skills[13]
},
{
user: users[15],
skill: skills[23]
},
{
user: users[15],
skill: skills[28]
},
{
user: users[15],
skill: skills[29]
},
{
user: users[15],
skill: skills[33]
},
{
user: users[15],
skill: skills[37]
},
{
user: users[15],
skill: skills[38]
},
{
user: users[16],
skill: skills[18]
},
{
user: users[16],
skill: skills[19]
},
{
user: users[16],
skill: skills[20]
},
{
user: users[16],
skill: skills[21]
},
{
user: users[16],
skill: skills[22]
},
{
user: users[16],
skill: skills[28]
},
{
user: users[16],
skill: skills[31]
},
{
user: users[16],
skill: skills[32]
},
{
user: users[16],
skill: skills[33]
},
{
user: users[16],
skill: skills[36]
},
{
user: users[16],
skill: skills[37]
},
{
user: users[17],
skill: skills[8]
},
{
user: users[17],
skill: skills[11]
},
{
user: users[17],
skill: skills[12]
},
{
user: users[17],
skill: skills[13]
},
{
user: users[17],
skill: skills[22]
},
{
user: users[17],
skill: skills[28]
},
{
user: users[17],
skill: skills[29]
},
{
user: users[17],
skill: skills[31]
},
{
user: users[17],
skill: skills[34]
},
{
user: users[17],
skill: skills[36]
},
{
user: users[17],
skill: skills[42]
},
{
user: users[18],
skill: skills[7]
},
{
user: users[18],
skill: skills[10]
},
{
user: users[18],
skill: skills[18]
},
{
user: users[18],
skill: skills[19]
},
{
user: users[18],
skill: skills[22]
},
{
user: users[18],
skill: skills[25]
},
{
user: users[18],
skill: skills[26]
},
{
user: users[18],
skill: skills[31]
},
{
user: users[18],
skill: skills[34]
},
{
user: users[18],
skill: skills[36]
},
{
user: users[18],
skill: skills[39]
},
{
user: users[19],
skill: skills[1]
},
{
user: users[19],
skill: skills[2]
},
{
user: users[19],
skill: skills[4]
},
{
user: users[19],
skill: skills[5]
},
{
user: users[19],
skill: skills[15]
},
{
user: users[19],
skill: skills[30]
},
{
user: users[19],
skill: skills[31]
},
{
user: users[19],
skill: skills[32]
},
{
user: users[19],
skill: skills[35]
},
{
user: users[19],
skill: skills[38]
},
{
user: users[19],
skill: skills[39]
},
{
user: users[19],
skill: skills[40]
},
{
user: users[20],
skill: skills[0]
},
{
user: users[20],
skill: skills[3]
},
{
user: users[20],
skill: skills[14]
},
{
user: users[20],
skill: skills[17]
},
{
user: users[20],
skill: skills[24]
},
{
user: users[20],
skill: skills[25]
},
{
user: users[20],
skill: skills[27]
},
{
user: users[20],
skill: skills[33]
},
{
user: users[20],
skill: skills[37]
},
{
user: users[20],
skill: skills[38]
},
{
user: users[21],
skill: skills[16]
},
{
user: users[21],
skill: skills[18]
},
{
user: users[21],
skill: skills[20]
},
{
user: users[21],
skill: skills[21]
},
{
user: users[21],
skill: skills[22]
},
{
user: users[21],
skill: skills[28]
},
{
user: users[21],
skill: skills[30]
},
{
user: users[21],
skill: skills[32]
},
{
user: users[21],
skill: skills[35]
},
{
user: users[21],
skill: skills[37]
},
{
user: users[21],
skill: skills[40]
},
{
user: users[22],
skill: skills[3]
},
{
user: users[22],
skill: skills[7]
},
{
user: users[22],
skill: skills[14]
},
{
user: users[22],
skill: skills[15]
},
{
user: users[22],
skill: skills[17]
},
{
user: users[22],
skill: skills[25]
},
{
user: users[22],
skill: skills[27]
},
{
user: users[22],
skill: skills[29]
},
{
user: users[22],
skill: skills[33]
},
{
user: users[22],
skill: skills[39]
},
{
user: users[22],
skill: skills[41]
},
{
user: users[23],
skill: skills[6]
},
{
user: users[23],
skill: skills[8]
},
{
user: users[23],
skill: skills[11]
},
{
user: users[23],
skill: skills[12]
},
{
user: users[23],
skill: skills[13]
},
{
user: users[23],
skill: skills[23]
},
{
user: users[23],
skill: skills[24]
},
{
user: users[23],
skill: skills[25]
},
{
user: users[23],
skill: skills[37]
},
{
user: users[23],
skill: skills[38]
},
{
user: users[23],
skill: skills[39]
},
{
user: users[24],
skill: skills[17]
},
{
user: users[24],
skill: skills[18]
},
{
user: users[24],
skill: skills[19]
},
{
user: users[24],
skill: skills[20]
},
{
user: users[24],
skill: skills[22]
},
{
user: users[24],
skill: skills[25]
},
{
user: users[24],
skill: skills[26]
},
{
user: users[24],
skill: skills[28]
},
{
user: users[24],
skill: skills[33]
},
{
user: users[24],
skill: skills[36]
},
{
user: users[24],
skill: skills[38]
},
{
user: users[24],
skill: skills[39]
},
]

puts "Creating User Skills..."
user_skills = UserSkill.create(user_skills_hash)

develop_skills_hash =
[
{
user: users[1],
skill: skills[1]
},
{
user: users[1],
skill: skills[27]
},
{
user: users[1],
skill: skills[31]
},
{
user: users[2],
skill: skills[10]
},
{
user: users[2],
skill: skills[14]
},
{
user: users[2],
skill: skills[15]
},
{
user: users[3],
skill: skills[6]
},
{
user: users[3],
skill: skills[25]
},
{
user: users[3],
skill: skills[31]
},
{
user: users[4],
skill: skills[2]
},
{
user: users[4],
skill: skills[6]
},
{
user: users[4],
skill: skills[16]
},
{
user: users[4],
skill: skills[17]
},
{
user: users[4],
skill: skills[26]
},
{
user: users[4],
skill: skills[31]
},
{
user: users[5],
skill: skills[14]
},
{
user: users[5],
skill: skills[15]
},
{
user: users[5],
skill: skills[27]
},
{
user: users[6],
skill: skills[13]
},
{
user: users[6],
skill: skills[17]
},
{
user: users[6],
skill: skills[31]
},
{
user: users[7],
skill: skills[4]
},
{
user: users[7],
skill: skills[5]
},
{
user: users[7],
skill: skills[27]
},
{
user: users[8],
skill: skills[1]
},
{
user: users[8],
skill: skills[26]
},
{
user: users[8],
skill: skills[31]
},
{
user: users[9],
skill: skills[8]
},
{
user: users[9],
skill: skills[11]
},
{
user: users[9],
skill: skills[23]
},
{
user: users[9],
skill: skills[29]
},
{
user: users[10],
skill: skills[5]
},
{
user: users[10],
skill: skills[10]
},
{
user: users[10],
skill: skills[16]
},
{
user: users[10],
skill: skills[24]
},
{
user: users[10],
skill: skills[31]
},
{
user: users[11],
skill: skills[6]
},
{
user: users[11],
skill: skills[26]
},
{
user: users[11],
skill: skills[30]
},
{
user: users[11],
skill: skills[31]
},
{
user: users[12],
skill: skills[6]
},
{
user: users[12],
skill: skills[14]
},
{
user: users[12],
skill: skills[17]
},
{
user: users[12],
skill: skills[31]
},
{
user: users[12],
skill: skills[32]
},
{
user: users[13],
skill: skills[0]
},
{
user: users[13],
skill: skills[1]
},
{
user: users[13],
skill: skills[5]
},
{
user: users[14],
skill: skills[4]
},
{
user: users[14],
skill: skills[5]
},
{
user: users[14],
skill: skills[6]
},
{
user: users[14],
skill: skills[23]
},
{
user: users[14],
skill: skills[28]
},
{
user: users[15],
skill: skills[6]
},
{
user: users[15],
skill: skills[30]
},
{
user: users[15],
skill: skills[31]
},
{
user: users[16],
skill: skills[4]
},
{
user: users[16],
skill: skills[13]
},
{
user: users[16],
skill: skills[17]
},
{
user: users[16],
skill: skills[24]
},
{
user: users[16],
skill: skills[29]
},
{
user: users[17],
skill: skills[18]
},
{
user: users[17],
skill: skills[23]
},
{
user: users[17],
skill: skills[30]
},
{
user: users[17],
skill: skills[32]
},
{
user: users[18],
skill: skills[14]
},
{
user: users[18],
skill: skills[15]
},
{
user: users[18],
skill: skills[17]
},
{
user: users[18],
skill: skills[27]
},
{
user: users[19],
skill: skills[3]
},
{
user: users[19],
skill: skills[10]
},
{
user: users[19],
skill: skills[16]
},
{
user: users[19],
skill: skills[27]
},
{
user: users[20],
skill: skills[7]
},
{
user: users[20],
skill: skills[15]
},
{
user: users[20],
skill: skills[22]
},
{
user: users[20],
skill: skills[26]
},
{
user: users[21],
skill: skills[11]
},
{
user: users[21],
skill: skills[17]
},
{
user: users[21],
skill: skills[23]
},
{
user: users[21],
skill: skills[26]
},
{
user: users[22],
skill: skills[2]
},
{
user: users[22],
skill: skills[6]
},
{
user: users[22],
skill: skills[24]
},
{
user: users[22],
skill: skills[32]
},
{
user: users[23],
skill: skills[14]
},
{
user: users[23],
skill: skills[15]
},
{
user: users[23],
skill: skills[31]
},
{
user: users[24],
skill: skills[13]
},
{
user: users[24],
skill: skills[24]
},
{
user: users[24],
skill: skills[30]
},
{
user: users[24],
skill: skills[31]
}
]

puts "Creating Develop Skills..."
develop_skills = DevelopSkill.create(develop_skills_hash)

vacancies_hash =
[
{
title: "Brand Manager",
description:"<ul>
  <li>Develop and execute seasonal and category marketing programs,</li>
  <li>Engage with the consumer by category to ensure targeted programs are driving brand strategies with the consumer. Adopt, enrich and creatively execute and/or support global category strategy within local markets,</li>
  <li>Partner across internal teams (sports marketing, event marketing, retail brand marketing, etc.) to ensure programs are executed per category brand direction,</li>
  <li>Lead category marketing programs to achieve defined Go to Market goals</li>
  <li>Track and evaluate the Marketing impact,</li>
  <li>Manage timelines and budget.</li>
</ul>
",
department: "Marketing",
start_date: Date.parse("01/07/2019"),
location: "Tokyo",
user: users[1],
photo: File.open(Rails.root.join("db/fixtures/jobs/brand_manager.jpg"))
},
{
title: "Data Analyst",
description:"<ul>
  <li>Interpret data, analyze results using statistical techniques and provide ongoing reports,</li>
  <li>Develop and implement databases, data collection systems, data analytics and other strategies that optimize statistical efficiency and quality,</li>
  <li>Acquire data from primary or secondary data sources and maintain databases/data systems,</li>
  <li>Identify, analyze, and interpret trends or patterns in complex data sets,</li>
  <li>Filter and “clean” data by reviewing computer reports, printouts, and performance indicators to locate and correct code problems,</li>
  <li>Work with management to prioritize business and information needs,</li>
  <li>Locate and define new process improvement opportunities.</li>
</ul>",
department: "IT",
start_date: Date.parse("29/07/2019"),
location: "Brisbane",
user: users[2],
photo: File.open(Rails.root.join("db/fixtures/jobs/data_analyst.jpg"))
},
{
title: "Front-end Developer",
description:"<ul>
  <li>Use markup languages like HTML to create user-friendly web pages,</li>
  <li>Maintain and improve website,</li>
  <li>Optimize applications for maximum speed,</li>
  <li>Design mobile-based features,</li>
  <li>Collaborate with back-end developers and web designers to improve usability,</li>
  <li>Get feedback from, and build solutions for, users and customers,</li>
  <li>Write functional requirement documents and guides,</li>
  <li>Create quality mockups and prototypes,</li>
  <li>Help back-end developers with coding and troubleshooting,</li>
  <li>Ensure high quality graphic standards and brand consistency,</li>
  <li>Stay up-to-date on emerging technologies.</li>
</ul>",
department: "IT",
start_date: Date.parse("17/06/2019"),
location: "Amsterdam",
user: users[3],
photo: File.open(Rails.root.join("db/fixtures/jobs/front_end_developer.jpg"))
},
{
title: "UX Designer",
description:"<ul>
  <li>Gather and evaluate user requirements in collaboration with product managers and engineers,</li>
  <li>Illustrate design ideas using storyboards, process flows and sitemaps,</li>
  <li>Design graphic user interface elements, like menus, tabs and widgets,</li>
  <li>Build page navigation buttons and search fields,</li>
  <li>Develop UI mockups and prototypes that clearly illustrate how sites function and look like,</li>
  <li>Create original graphic designs (e.g. images, sketches and tables),</li>
  <li>Prepare and present rough drafts to internal teams and key stakeholders,</li>
  <li>Identify and troubleshoot UX problems (e.g. responsiveness),</li>
  <li>Conduct layout adjustments based on user feedback,</li>
  <li>Adhere to style standards on fonts, colors and images.</li>
</ul>",
department: "IT",
start_date: Date.parse("19/08/2019"),
location: "Barcelona",
user: users[5],
photo: File.open(Rails.root.join("db/fixtures/jobs/ux_designer_1.jpg"))
}
]
puts "Creating Jobs..."
vacancies = Vacancy.create!(vacancies_hash)

vacancy_skills_hash =
[
{
vacancy: vacancies[0],
skill: skills[14]
},
{
vacancy: vacancies[0],
skill: skills[15]
},
{
vacancy: vacancies[0],
skill: skills[31]
},
{
vacancy: vacancies[0],
skill: skills[33]
},
{
vacancy: vacancies[0],
skill: skills[37]
},
{
vacancy: vacancies[0],
skill: skills[38]
},
{
vacancy: vacancies[0],
skill: skills[39]
},
{
vacancy: vacancies[1],
skill: skills[2]
},
{
vacancy: vacancies[1],
skill: skills[6]
},{
vacancy: vacancies[1],
skill: skills[10]
},{
vacancy: vacancies[1],
skill: skills[15]
},{
vacancy: vacancies[1],
skill: skills[16]
},{
vacancy: vacancies[1],
skill: skills[30]
},{
vacancy: vacancies[2],
skill: skills[0]
},{
vacancy: vacancies[2],
skill: skills[3]
},{
vacancy: vacancies[2],
skill: skills[7]
},{
vacancy: vacancies[2],
skill: skills[17]
},{
vacancy: vacancies[2],
skill: skills[27]
},{
vacancy: vacancies[2],
skill: skills[31]
},{
vacancy: vacancies[2],
skill: skills[33]
},{
vacancy: vacancies[2],
skill: skills[35]
},{
vacancy: vacancies[2],
skill: skills[37]
},{
vacancy: vacancies[3],
skill: skills[3]
},{
vacancy: vacancies[3],
skill: skills[6]
},{
vacancy: vacancies[3],
skill: skills[33]
},{
vacancy: vacancies[3],
skill: skills[34]
},
{
vacancy: vacancies[3],
skill: skills[35]
},{
vacancy: vacancies[3],
skill: skills[37]
},
{
vacancy: vacancies[3],
skill: skills[26]
},{
vacancy: vacancies[3],
skill: skills[27]
}
]

vacancy_skills = VacancySkill.create(vacancy_skills_hash)

vacancy_preferred_skills_hash = [

{
vacancy: vacancies[0],
skill: skills[16]
},
{
vacancy: vacancies[0],
skill: skills[17]
},
{
vacancy: vacancies[0],
skill: skills[26]
},

{
vacancy: vacancies[1],
skill: skills[25]
},
{
vacancy: vacancies[1],
skill: skills[26]
},
{
vacancy: vacancies[2],
skill: skills[24]
},{
vacancy: vacancies[2],
skill: skills[25]
},
{
vacancy: vacancies[3],
skill: skills[7]
},{
vacancy: vacancies[3],
skill: skills[14]
},{
vacancy: vacancies[3],
skill: skills[17]
}, {
vacancy: vacancies[3],
skill: skills[31]
}




]

vacancy_preferred_skills = PreferredSkill.create(vacancy_preferred_skills_hash)

puts "creating conversations..."

conversation_hash = [
{
  sender: users[1],
  recipient: users[10],
  accepted: true
},{
  sender: users[2],
  recipient: users[10],
  accepted: true
},{
  sender: users[3],
  recipient: users[10],
  accepted: true
}
]

conversations = Conversation.create!(conversation_hash)

puts "creating messages..."

message_hash = [
{
  body: "Hi Tecia, are you interested in having a chat regarding the position?",
  user: users[1],
  conversation: conversations[0]
},{
  body: "Hi Axel, thanks for getting in touch. I'd be interested to find out more about the position.",
  user: users[10],
  conversation: conversations[0]
},{
  body: "Great, I'll send you through a detailed description. Have a read of that and then perhaps we could grab a coffee and discuss?",
  user: users[1],
  conversation: conversations[0]
},{
  body: "Sounds perfect!",
  user: users[10],
  conversation: conversations[0]
},{
  body: "Hey Tecia, how are you? It's been a long time! I have you in mind for this position that's just come up, take a look :)",
  user: users[2],
  conversation: conversations[1]
},{
  body: "Alex! Yes has been way to long, good to here from you! I'm good thanks. Ok that sounds interesting...",
  user: users[10],
  conversation: conversations[1]
},{
  body: "It's a maternity cover so would only be for 6 months but I think it would be the perfect stepping stone for you.",
  user: users[2],
  conversation: conversations[1]
},{
  body: "I'm gonna have to think it over for a while as I'm not 100% sure if I want to move departments at this time.",
  user: users[10],
  conversation: conversations[1]
},{
  body: "Ok no problem at all, please just give me a shout in the next couple of days when you've had a chance to think it over.",
  user: users[2],
  conversation: conversations[1]
},{
  body: "Will do, Alex. All the best.",
  user: users[10],
  conversation: conversations[1]
},{
  body: "Hi Edward, are you interested in having a chat regarding this role?",
  user: users[10],
  conversation: conversations[2]
},{
  body: "Hi Tecia, nah not really.",
  user: users[3],
  conversation: conversations[2]
},
]

Message.create!(message_hash)
