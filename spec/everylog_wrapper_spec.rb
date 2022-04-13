# frozen_string_literal: true

RSpec.describe EverylogWrapper do
  it "has a version number" do
    expect(EverylogWrapper::VERSION).not_to be nil
  end

  describe EverylogWrapper::Notification do
    describe "sendnotification" do
      it "returns a response" do
      end
    end
  end
end
