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
                        <?php echo h($bon['Bon']['status'])." ".$this->Time->format('d-m-y H:i:s', $bon['Bon']['used']); ?>
                        &nbsp;
                </dd>
        </dl>

        <?php if ($bon['Bon']['status'] == 'ACTIVE'): ?>
                <div class="actions">
                        <?php echo $this->Form->postLink(__('Utiliser'), array('action' => 'set_status', $bon['Bon']['id']), array('class' => 'btn btn-sm btn-danger'), __('Voulez-vous vraiment comptabiliser ce bon ?', $bon['Bon']['id'])); ?> 
                </div>
        <?php endif; ?>
</div>

