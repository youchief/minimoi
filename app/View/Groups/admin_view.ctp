<div class="groups view">
        <h2><?php echo __('Group'); ?></h2>
        <dl>
                		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($group['Group']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($group['Group']['name']); ?>
			&nbsp;
		</dd>
        </dl>
</div>
<div class="actions">

        <div class="btn-group">
                		<?php echo $this->Html->link(__('Edit Group'), array('action' => 'edit', $group['Group']['id']), array('class'=>'btn btn-sm btn-default')); ?>
		<?php echo $this->Form->postLink(__('Delete Group'), array('action' => 'delete', $group['Group']['id']), array('class'=>'btn btn-sm btn-danger'), __('Are you sure you want to delete # %s?', $group['Group']['id'])); ?> 
        </div>
</div>
