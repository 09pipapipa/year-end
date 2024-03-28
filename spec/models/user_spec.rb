require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it 'すべての項目が入力されていれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録ができない場合' do
      it 'store_nameが空では登録できない' do
        @user.store_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("店舗名を入力してください")
      end
    
      it 'store_nameは11文字以上では登録できない' do
        @user.store_name = 'abcdefghijk'
        @user.valid?
        expect(@user.errors.full_messages).to include("店舗名は10文字以内で入力してください")
      end

      it 'store_noが空では登録できない' do
        @user.store_no = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("店舗ナンバーを入力してください")
      end

      it 'store_noは英字が含まれていると登録できない' do
        @user.store_no = '12a'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは漢字が含まれていると登録できない' do
        @user.store_no = '12数'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは記号が含まれていると登録できない' do
        @user.store_no = '12@'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは全角数字では登録できない' do
        @user.store_no = '１２３'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは全角英字では登録できない' do
        @user.store_no = 'ａｂｃ'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは漢字では登録できない' do
        @user.store_no = '漢字'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは2桁の数字では登録できない' do
        @user.store_no = '12'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'store_noは1桁の数字では登録できない' do
        @user.store_no = '1'
        @user.valid?
        expect(@user.errors.full_messages).not_to include("店舗ナンバーは数値で入力してください")
      end

      it 'emailが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it 'emailは@を含まないと登録できない' do
        @user.email = "testtest"
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end

      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).not_to include("Eメールは既に存在します")
      end

      it 'passwordが空では登録できない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'passwordは5文字以下では登録できない' do
        @user.password = "abc12"
        @user.password_confirmation = "abc12"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end

      it 'passwordは英字だけでは登録できない' do
        @user.password = "abcdef"
        @user.password_confirmation = "abcdef"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end

      it 'passwordは半角数字のみでは登録できない' do
        @user.password = "123456"
        @user.password_confirmation = "123456"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end

      it '全角文字を含むパスワードは登録できない' do
        @user.password = "ａｂｃ１２３"
        @user.password_confirmation = "ａｂｃ１２３"
        @user.valid?
        expect(@user.errors.full_messages).not_to include("パスワードとパスワード（確認用）が一致しません")
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = "abc1234"
        @user.password_confirmation = "abc1111"
        @user.valid?
        expect(@user.errors.full_messages).not_to include("パスワードとパスワード(確認用)の入力が一致しません")
      end
    end
  end
end
