<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\helpers\Url;


$this->title = 'Жалюзи';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-contact">
    <h1><?= Html::encode($this->title) ?></h1>
<?php if($desc):?>
 <h2><?=$desc?></h2>
<?php endif;?>
<div class="row">
<?php foreach($category as $cat):?>
<div class="col-md-3 col-sm-4 col-xs-12">
<a href="<?=Url::to(['site/jalousie', 'id' => $cat->id])?>" ><img src="<?=$cat->photo?>" width="100%" /> </a>
  <h2 class="text-center"><?=$cat->name?></h2>
</div>
<?php endforeach;?>
</div>
</div>
