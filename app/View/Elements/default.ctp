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

                        <ul class="nav navbar-nav navbar-right">
                                <li><?php echo $this->Html->link('Login', array('controller' => 'users', 'action' => 'login', 'admin' => false)) ?></li>
                        </ul>
                </div><!--/.navbar-collapse -->
        </div>
</header>