class AccountForm
  include ActiveModel::Model
  validates :username, presence: true
  validate :phones_are_valid

  attr_accessor :username, :phone_type, :phone_number
  # validates :pattern, presence: true, length: { maximum: 20 }

  def save
    user = User.where(
      username:  username
    ).first_or_create!

    # phone_type_arr = phone_type.tr('"', '')[1..-2].split(', ')
    # phone_number_arr = phone_number.tr('"', '')[1..-2].split(', ')

    phone_type_arr = phone_type
    phone_number_arr = phone_number

    phone_type_arr.length.times do |n|
      if valid?
        Phone.new(
          user_id: user.id,
          phone_type: phone_type_arr[n],
          phone_number: phone_number_arr[n]
        ).save
      end
    end

  end
private
  def phones_are_valid
    phone_type.length == phone_number.length
  end
end
