<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "category".
 *
 * @property integer $id
 * @property integer $parent_id
 * @property string $name
 * @property string $photo
 */
class Category extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category';
    }

    public function getCategory()
   {
        return $this->hasOne(Category::className(), ['id' => 'parent_id']);
   }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id', 'name', 'photo'], 'required'],
            [['parent_id'], 'integer'],
            [['desciption'], 'string'],
            [['name', 'photo'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '#',
            'parent_id' => 'Родитель',
            'name' => 'Название',
            'photo' => 'Фото',
        ];
    }
}
