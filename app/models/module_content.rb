# == Schema Information
#
# Table name: module_contents
#
#  id                 :bigint           not null, primary key
#  content            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  learning_module_id :bigint           not null
#
# Indexes
#
#  index_module_contents_on_learning_module_id  (learning_module_id)
#
# Foreign Keys
#
#  fk_rails_...  (learning_module_id => learning_modules.id)
#
class ModuleContent < ApplicationRecord
  belongs_to :learning_module
end
