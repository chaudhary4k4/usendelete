
<div id="cart">
<a href="<?php echo $cart; ?>" id="cart-total">
<div class="mini_cart hover_icon">
<div class="cart_holder">
<i class="icon-basket light_color"></i>
<?php echo $shopme_text_mycart; ?>&nbsp;&nbsp;<i class="icon-down-dir"></i>&nbsp;
<?php echo $text_items; ?>
</div>
</div>
</a>
  <div class="content">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image border"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name border">
          <a class="contrast_font" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php echo $product['quantity']; ?>&nbsp;x&nbsp;<?php echo $product['price']; ?>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              <?php echo $option['name']; ?>: <?php echo $option['value']; ?><br />
              <?php } ?>
              <?php if ($product['recurring']) { ?>
              <?php echo $text_recurring ?>: <?php echo $product['recurring']; ?><br />
              <?php } ?>
            </div></td>
          <td class="remove border"><a title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times"></i></a></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td colspan="2" class="voucher border"><span class="name" style="display:block; float:left">1&nbsp;x&nbsp;<?php echo $voucher['description']; ?></span></td>
          <td class="remove border"><a title="<?php echo $button_remove; ?>" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times"></i></a></td>
          </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="left titles"><?php echo $total['title']; ?>:</td>
          <td class="left"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkoutbuttons">
    <a class="btn btn-default btn-sm" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
    <a class="btn btn-primary btn-sm" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
    </div>
    <?php } else { ?>
    <div class="empty main_font"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
  </div>