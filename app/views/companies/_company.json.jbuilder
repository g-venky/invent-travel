json.extract! company, :id, :companyname, :website, :email, :region, :created_at, :updated_at
json.url company_url(company, format: :json)
