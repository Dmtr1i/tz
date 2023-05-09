<?
use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = 'Каталог';
?>

<div class="site-index">

    <div class="filter">
    <? $form = ActiveForm::begin(); ?>
    <?= $form->field($filter, 'color')->checkboxList($colors)->label('Цвет') ?>
    <?= $form->field($filter, 'size')->checkboxList($sizes)->label('Размер') ?>
    <a href="javascript:void(0)" onclick="this.closest('form').submit()">Показать</a>
    <? ActiveForm::end(); ?>
    </div>

    <div class="products">
        <?if (isset($post['color']) || isset($post['size'])) {?>
            <div class="filter_selected">
                <span>Предложения, подходящие выбранным значениям:
                    <?if ($post['color'] != '') {
                        echo ' Цвет: ' . implode(', ', $post['color']) . ';';
                    }
                    if ($post['size'] != '') {
                        echo ' Размер: ' . implode(', ', $post['size']) . ';';
                    }?>
                </span>
            </div>
        <?}?>
        <?foreach ($products as $product) {?>
            <span><?=$product['model_name'] . ' Цвет: ' . $product['color'] . ' Размер: ' . $product['size'] . ' Артикул: ' . $product['code'] . ' Цена: ' . $product['price'] . ' Остаток на складе: ' . $product['count']?></span>
        <?}?>
    </div>    
    
</div>
