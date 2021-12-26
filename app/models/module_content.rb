# == Schema Information
#
# Table name: module_contents
#
#  id                 :integer          not null, primary key
#  learning_module_id :integer          not null
#  content            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_module_contents_on_learning_module_id  (learning_module_id)
#

class ModuleContent < ApplicationRecord
  belongs_to :learning_module
end
