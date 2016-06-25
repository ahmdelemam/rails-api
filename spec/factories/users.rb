FactoryGirl.define do
  factory :user do
    email "aabb@hh.de"
    password "aabb@hh.de"
    password_confirmation "aabb@hh.de"
  end
  factory :guest_user, :parent => :user  do
    email "aabb@hh.de"
    password "aabb@hh.de"
    password_confirmation "aabb@hh.de"
    admin false
    user false
  end
  factory :user_user, :parent => :user  do
    email "aabb@hh.de"
    password "aabb@hh.de"
    password_confirmation "aabb@hh.de"
    user true
  end
  factory :admin_user, :parent => :user  do
    email "aabb@hh.de"
    password "aabb@hh.de"
    password_confirmation "aabb@hh.de"
    admin true
  end

end
