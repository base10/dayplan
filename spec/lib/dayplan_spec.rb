#-*- mode: ruby; x-counterpart: ../../lib/dayplan.rb; tab-width: 2; indent-tabs-mode: nil; x-auto-expand-tabs: true;-*-

require "spec_helper"

RSpec.describe "Dayplan" do
  let ( :date ) { DateTime.now }

  subject { Dayplan.new( acting_date: date ) }

  describe "instantiation" do
    it "creates a new dayplan object" do
      expect { subject }.not_to raise_error
    end
  end
end
