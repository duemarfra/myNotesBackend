# == Schema Information
#
# Table name: notes
#
#  id          :bigint           not null, primary key
#  archived    :boolean
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_notes_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Note < ApplicationRecord
  belongs_to :category
end
