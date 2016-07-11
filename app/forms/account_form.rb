class AccountForm
  include ActiveModel::Model

  attr_accessor :username, :phone_type, :phone_number
  # validates :pattern, presence: true, length: { maximum: 20 }

  def save
        user = User.where(
          username:  username
        ).first_or_create!
        phone = Phone.where(
          user_id: user.id,
          phone_type: phone_type,
          phone_number: phone_number
        ).first_or_create!

      end
  end
