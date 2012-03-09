Deface::Override.new(
                     :name => 'add_credit_card_list_to_payment_form',
                     :virtual_path => 'spree/checkout/payment/_gateway',
                     :insert_top => '#credit_card_options_cont',
                     :partial =>'checkout/payment/existing_cards'
)
