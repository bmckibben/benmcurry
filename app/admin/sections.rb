ActiveAdmin.register Section do
  index do
    selectable_column
    id_column
    column :sequence
    column :title
    column :draft
    column :story_id
    actions
  end
end
