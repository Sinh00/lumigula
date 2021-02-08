# メールアドレスのバリデーションチェック
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # サイズ
    max = 255
    record.errors.add(attribute, :too_long, count: max) if value.length > max
    # フォーマット
    format = /\A\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\z/
    record.errors.add(attribute, :invalid) unless format =~ value
    # 認証済みのメールアドレスの場合ユニーク
    record.errors.add(attribute, :taken) if record.email_activated?
  end
end