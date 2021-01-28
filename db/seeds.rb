# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# you can append category to this array
category_list = [
    {name: "Diagnostics"},
    {name: "Examinations"}
]

category_list.each do |c|
    Category.where(c).first_or_create
end

# you can append new treatment to this array 
treatment_list = [
    # IMPORTANT!:
    # if a treatment is no longer available, do not delete it because it is referenced in the user table
    # instead of deleting it, set is_active to false
    # and always append new treatment at the end of this list
    [{name: "angiocardiography", category_id: 1},{is_active: true}],
    [{name: "angiography", category_id: 1},{is_active: true}],
    [{name: "brain scanning", category_id: 1},{is_active: true}],
    [{name: "cholecystography", category_id: 1},{is_active: true}],
    [{name: "echocardiography", category_id: 1},{is_active: true}],
    [{name: "mammography", category_id: 1},{is_active: true}],
    [{name: "myelography", category_id: 1},{is_active: true}],
    [{name: "prenatal testing", category_id: 1},{is_active: true}],
    [{name: "ultrasound", category_id: 1},{is_active: true}],
    [{name: "urography", category_id: 1},{is_active: true}],
    [{name: "auscultation", category_id: 2},{is_active: true}],
    [{name: "autopsy", category_id: 2},{is_active: true}],
    [{name: "biopsy", category_id: 2},{is_active: true}],
    [{name: "bronchoscopy", category_id: 2},{is_active: true}],
    [{name: "cardiac catheterization", category_id: 2},{is_active: true}],
    [{name: "colposcopy", category_id: 2},{is_active: true}],
    [{name: "endoscopy", category_id: 2},{is_active: true}],
    [{name: "esophagogastroduodenoscopy", category_id: 2},{is_active: true}],
    [{name: "gynecological examination", category_id: 2},{is_active: true}],
    [{name: "laparoscopy", category_id: 2},{is_active: true}],
    [{name: "mediastinoscopy", category_id: 2},{is_active: true}],
    [{name: "nasopharyngolaryngoscopy", category_id: 2},{is_active: true}],
    [{name: "palpation", category_id: 2},{is_active: true}],
    [{name: "percussion", category_id: 2},{is_active: true}],
    [{name: "Rubin’s test", category_id: 2},{is_active: true}],
    # always add new treatment here, at the end of  the list
]

treatment_list.each do |t| 
    Treatment.where(t[0]).first_or_create.update(t[1])
end

# you can append new admin to this array
admin_list = [
    [{username: "admin"}, {password_digest: "admin"}]
]

admin_list.each do |a| 
    hashedPassword = BCrypt::Password.create(a[1][:password_digest])
    Admin.where(a[0]).first_or_create.update(password_digest: hashedPassword)
end
