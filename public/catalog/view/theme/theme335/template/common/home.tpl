<?php echo $header; ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
		<h1 style="display: none;"><?php echo $heading_title; ?></h1>
		<div class="content_bottom">
			<?php echo $content_bottom; ?>
			<div class="clear"></div>
		</div></div>
<?php echo $column_right; ?>
<?php echo $footer; ?>