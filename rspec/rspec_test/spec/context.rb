require 'spec_helper'
# describe User do
#   describe '#greet' do
#     it '12歳以下の場合、ひらがなで答えること' do
#       user = User.new(name: 'たろう', age: 12)
#       expect(user.greet).to eq 'ぼくはたろうだよ。'
#     end
#     it '13歳以上の場合、漢字で答えること' do
#       user = User.new(name: 'たろう', age: 13)
#       expect(user.greet).to eq '僕はたろうです。'
#     end
#   end
# end

# user context
# describe User do
#   describe '#greet' do
#     context '12歳以下の場合'
#     it 'ひらがなで答えること' do
#       user = User.new(name: 'たろう', age: 12)
#       expect(user.greet).to eq 'ぼくはたろうだよ。'
#     end
#     context '13歳以上の場合'
#     it '漢字で答えること' do
#       user = User.new(name: 'たろう', age: 13)
#       expect(user.greet).to eq '僕はたろうです。'
#     end
#   end
# end

# use let
# describe User do
#   describe '#greet' do
#     let(:user) { User.new(params) }
#     let(:params) { { name: 'たろう', age: age } } 
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it 'ひらがなで答えること' do
#         expect(user.greet).to eq 'ぼくはたろうだよ'
#       end
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it '漢字で答えること' do
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# user subject
RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです。' }
      end
  end
end

