Deface::Override.new(
                     :name => 'add_credit_card_list_to_payment_form',
                     :virtual_path => 'checkout/payment/_gateway',
                     :insert_before => '[data-hook=card_number]',
                     :partial =>'checkout/payment/existing_cards'
)