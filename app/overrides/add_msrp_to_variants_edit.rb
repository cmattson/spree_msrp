Deface::Override.new(
  virtual_path: 'spree/admin/variants/_form',
  name:         'add_msrp_to_variants_edit',
  insert_after: 'div[data-hook="price"]',
  text:
<<HTMLBLOB
    <div class="field" data-hook="msrp">
      <%= f.label :msrp, Spree.t(:msrp) %>
      <%= f.text_field :msrp, :value => number_to_currency(@variant.msrp, :unit => ''), :class => 'fullwidth' %>
    </div>
HTMLBLOB
)
