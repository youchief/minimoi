<div class="bons form">
<?php echo $this->Form->create('Bon'); ?>
	<fieldset>
		<legend><?php echo __('Scan'); ?></legend>
	<?php
		echo $this->Form->input('key', array('class'=>'form-control'));
	?>
	</fieldset>
        <hr>
<?php echo $this->Form->submit(__('Submit'), array('class'=>'btn btn-success')); ?>
<?php echo $this->Form->end(); ?>
</div>
