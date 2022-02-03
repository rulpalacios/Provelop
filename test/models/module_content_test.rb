# == Schema Information
#
# Table name: module_contents
#
#  id                 :integer          not null, primary key
#  module_content_id :integer          not null
#  content            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_module_contents_on_module_content_id  (module_content_id)
#

require "test_helper"

class ModuleContentTest < ActiveSupport::TestCase
  fixtures :module_contents

  def module_content
    @module_content ||= module_contents(:auth_module)
  end

  def test_valid_module_content
    assert module_content.valid?
  end
end
