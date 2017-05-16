<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Категории';
?>
<div class="category-index">
    <p>
        <?= Html::button('Cоздать категорию', ['value' => Url::to(['create']) , 'class' => 'btn btn-success' , 'id' => 'modalButton']) ?>
    </p>

    <?php
       Modal::begin([
    'header' => '<h2>Создание товара</h2>',
    'id' => 'modal',
    'size' => 'modal-lg',
    ]);
    echo "<div id='modalContent'></div>";

    Modal::end();
    ?>

<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            // 'parent_id',
            [
               'attribute' => 'parent_id',
                'value' => function($data){
                return $data->category->name ? $data->category->name : '<div class="text-danger">Главная категория</div>';
               },
               'format' => 'html',
            ],
            'name',
            // 'photo',
            [
              'attribute' => 'photo',
              'value' => function($data){
                return "<img src='".$data->photo."'/>";
               },
              'format' => 'html',
            ],

            ['class' => 'yii\grid\ActionColumn',
            'template' => '{update} {delete}'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
