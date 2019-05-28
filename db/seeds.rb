# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Skill.destroy_all
DevelopSkill.destroy_all
User.destroy_all
Vacancy.destroy_all
VacancySkill.destroy_all
Message.destroy_all
Conversation.destroy_all

puts "Creating shit"

skill_hash = [
{
name: "Front-end Development"
description: "The practice of producing HTML, CSS and JavaScript for a website or Web Application so that a user can see and interact with them directly."
type: "hard"
photo:
}, {
name: "Back-end Web Development"
description: "Backend development languages handle the ‘behind-the-scenes’ functionality of web applications. It’s code that connects the web to a database, manages user connections, and powers the web application itself."
type: "hard"
photo:
}, {
name: "Database Management"
description: "Managing databases using management software and SQL"
type: "hard"
photo:
}, {
name: "UI & UX Design"
description: "User experience (UX) design is the process of creating products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability, and function."
type: "hard"
photo:
}, {
name: "Cloud Computing"
description: "using a network of remote servers hosted on the Internet to store, manage, and process data"
type: "hard"
photo:
}, {
name: "AI & Machine Learning"
description: "The theory and development of computer systems able to perform tasks normally requiring human intelligence, such as visual perception, speech recognition, decision-making, and translation between languages"
type: "hard"
photo:
}, {
name: "Data Analysis"
description: "Inspecting, cleansing, transforming, and modeling data with the goal of discovering useful information, informing conclusions, and supporting decision-making."
type: "hard"
photo:
}, {
name: "Product Knowledge"
description: "Product knowledge is an essential sales skill. Understanding your products' features allows you to present their benefits accurately and persuasively. Customers respond to enthusiastic sales staff who are passionate about their products and eager to share the benefits with them"
type: "hard"
photo:
}, {
name: "Rapport Building on the Cold Call"
description: "A technique in which a salesperson contacts individuals who have not previously expressed interest in the offered products or services."
type: "hard"
photo:
}, {
name: "Planning and organizational skills"
description: "Creating and keeping deadlines, delegation, goal setting and meeting goals, decision making, managing appointments, team management, project management, making schedules."
type: "hard"
photo:
}, {
name: "Closing Techniques"
description: "One of the most important stages of selling is closing the deal, which is the actions taken by the sales person to gain agreement to the sale."
type: "hard"
photo:
}, {
name: "Post-Sale Relationship Management"
description: "Relationship management involves strategies to build client support for a business and its offerings, and increase brand loyalty. "
type: "hard"
photo:
}, {
name: "Demo Skills"
description: "Demonstrate or explain products, methods, or services to persuade customers to purchase products or use services."
type: "hard"
photo:
}, {
name: "Consumer relevance and market knowledge"
description: "Market knowledge is to know about the various aspects associated with the business one is offering to the market. It includes detail study about the primary and secondary activities that a company can include in its core activities so that value can be delivered to the market."
type: "hard"
photo:
}, {
name: "Strategic planning and Global thinking"
description: "Strategic planning is an organizational management activity that is used to set priorities, focus energy and resources, strengthen operations, ensure that employees and other stakeholders are working toward common goals, establish agreement around intended outcomes/results, and assess and adjust the organization's direction in response to a changing environment."
type: "hard"
photo:
}, {
name: "Results oriented"
description: "An individual that focuses on outcome rather than process used to produce a product or deliver a service."
type: "hard"
photo:
}, {
name: "Initiative and communication"
description: "A great leader not only has initiative as an individual character trait, but also coaches his or her team or organization in a manner that creates and encourages initiative from all team members."
type: "hard"
photo:
}, {
name: "Financial planning"
description: "The process of estimating the capital required and determining it’s competition. It is the process of framing financial policies in relation to procurement, investment and administration of funds of an enterprise."
type: "hard"
photo:
}, {
name: "Financial reporting"
description: "Financial reporting is the disclosure of financial results and related information to management and external stakeholders (e.g., investors, customers, regulators) about how a company is performing over a specific period of time."
type: "hard"
photo:
}, {
name: "Auditing and compliance knowledge"
description: "A compliance audit is a comprehensive review of an organization's adherence to regulatory guidelines. Audit reports evaluate the strength and thoroughness of compliance preparations, security policies, user access controls and risk management procedures over the course of a compliance audit."
type: "hard"
photo:
}, {
name: "Accounting qualified"
description: "The AAT qualification is the minimal level of qualification required for most kinds of accountancy."
type: "hard"
photo:
}, {
name: "Commercial awareness"
description: "Staying up-to-date on daily happenings and developments in the business and commercial world."
type: "hard"
photo:
}, {
name: "communication"
description: "Clarity, confidence, respect, empathy, listening, (non-)verbal communication, written communication, constructive feedback, friendliness"
type: "soft"
photo:
}, {
name: "Adaptability"
description: "Curiosity, self-management, decision-making, calmness, optimism, open-mindedness, self-confidence, self-motivation"
type: "soft"
photo:
}, {
name: "Problem-Solving & decision making"
description: "Lateral thinking, logical reasoning, initiative, persistence, observation, persuasion, brainstorming"
type: "soft"
photo:
}, {
name: "Creativity"
description: "Divergent thinking, inspiration, imagination, design, innovation, experimenting"
type: "soft"
photo:
}, {
name: "Work Ethic"
description:
type: "Integrity, responsibility, discipline, commitment, self-motivated, professionalism"
photo:
}, {
name: "Interpersonal Skills"
description: "Empathy, humor, mentoring, networking, sensitivity, patience, tolerance, public speaking, positive reinforcement, diplomacy"
type: "soft"
photo:
}, {
name: "Time Management"
description: "Goal setting, prioritizing, self-starter, planning, delegation, stress management, organization"
type: "soft"
photo:
}, {
name: "Leadership"
description: "Empathy, selflessness, agility, listening, humility, cultural intelligence, authenticity, versatility, generosity, trust"
type: "soft"
photo:
}, {
name: "Attention to Detail"
description: "Critical observation, listening, introspection, memory, acuity, questioning"
type: "soft"
photo:
}, {
name: "Worked with agencies / external partners"
description:
type: "experience"
photo:
}, {
name: "Territory experience"
description:
type: "experience"
photo:
}, {
name: "3+ years experience"
description:
type: "experience"
photo:
}, {
name: "5+ years experience"
description:
type: "experience"
photo:
}, {
name: "Managed end-to-end projects"
description:
type: "experience"
photo:
}, {
name: "Have shown visionary thinking"
description:
type: "experience"
photo:
}, {
name: "Worked in a multicultural environment"
description:
type: "experience"
photo:
}, {
name: "Expanded technical capability significantly"
description:
type: "experience"
photo:
}, {
name: "Worked on out-of-expertise projects"
description:
type: "experience"
photo:
}, {
name: "Managed a team"
description:
type: "experience"
photo:
}
]

puts "Creating Skills..."
users = Skill.create!(skill_hash)


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
},
{
first_name:"Astrid",
last_name:"Le Quéré",
email: "astrid@big.com",
password: "password",
password_confirmation: "password",
job_title:"UX Design Specialist",
description:"I got a Master's degree in Digital Marketing in France, also spending some time in Canada, in the Netherlands and Hong-Kong.
After a 8-month solo road-trip in Asia, I started working in Digital Sales.
But my passion is in design. I thus decided to join Le Wagon to get better tech knowledge and eventually change career in Front-end / UX",
department:"IT",
is_manager: false,
location:"Amsterdam",
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
},
{
first_name:"Edvar",
last_name:"ter Haar",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"Data Analyst",
description:"Ex-finance, ex-marine biologist getting back to his computing roots, interested in cloud computing and networks. Lives in Amsterdam, world citizen",
department:"IT",
is_manager: false,
location:"London",
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
},
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
user: users[1],
skill: skills[39]
},
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
skill: skills[23]
},
{
user: users[8],
skill: skills[29]
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


