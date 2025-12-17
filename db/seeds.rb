puts "🌱 Seeding database..."

# Clear old data (in correct order to avoid foreign key issues)
ActiveStorage::Attachment.destroy_all
ActiveStorage::Blob.destroy_all
Contact.destroy_all
Project.destroy_all
Education.destroy_all
Service.destroy_all
Skill.destroy_all
Home.destroy_all
About.destroy_all

# 1️⃣ Home Section
home = Home.create!(
  name: "Ram Kushwah",
  title: "Full Stack Developer",
  subtitle: "Building modern, scalable web apps with Ruby on Rails and React",
  description: "Welcome to my portfolio backend! I'm Mohit Kumravat, a passionate Full Stack Developer specializing in Ruby on Rails and React. With over 2 years of experience, I create robust web applications that solve real-world problems. Explore my services, skills, and projects to see how I can help bring your ideas to life."
)
puts "✅ Home section created"

# 2️⃣ About Section
about = About.create!(
  name: "Mohit Kumravat",
  email: "mohitkumravat22@gmail.com",
  dob: "2002-05-10",
  location: "Indore, India",
  bio: "Full Stack Developer with 2+ years of hands-on experience in Ruby on Rails, ReactJS, and PostgreSQL. Passionate about solving real-world problems with clean code, scalable design, and modern DevOps practices. Enthusiastic about continuous learning, open-source collaboration, and cloud technologies.",
  experience: "2+ Years",
  availability: "Open for full-time and freelance opportunities"
)
puts "✅ About created"

# 3️⃣ Skills Section
skills = [
  { name: "Ruby on Rails", percentage: 90 },
  { name: "ReactJS", percentage: 85 },
  { name: "JavaScript (ES6+)", percentage: 80 },
  { name: "PostgreSQL", percentage: 85 },
  { name: "MySQL", percentage: 80 },
  { name: "HTML5 & CSS3", percentage: 88 },
  { name: "Bootstrap / Tailwind CSS", percentage: 82 },
  { name: "Docker & Kubernetes", percentage: 70 },
  { name: "AWS (EC2, S3, CloudFront)", percentage: 75 },
  { name: "CI/CD with GitHub Actions", percentage: 78 },
  { name: "RSpec / Capybara Testing", percentage: 70 },
  { name: "Agile & Scrum Methodology", percentage: 80 }
]
Skill.create!(skills)
puts "✅ Skills created"

# 4️⃣ Services Section
services = [
  {
    title: "Full Stack Web Application Development",
    description: "Building complete web applications from backend to frontend using Ruby on Rails and ReactJS. Ensuring responsive design, RESTful APIs, secure authentication, and high performance across the stack."
  },
  {
    title: "Custom API Development & Integration",
    description: "Designing and developing scalable REST APIs and integrating third-party services like Twilio (SMS), Stripe (Payments), and Google APIs (Calendar, Gmail) for enhanced functionality."
  },
  {
    title: "DevOps, Deployment & Automation",
    description: "Automating build, test, and deploy processes using Docker and GitHub Actions. Experienced in deploying and managing applications on AWS EC2, S3, and Heroku environments."
  },
  {
    title: "Database Architecture & Performance Tuning",
    description: "Designing normalized database schemas and writing optimized SQL queries. Managing migrations, indexing, and performance improvements in PostgreSQL and MySQL."
  },
  {
    title: "Frontend UI Development",
    description: "Developing responsive and user-friendly interfaces using ReactJS, Bootstrap, and Tailwind CSS. Focusing on clean layouts, accessibility, and interactive design for a better user experience."
  },
  {
    title: "Testing & Quality Assurance",
    description: "Implementing automated test suites using RSpec and Capybara to ensure reliable, bug-free, and maintainable applications before deployment."
  }
]
Service.create!(services)
puts "✅ Services created"


# 5️⃣ Education Section
educations = [
  {
    degree: "Bachelor of Computer Science",
    institution: "Swami Vivekanand College Of Engineering, Indore",
    year: "2019–2023",
    grade: "CGPA: 7.22"
  },
  {
    degree: "12th (PCM)",
    institution: "Saraswati Vidhya Mandir, Pipalrawan",
    year: "2018–2019",
    grade: "83.6%"
  },
  {
    degree: "10th",
    institution: "Saraswati Vidhya Mandir, Pipalrawan",
    year: "2016–2017",
    grade: "80.6%"
  }
]
Education.create!(educations)
puts "✅ Education created"

# 6️⃣ Projects Section
projects = [
  {
    title: "Business Payment & Transaction Platform",
    description: "Developed and maintained a full-stack payment solution enabling users to send, receive, and manage transactions securely. Implemented two-factor authentication, integrated Twilio for SMS alerts, and used Pusher for real-time transaction updates. Optimized ActiveRecord queries for high performance and ensured robust API design for scalability.",
    tech_stack: ["Ruby on Rails", "ReactJS", "PostgreSQL", "Twilio", "Pusher", "Active Storage", "AASM"].to_json,
    live_url: "https://example.com/payment-platform",
    github_url: "https://github.com/MKumravat7722/payment-platform"
  },
  {
    title: "Continuous Integration & Deployment Automation",
    description: "Set up CI/CD pipelines for multiple Rails applications using GitHub Actions and Docker. Implemented automated testing with RSpec and Capybara achieving 85% coverage. Configured staging and production workflows to deploy automatically on successful test runs using Heroku and AWS environments.",
    tech_stack: ["RSpec", "Capybara", "Docker", "GitHub Actions", "Heroku", "AWS EC2"].to_json,
    live_url: "https://example.com/ci-cd-pipeline",
    github_url: "https://github.com/MKumravat7722/ci-cd-pipeline"
  },
  {
    title: "Pet Care Management Platform",
    description: "Built backend APIs for a two-sided marketplace connecting pet owners and caregivers. Designed database schema with ActiveRecord relationships and implemented secure payment flow using Stripe API. Added authentication, authorization, and analytics dashboard for admin management.",
    tech_stack: ["Ruby on Rails", "PostgreSQL", "Stripe", "Devise", "ReactJS", "Chart.js"].to_json,
    live_url: "https://example.com/pet-platform",
    github_url: "https://github.com/MKumravat7722/pet-services"
  },
  {
    title: "Learning & Assessment Portal",
    description: "Created a web platform for managing online courses, assessments, and student progress. Developed APIs using Rails and built a custom admin dashboard with ActiveAdmin. Enabled progress tracking, automated certificate generation, and integrated rich text editor for instructors.",
    tech_stack: ["Ruby on Rails", "ActiveAdmin", "PostgreSQL", "JavaScript", "HTML/CSS"].to_json,
    live_url: "https://example.com/learning-platform",
    github_url: "https://github.com/MKumravat7722/learning-platform"
  },
  {
    title: "Portfolio & Profile Management App",
    description: "Developed a personal portfolio platform using Rails backend and React frontend. Implemented CRUD operations, image upload via Active Storage, and dynamic content rendering with Bootstrap and Tailwind CSS for responsive UI.",
    tech_stack: ["Ruby on Rails", "ReactJS", "Active Storage", "Bootstrap", "Tailwind CSS"].to_json,
    live_url: "https://example.com/portfolio",
    github_url: "https://github.com/MKumravat7722/portfolio"
  }
]
Project.create!(projects)
puts "✅ Projects created"

contacts = [
  { name: "John Doe", email: "john@example.com", message: "Hello, I’m interested in collaborating on a Ruby on Rails project." },
  { name: "Aisha Sharma", email: "aisha.sharma@example.com", message: "Can you help me build a portfolio website using React?" },
  { name: "Ravi Patel", email: "ravi.patel@example.com", message: "Looking for a backend developer for my startup idea." }
]
Contact.create!(contacts)
puts "✅ Contacts created"

puts "🌟 All data seeded successfully!"
