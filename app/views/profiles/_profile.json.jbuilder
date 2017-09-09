json.extract! profile, :id, :organization, :employees, :website, :designation, :email, :headoffice, :branches, :aboutus, :firstname, :lastname, :seller_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
