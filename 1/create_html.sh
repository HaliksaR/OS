#!/bin/bash
rm -rf site
echo "Create folder"
mkdir site && cd site
echo "Create html file"
echo "<!DOCTYpE html>
<html lang=\"en\">

<head>
    <meta charset=\"utf-8\">
    <title>Лабораторная 2</title>
    <link rel=\"stylesheet\" href=\"css/style.css\">
</head>
<body>
<div id=\"box\">
    <h1 class=\"block-center\">Вариант № 1 (бригады 1, 5)</h1>
    <h3 class=\"block-center\"><span class=\"font-italic\">Структура програмы на языке Паскаль</span></h3>
    <table border=\"1\" cellpadding=\"5\" class=\"block-center\">
        <tr class=\"block-center\">
            <th class=\"block-color\" scope=\"col\" width=\"30%\">Раздел</th>
            <th class=\"block-color\" scope=\"col\">Оператор</th>
            <th class=\"block-color\" scope=\"col\">Значение</th>
        </tr>
        <tr>
            <th rowspan=\"7\" class=\"block-center\" scope=\"rowgroup\">Описание данных</th>
            <td class=\"font-bold\">Program</td>
            <td>Заголовок программы</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Label</td>
            <td>Метки</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Const</td>
            <td>Константы</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Type</td>
            <td>Типы</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Var</td>
            <td>Переменные</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Procedure</td>
            <td>Процедуры</td>
        </tr>
        <tr>
            <td class=\"font-bold\">Function</td>
            <td>Функции</td>
        </tr>
        <tr>
            <th rowspan=\"2\" class=\"block-center\" scope=\"rowgroup\">Описание действий</th>
            <td class=\"font-bold\">Begin</td>
            <td>Начало программы</td>
        </tr>
        <tr>
            <td class=\"font-bold\">End.</td>
            <td>Конец программы</td>
        </tr>
    </table>

    <h1 class=\"block-center\">Вариант № 2 (бригады 2, 6)</h1>
    <h3 class=\"block-center\"><span class=\"font-italic\">Нумерация битов</span></h3>
    <table border=\"1\" cellpadding=\"5\" class=\"block-center\">
        <tr class=\"block-center\">
            <th width=\"20%\" rowspan=\"2\" scope=\"rowgroup\">Тип Real</th>
            <th class=\"block-color\" scope=\"col\">Знак мантиссы</th>
            <th colspan=\"3\" class=\"block-color\" scope=\"col\">Мантисса числа</th>
            <th colspan=\"3\" class=\"block-color\" scope=\"col\">Порядок числа</th>
        </tr>
        <tr class=\"block-center\">
            <td>47</td>
            <td>46</td>
            <td>...</td>
            <td>8</td>
            <td>7</td>
            <td>...</td>
            <td>0</td>
        </tr>
    </table>
</div>
</body>

</HTML>" > index.html
echo "Create css file"
mkdir css && cd css
echo "body {
    display: flex;
    font-family: sans-serif;
}
.font-bold {
    font-weight: bold;
}
.font-italic {
    font-style: italic;
    font-weight: lighter;
}
.block-color {
    background-color: #979fa6;
}
.block-center {
    text-align: center;
}
#box {
    margin: 5em auto;
}
h1 {
    margin-top: 1.5em;
}
h3 {
    margin-top: -0.5em;
}
" > style.css
cd ..
google-chrome $PWD/index.html
cd ..
echo "Done"