class AddEmailPaymentModeAmountStatusToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :email, :string
    add_column :students, :payment_mode, :string
    add_column :students, :amount, :integer
    add_column :students, :status, :string
  end
end
