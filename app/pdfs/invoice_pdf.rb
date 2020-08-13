class InvoicePdf < Prawn::Document#make_table
  def initialize(student)
    super(top_margin: 70)
    @payment = student
    heading
    line_items
  end

  def heading
    text "Invoice of Payment for #{@payment.name}", size: 30, style: :bold, align: :center
  end

  def line_items
    move_down 100
    table line_item_rows do
      column(0).font_style = :bold
      column(1).width = 150
      self.position = :center
      self.width = 500
    end
  end

  def line_item_rows
    [["Student Name", @payment.name]]+[["Date of Birth", @payment.birth_date]]+[["Academic Year", @payment.academic_year]]+[["Paid Amount", @payment.amount]]+[["Payment Mode", @payment.payment_mode]]+[["Payment Status", @payment.status]]
  end
end
