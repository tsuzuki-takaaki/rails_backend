# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  age        :integer          not null
#  email      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
RSpec.describe User, type: :model do
  # Remove RSpec/EmptyExampleGroup of .rubocop_todo.yml after add some specs
end
