<script type="text/javascript">
	if ($('.container').width() > 723) {
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-spec").length){
		$(".maxheight-spec").equalHeights()}
	});
	};
</script>
<div class="box specials">


  <!-- BANNER 2 -->
  <?php
	// Create connection
	$conn = new mysqli(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql = "SELECT * FROM oc_banner_image WHERE banner_id = 22 ORDER BY banner_image_id DESC limit 1";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	        echo '<div class="box-heading"><img width="1170" src="/image/'.$row["image"].'"></div>';
	    }
	} else {
	    echo "<!-- No banner -->";
	}
	$conn->close();
  ?>
  <!-- FIM - BANNER 2 -->





  <div class="box-content">
	<div class="box-product">
		<ul class="row">
		  <?php $i=0; foreach ($products as $product) { $i++ ?>
		  <?php 
			   $perLine = 4;
			   $spanLine = 3;
			   $last_line = "";
							$total = count($products);
							$totModule = $total%$perLine;
							if ($totModule == 0)  { $totModule = $perLine;}
							if ( $i > $total - $totModule) { $last_line = " last_line";}
							if ($i%$perLine==1) {
								$a='first-in-line';
							}
							elseif ($i%$perLine==0) {
								$a='last-in-line';
							}
							else {
								$a='';
							}
						?>
			<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>">
				<script type="text/javascript">
				$(document).ready(function(){
					$("a.colorbox-<?php echo $i?>").colorbox({
					rel: 'colorbox1',
					inline:true,
					html: true,
					width:'58%',
					maxWidth:'780px',
					height:'70%',
					open:false,
					returnFocus:false,
					fixed: false,
					title: false,
					href:'.quick-view-<?php echo $i;?>',
					current:'Product {current} of {total}'
					});
					 });
				</script>
				<div class="image2">
					<?php if ($product['thumb']) { ?><a href="<?php echo $product['href']; ?>"><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a><?php } ?>
				</div>




					<a href="<?php echo $product['href']; ?>"   rel="colorbox" class="colorbox-<?php echo $i;?> quick-view-button"><i class=" fa fa-search "></i></a>
				<div class="inner">
					<div class="f-left">
						
						
						<?php if ($product['price']) { ?>
						<div class="price" style="color: #ffc801; background-color: #000;">
							<?php if (!$product['special']) { ?>
							
							

							<span class="price-new" style="font-size: 20px; line-height: 0px;">
								<div style="font-size: 12px; margin-top: 5px;">Por:</div>
								<?php echo $product['price']; ?></span>

							<?php } else { ?>
							<span class="price-new" style="font-size: 20px; line-height: 0px;">
								<div style="font-size: 12px; margin-top: 5px;">Por:</div>
								<?php echo $product['special']; ?></span>

							<span class="price-old"><?php echo $product['price']; ?></span>
							<?php } ?>
						</div>
						<?php } ?>


						<div class="name " style="padding: 12px 80px 12px 10px;  background-color: #ffc801;"><a style="font-size: 12px;
  max-width: 156px;
  line-height: 18px;
  height: 33px;
  color: #000;" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>



						<!--<?php if ($product['description']) {?>
							<div class="description"><?php echo mb_substr($product['description1'],0,70,'UTF-8').'...';?></div>
						<?php } ?>-->
						</div>
						<div class="cart-button">
							<div class="cart">
								<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart">
									<!--<i class="fa fa-shopping-cart"></i>-->
									<span><?php echo $button_cart; ?></span>
								</a>
							</div>
							<!--<a href="<?php echo $product['href']; ?>" class="button details"><span><?php echo $button_details; ?></span></a>-->
							
							<div class="compare">
								<a class="tooltip-1" title="<?php echo $button_compare; ?>"  onclick="addToCompare('<?php echo $product['product_id']; ?>');">
									<i class="fa fa-bar-chart-o"></i>
									<span><?php echo $button_compare; ?></span>
								</a>
							</div>
							<div class="wishlist">
								<a class="tooltip-1" title="<?php echo $button_wishlist; ?>"  onclick="addToWishList('<?php echo $product['product_id']; ?>');">
									<i class="fa fa-star"></i>
									<span><?php echo $button_wishlist; ?></span>
								</a>
							</div>
							<span class="clear"></span>
						</div>
					<div class="clear"></div>
					<?php if ($product['rating']) { ?>
					<div class="rating">
						<img height="13" src="catalog/view/theme/theme335/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
					</div>
					<?php } ?>
				</div>
				<div class="clear"></div>
			</li>
		  <?php } ?>
	   </ul>
	</div>
  </div>
</div>
