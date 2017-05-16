<?php
namespace frontend\models;
use frontend\models\Category;
use Yii;

class Category extends \yii\db\ActiveRecord
{
   public function getCategory()
   {
        return $this->hasMany(Category::className(), ['parent_id' => 'id']);
   }
}
