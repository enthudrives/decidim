# frozen_string_literal: true

require "spec_helper"

describe Decidim::ParticipatoryProcesses::Abilities::EveryoneAbility do
  let(:user) { build(:user) }

  subject { described_class.new(user, {}) }

  it "lets the user read processes" do
    expect(subject.permissions[:can][:read]).to include("Decidim::ParticipatoryProcess")
  end
end
