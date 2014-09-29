<div class="row">
        <div class="col-sm-4">
                <?php echo $this->Html->image('pedro_2.png', array('class'=>'img-responsive'))?>
        </div>
        <div class="col-sm-8">
                <?php echo $this->Form->create('User', array('action'=>'login')); ?>
                <fieldset>
                        <legend><?php echo __('Connexion'); ?></legend>
                        <?php
                        echo $this->Form->input('username', array('class' => 'form-control'));
                        echo $this->Form->input('password', array('class' => 'form-control'));
                        ?>
                </fieldset>
                <hr>
                <?php echo $this->Form->submit(__('Login'), array('class' => 'btn btn-success')); ?>
                <?php echo $this->Form->end(); ?>
        </div>
</div>