list_jobs = [
	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},
		{name: "Senior Full Stack Web Developer", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},
	{name: "Senior Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"},	{name: "Ruby On Rails", company: "HDWEBSOFT", description: "VietnamWorks.com is the #1 job board in Vietnam, now serving millions of unique visitors a month. This is a great opportunity to join a successful product team that is building one of the largest online services in Vietnam."},
	{name: "PHP", company: "GumiVietNam", description: "•	2+ years experience with PHP and SQL (including Symfony)
•	2+ years experience with HTML/CSS/Javascript and modern JS application stacks
•	2+ years experience architecting complex software systems
"}
]
# list_employee = [
# 	{name: "Gia Thang", email: "thangnguyen@gmail.com", password: '123123', password_confirmation: '123123', user_type: 'employee'},
# 	{name: "nguyen Thang", email: "thangnguyen1@gmail.com", password: '123123',password_confirmation: '123123', user_type: 'employee'},
# 	{name: "Gia Thang", email: "thangnguyen2@gmail.com", password: '123123', password_confirmation: '123123',user_type: 'employee'},
# 	{name: "Gia Thang", email: "admin@gmail.com", password: '123123', password_confirmation: '123123',user_type: 'admin'}
# ]
list_jobs.each do |job|
	Job.create(job)
end
#
# list_employee.each do |employee|
# 	User.create(employee)
# end