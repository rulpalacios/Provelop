# == Schema Information
#
# Table name: learning_modules
#
#  id         :integer          not null, primary key
#  name       :string
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_learning_modules_on_event_id  (event_id)
#

require "test_helper"

class LearningModuleTest < ActiveSupport::TestCase
  fixtures :learning_modules

  def learning_module
    @learning_module ||= learning_modules(:auth_module)
  end

  def test_valid_learning_module
    assert learning_module.valid?
  end
end
