Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name:         'add_msrp_to_product_edit',
  insert_after: 'div[data-hook="admin_product_form_price"]',
  text:
<<HTMLBLOB
    <div data-hook="admin_product_form_msrp">
      <%= f.field_container :msrp do %>
        <%= f.label :msrp, raw(Spree.t(:msrp)) %>
        <%= f.text_field :msrp, :value => number_to_currency(@product.msrp, :unit => '') %>
        <%= f.error_message_on :msrp %>
      <% end %>
    </div>
HTMLBLOB
)
