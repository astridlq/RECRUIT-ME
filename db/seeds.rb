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
name: "Have shown visionnary thinking"
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

user_hash =
[
{
first_name:"",
last_name:"",
email: "example@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "passwordpassword",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
{
first_name:"",
last_name:"",
email: "@big.com",
password: "password",
password_confirmation: "password",
job_title:"",
description:"",
department:"",
is_manager: false,
location:"",
},
]






