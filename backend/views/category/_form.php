<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Category;

/* @var $this yii\web\View */
/* @var $model backend\models\Category */
/* @var $form yii\widgets\ActiveForm */
$cat = Category::find()->where(['parent_id' => 0])->all();
foreach($cat as $ca){
	$c[$ca->id] = $ca->name;
}
$img = Category::find()->where(['id' => Yii::$app->request->get('id')])->one();
?>

<div class="category-form">
	
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'parent_id')->dropDownList([
    $c,
	]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
	<img src="<?=$img->photo?>" />
    <?= $form->field($model, 'photo')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'desciption')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
