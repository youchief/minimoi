<div class="thumbnail col-sm-3 <?php echo h($bon['Bon']['status']); ?>">
        <h3><?php echo __('Bon') . " " . $bon['Bon']['key']; ?></h3>
        <dl>

                <dt><?php echo __('Created'); ?></dt>
                <dd>
                        <?php echo h($bon['Bon']['created']); ?>
                        &nbsp;
                </dd>
                <dt><?php echo __('Amount'); ?></dt>
                <dd>
                        <?php echo h($bon['Bon']['amount']); ?>
                        &nbsp;
                </dd>
                <dt><?php echo __('Description'); ?></dt>
                <dd>
                        <?php echo h($bon['Bon']['description']); ?>
                        &nbsp;
                </dd>
                <dt><?php echo __('End'); ?></dt>
                <dd>
                        <?php echo h($bon['Bon']['end']); ?>
                        &nbsp;
                </dd>
                <dt><?php echo __('Status'); ?></dt>
                <dd>
                        <?php echo h($bon['Bon']['status']); ?>
                        &nbsp;
                </dd>
        </dl>
        <div class="actions">

                <div class="btn-group">
                        <?php echo $this->Html->link(__('Edit Bon'), array('action' => 'edit', $bon['Bon']['id']), array('class' => 'btn btn-sm btn-default')); ?>
                        <?php echo $this->Form->postLink(__('Delete Bon'), array('action' => 'delete', $bon['Bon']['id']), array('class' => 'btn btn-sm btn-danger'), __('Are you sure you want to delete # %s?', $bon['Bon']['id'])); ?> 
                </div>
        </div>
</div>

