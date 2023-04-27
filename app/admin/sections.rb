ActiveAdmin.register Section do
  permit_params :title, :draft, :sequence, :sample

  index do
    selectable_column
    id_column
    column :sequence
    column :title
    column :draft
    column :sample
    column :story_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :draft
      f.input :sequence
      f.input :sample
    end
    f.actions
  end

end
