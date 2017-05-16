<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */
use yii\helpers\Html;


$this->title = $model->title;
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-page">
    <h1><?= Html::encode($this->title) ?></h1>
<p><?=$model->content?></p>
</div>
