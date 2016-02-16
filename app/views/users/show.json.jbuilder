


json.friends @user.friends do |friend|
    json.(friend, :id, :name, :user_avatar, :email, :phonenumber)
end






