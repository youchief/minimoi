<div class="row">
        <div class="col-sm-12">
                <div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><?php echo __('Connexion'); ?></legend>
	<?php
		echo $this->Form->input('username', array('class'=>'form-control'));
		echo $this->Form->input('password', array('class'=>'form-control'));
	?>
	</fieldset>
        <hr>
<?php echo $this->Form->submit(__('Login'), array('class'=>'btn btn-success')); ?>
<?php echo $this->Form->end(); ?>
</div>
        </div>
</div>
</div>




