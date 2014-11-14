#-*- mode: ruby; x-counterpart: ../../../lib/dayplan/plan.rb; tab-width: 2; indent-tabs-mode: nil; x-auto-expand-tabs: true;-*-

require "spec_helper"

RSpec.describe "Dayplan::Plan" do
  let ( :date ) { DateTime.now }

  subject { Dayplan::Plan.new( acting_date: date ) }

  describe "instantiation" do
    it "creates a new dayplan object" do
      expect { subject }.not_to raise_error
    end

    it "accepts a date to act on" do
      expect( Dayplan::Plan ).to receive(:new).with( { acting_date: date } )
      subject
    end

    it "defaults the date if acting_date isn't provided" do
      expect { Dayplan::Plan.new( {} ) }.not_to raise_error
      expect { Dayplan::Plan.new }.not_to raise_error
    end
  end

  describe "plan creation" do
    context "no existing file" do
      it "creates a file"
    end

    context "existing file" do
      it "won't overwrite existing file"

      it "overwrites when force is passed"
    end
  end
end
