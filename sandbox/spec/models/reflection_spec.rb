require 'rails_helper'

RSpec.describe 'リフレクションクラスの確認', type: :model do
  let(:reflection) {Reflection.new}

  describe 'リフレクションの確認' do
    it "ArgumentError" do
        expect do
            reflection.public_send()
        end.to raise_error(ArgumentError)
    end 

    context 'パラメータなし' do
        it "houseを呼び出す" do
            expect(reflection.public_send("house")).to eq "house"
        end 

        it "mouseを呼び出す" do
            expect(reflection.public_send("mouse")).to eq "mouse"
        end 

        it "noseを呼び出す" do
            expect(reflection.public_send("nose")).to eq "nose"
        end 

        it "gorillaを呼び出す" do
            expect do
                reflection.public_send("gorilla")
            end.to raise_error(NoMethodError)
        end 
    end
  end
end