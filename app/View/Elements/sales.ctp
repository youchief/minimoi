<header class="navbar navbar-default navbar-fixed-top">
        <div class="container">
                <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                        </button>
                        <?php echo $this->Html->image('logo.png', array('class'=>'navbar-brand'))?>
                </div>
                <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">

                                <li><?php echo $this->Html->link('Scan', array('controller' => 'bons', 'action' => 'scan', 'admin' => false)) ?></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                                <li><?php echo $this->Html->link('Logout', array('controller' => 'users', 'action' => 'logout', 'admin' => false)) ?></li>
                        </ul>
                </div><!--/.navbar-collapse -->
        </div>
</header>