<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Страницы';
?>
<div class="pages-index">
  <p>
        <?= Html::a('Create Pages', ['create'], ['class' => 'btn btn-success']) ?>
    </p> 
<?php Pjax::begin(); ?>   <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'name',
            'title',
            'alias',
            // 'content',
            ['class' => 'yii\grid\ActionColumn',
            'template' => '{update} {delete}'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
