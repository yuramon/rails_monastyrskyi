class Friend < ApplicationRecord
  belongs_to :account
  belongs_to :friend_account, class_name: "Account"
  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverses, if: :has_inverse?

  def create_inverse
    self.class.create(inverse_match_options)
  end

  def destroy_inverses
    inverses.destroy_all
  end

  def has_inverse?
    self.class.exists?(inverse_match_options)
  end

  def inverses
    self.class.where(inverse_match_options)
  end

  def inverse_match_options
    { friend_account_id: account_id, account_id: friend_account_id }
  end
end
