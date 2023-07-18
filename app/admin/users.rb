ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :login, :forename, :surname, :role_cd

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :login
      f.input :role_cd
      f.input :forename
      f.input :surname
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
