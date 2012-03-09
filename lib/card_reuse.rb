module CardReuse
  def all_cards_for_user(user)
    return nil unless user
    cc_table = Spree::Creditcard.table_name
    Spree::Creditcard.
      joins(:payments => :order).
      where("#{Spree::Order.table_name}.user_id" => user.id).
      where("#{Spree::Payment.table_name}.state" => "completed").
      where(["(CAST(#{cc_table}.year AS integer) > ? OR (CAST(#{cc_table}.year AS integer) = ? AND CAST(#{cc_table}.month AS integer) >= ?))", 
        Date.today.year, Date.today.year, Date.today.month]).
      where(:deleted_at => nil).
      uniq
  end
end
