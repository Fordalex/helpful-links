# frozen_string_literal: true

require "rails_helper"

RSpec.describe Plan, type: :model do
  it { should belong_to(:project) }
end
