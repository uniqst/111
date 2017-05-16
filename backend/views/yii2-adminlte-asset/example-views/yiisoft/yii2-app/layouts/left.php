<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <!-- <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/> -->
            <i class="fa fa-user-circle-o" style="color: white; font-size: 50px;"></i>

            </div>
            <div class="info">
                <p><?=\Yii::$app->user->identity->username?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
       <!--  <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form> -->
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [
                    ['label' => ' Меню', 'options' => ['class' => 'header']],
               
                    // [
                    //     'label' => 'Таблицы',
                    //     'icon' => 'share',
                    //     'url' => '#',
                    //     'items' => [
                    //         ['label' => 'Категории', 'icon' => ' fa fa-table', 'url' => ['/admin/category/index']],
                    //         ['label' => 'Свойства категорий', 'icon' => ' fa fa-table', 'url' => ['/admin/in-category/index']],
                    //         ['label' => 'Товары', 'icon' => ' fa fa-table', 'url' => ['/admin/product/index']],
                    //         ['label' => 'Заказы', 'icon' => ' fa fa-table', 'url' => ['/admin/order/index']],
                    //         ['label' => 'Страницы', 'icon' => ' fa fa-table', 'url' => ['/admin/pages/index']],

                          
                    //     ],
                    // ],
                      ['label' => 'Категории', 'icon' => ' fa fa-table', 'url' => ['category/index']],
                    ['label' => 'Страницы', 'icon' => ' fa fa-caret-square-o-right', 'url' => ['pages/index']],
                            // ['label' => 'Товары', 'icon' => ' fa fa-truck', 'url' => ['/admin/product/index']],
                            // ['label' => 'Заказы', 'icon' => ' fa fa-first-order', 'url' => ['/admin/order/index']],
                            // ['label' => 'Страницы', 'icon' => ' fa fa-text-height', 'url' => ['/admin/pages/index']],
                            // ['label' => 'Пользователи', 'icon' => ' fa fa-address-book-o', 'url' => ['/admin/user']],
                            // ['label' => 'Cтатистика продаж', 'icon' => ' fa fa-money', 'url' => ['/admin/order/statistica',]],
                            // ['label' => 'Социальные сети', 'icon' => ' fa fa-vk', 'url' => ['/admin/options/update', 'id' => 1]],
                       // ['label' => 'Настройки', 'icon' => ' fa fa-cog', 'url' => ['/admin/options/update', 'id' => 1]],
                ],
            ]
        ) ?>

    </section>

</aside>
