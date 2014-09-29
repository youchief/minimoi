<div class="bons form">
<?php echo $this->Form->create('Bon'); ?>
	<fieldset>
		<legend><?php echo __('Admin Add Bon'); ?></legend>
	<?php
		echo $this->Form->input('key', array('class'=>'form-control'));
		echo $this->Form->input('amount', array('class'=>'form-control'));
		echo $this->Form->input('description', array('class'=>'form-control'));
		echo $this->Form->input('end', array('class'=>'form-control'));
		echo $this->Form->input('status', array('style'=>'select', 'options'=>array('ACTIVE'=>'ACTIVE', 'WAITING'=>'WAITING', 'USED'=>'USED') ,'class'=>'form-control'));
	?>
	</fieldset>
        <hr>
<?php echo $this->Form->submit(__('Submit'), array('class'=>'btn btn-success')); ?>
<?php echo $this->Form->end(); ?>
</div>
