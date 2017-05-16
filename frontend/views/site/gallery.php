<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;


$this->title = 'Фотогалерея';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-gallery">
    <h1><?= Html::encode($this->title) ?></h1>

<div class="row">
<?php foreach($gallery as $gal):?>
<div class="col-md-3 col-sm-4 col-xs-12">
<img src="<?=$gal->photo?>" width="100%" /> 
  <h2 class="text-center"><?=$gal->name?></h2>
</div>
<?php endforeach;?>
</div>

</div>
