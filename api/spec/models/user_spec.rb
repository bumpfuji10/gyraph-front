require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do

    # presence: true
    context "氏名が入力されている場合" do
      let(:user) { FactoryBot.build(:user, name: "蟹江 西男") }

      it "ユーザーが有効であること" do
        expect(user).to be_valid
        expect(user.save).to eq true
      end
    end

    context "氏名が未入力の場合" do
      let(:user) { FactoryBot.build(:user, name: nil) }

      it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end

    # length: { maximum: 50 }
    context "氏名が51文字以上の場合" do
      let(:user) { FactoryBot.build(:user, name: "a" * 51) }

      it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end

    context "氏名が50文字以下の場合" do
      let(:user) { FactoryBot.build(:user, name: "a" * 50) }

      it "ユーザーが有効であること" do
        expect(user).to be_valid
        expect(user.save).to eq true
      end
    end

    context "メールアドレスが入力されている場合" do
      let(:user) { FactoryBot.build(:user, email: "test@user.com") }

      it "ユーザーが有効であること" do
        expect(user).to be_valid
        expect(user.save).to eq true
      end
    end

    context "メールアドレス正しい形式で入力されている場合" do
      let(:user) { FactoryBot.build(:user, email: "test@user.com") }

        it "ユーザーが有効であること" do
        expect(user).to be_valid
        expect(user.save).to eq true
      end
    end

    context "メールアドレス正しくない形式で入力されている場合" do
      let(:user) { FactoryBot.build(:user, email: "test.coom") }

        it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end

    context "メールアドレスが255文字以上の場合" do
      let(:user) { FactoryBot.build(:user, email: 'a' * 244 + '@example.com') }

      it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end

    # password_digest
    context "passwordが入力されている場合" do
      let(:user) { FactoryBot.build(:user, password_digest: 'a' * 8) }

      it "ユーザーが有効であること" do
        expect(user).to be_valid
        expect(user.save).to eq true
      end
    end

    context "passwordが未入力の場合" do
      let(:user) { FactoryBot.build(:user, password_digest: nil) }

      it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end

    context "passwordが7文字以下の場合" do
      let(:user) { FactoryBot.build(:user, password_digest: "a" * 7) }

      it "ユーザーが無効であること" do
        expect(user).to be_invalid
      end
    end
  end
end
