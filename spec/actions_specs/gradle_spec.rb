describe Fastlane do
  describe Fastlane::FastFile do
    describe "gradle", now: true do
      it "generates a valid command" do
        result = Fastlane::FastFile.new.parse("lane :test do
          gradle(task: 'test', gradle_path: './README.md')
        end").runner.execute(:test)

        expect(result).to eq("./README.md test ")
      end
    end
  end
end
