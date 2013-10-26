Given /the following member info exist/ do |emails_table|
  emails_table.hashes.each do |email|
    Email.create(email)
  end
end

Then /I should see Successfully Sent/ do
     step %{I should see "Successfully Sent"}

Then /I should see No members available/ do
    if Email.count == 0
      step %{I should see "No members available"}
    end

