# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
alumnis = Alumni.create([{ first_name: 'Yonghwan', middle_name: '', last_name: 'Kim', 
                        email: 'ykim@tamu.edu', phone_number: '123-456-789'},
                        { first_name: 'Cyrus', middle_name: '', last_name: 'Buhariwala', 
                        email: 'cwaluigi@tamu.edu', phone_number: '123-456-788'}])

mentors = Mentor.create([{ first_name: 'Nick', middle_name: 'S', last_name: 'Cheng', 
                        email: 'ncheng@tamu.edu', phone_number: '111-456-789'},
                        { first_name: 'Pauline', middle_name: 'Mystery', last_name: 'Wade', 
                        email: 'pwade@tamu.edu', phone_number: '123-777-788'}])

mentees = Mentee.create([{ first_name: 'Sami', middle_name: '', last_name: 'Amin', 
                        email: 'samin@tamu.edu', phone_number: '111-123-789'},
                        { first_name: 'Laura', middle_name: '', last_name: 'Roots', 
                        email: 'lroots@tamu.edu', phone_number: '123-102-788'}])

alumni_assignments = AlumniAssignment.create([{Alumni_id: 1, Mentor_id: 1}, {Alumni_id: 2, Mentor_id: 2}])

mentor_assignments = MentorAssignment.create([{Mentor_id: 1, Mentee_id: 1}, {Mentor_id: 2, Mentee_id: 2}])