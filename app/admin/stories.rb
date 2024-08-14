ActiveAdmin.register Story do

	permit_params :title, :subtitle, :abbreviated_title, :shorte_summary, :long_summary, :word_count

end

#  id                :integer          not null, primary key
#  title             :text
#  subtitle          :text
#  abbreviated_title :string(255)
#  short_summary     :text
#  long_summary      :text
#  word_count        :integer
#  created_at        :datetime
#  updated_at        :datetime
#