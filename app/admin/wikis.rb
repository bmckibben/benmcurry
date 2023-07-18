ActiveAdmin.register Wiki do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :user_id, :body, :parent, :version, :deleted, :default_sort, :last_revision

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :title
      f.input :body
      f.input :parent
      f.input :version
      f.input :deleted
      f.input :default_sort
      f.input :last_revision
    end
    f.actions
  end

end
