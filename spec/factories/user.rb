FactoryGirl.define do
  factory :user do
    id 1
    created_at Date.new #2014-03-15 20:44:35.690020000 Z
    updated_at Date.new #2014-03-15 20:44:35.699657000 Z
    email 'aalonso@gmail.com'
    encrypted_password '$2a$10$TFmG0TEVpRM9IHYnohnoveJbWmg/Vm6Z430FwqdZXbxb7OZ7ySA7G'
    sign_in_count 1
    current_sign_in_at Date.new #2014-03-15 20:44:35.698155000 Z
    last_sign_in_at Date.new #2014-03-15 20:44:35.698155000 Z
    current_sign_in_ip Date.new #127.0.0.1
    last_sign_in_ip Date.new #127.0.0.1
  end
end