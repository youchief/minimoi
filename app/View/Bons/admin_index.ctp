<div class="bons index">
        <h2><?php echo __('Bons'); ?> <?php echo $this->Html->link(\__('+'), array('action' => 'add'), array('class'=>'btn btn-success btn-sm')); ?></h2>
        <table cellpadding="0" cellspacing="0" class="table">
                <tr>
                                                        <th><?php echo $this->Paginator->sort('id'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('created'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('key'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('amount'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('description'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('end'); ?></th>
                                                        <th><?php echo $this->Paginator->sort('status'); ?></th>
                                                <th class="actions"><?php echo __('Actions'); ?></th>
                </tr>
                <?php foreach ($bons as $bon): ?>
	<tr>
		<td><?php echo h($bon['Bon']['id']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['created']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['key']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['amount']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['description']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['end']); ?>&nbsp;</td>
		<td><?php echo h($bon['Bon']['status']); ?>&nbsp;</td>
		<td class="actions">
		<div class="btn-group">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $bon['Bon']['id']), array('class'=>'btn btn-default btn-xs')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $bon['Bon']['id']), array('class'=>'btn btn-default btn-xs')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $bon['Bon']['id']), array('class'=>'btn btn-danger btn-xs'), __('Are you sure you want to delete # %s?', $bon['Bon']['id'])); ?>
		</div>
		</td>
	</tr>
<?php endforeach; ?>
        </table>
        <div class="well well-sm">
                <?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>
        </div>
        <ul class="pagination">
                <?php echo '<li>'.$this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled')).'</li>' ?>
                <?php echo '<li>'.$this->Paginator->numbers(array('separator' => '')).'</li>' ?>
                <?php echo '<li>'.$this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled')).'</li>' ?>
        </ul>
</div>
