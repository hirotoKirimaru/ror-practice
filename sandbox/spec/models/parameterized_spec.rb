require 'rails_helper'

RSpec.describe 'Addition', type: :model do

  parameterized do
    # where(:a, :b, :answer, size: 3, focus_index: 1) do
    where(:a, :b, :answer, size: 3) do
      [
        [1 , 2 , 3],
        [5 , 8 , 13], # will run only this context
        [0 , 0 , 0]
      ]
    end

    subject{ a+b }

    with_them do
      it do
        is_expected.to eq answer
      end
    end
  end
end