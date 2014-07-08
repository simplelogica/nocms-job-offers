shared_examples_for "model with slug" do |model_name, sluggable_attribute|

  let(:model_object) { create model_name, sluggable_attribute => "test name" }

  context "after save" do
    before { model_object.save! }
    subject { model_object.reload }
    it { expect(subject.slug).to eq "test-name" }
    it { expect(subject).to eq model_object.class.friendly.find(model_object.slug)}
  end

end
