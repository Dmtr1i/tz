<?
use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = 'Каталог';
?>

<div class="site-index">

    <div class="filter">
    <? $form = ActiveForm::begin(); ?>
    <?= $form->field($filter, 'color')->checkboxList($colors, ['onchange' => 'this.closest("form").submit()'])->label('Цвет') ?>
    <?= $form->field($filter, 'size')->checkboxList($sizes, ['onchange' => 'this.closest("form").submit()'])->label('Размер') ?>
    <a href="javascript:void(0)" onclick="this.closest('form').submit()">Сбросить фильтр</a>
    <? ActiveForm::end(); ?>
    </div>

    <div class="products">
        <?foreach ($products as $product) {?>
            <div>
                <span><?=$product['model_name'] . ' Цвет: ' . $product['color'] . ' Размер: ' . $product['size'] . ' Артикул: ' . $product['code'] . ' Цена: ' . $product['price'] . ' Остаток на складе: ' . $product['count']?></span>
             </div>
        <?}?>
    </div>    
    
</div>
