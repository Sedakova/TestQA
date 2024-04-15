﻿#language: ru

@tree

Функционал: Проверить расчет суммы документа

Как Администратор я хочу
Проверить корректность расчета суммы документа 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверить расчет суммы документа

* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'       |
		| '000000013' | 'Магазин "Продукты"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
* Заполнение товарной части Товар 1
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Код'       | 'Наименование' |
		| '000000011' | 'Продукты'     |
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверка корректности суммы Товар 1
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Цена'   | 'Количество' | 'Сумма'  |
		| 'Колбаса' | '300,00' | '2'          | '600,00' |	
* Заполнение товарной части Товар 2
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я разворачиваю строку:
		| 'Код'       | 'Наименование' |
		| '000000011' | 'Продукты'     |
	И в таблице "Список" я разворачиваю строку:
		| 'Код'       | 'Наименование' |
		| '000000099' | 'Молочные'     |
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Сметана'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Сметана'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверка корректности суммы Товар 2
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Цена'   | 'Количество' | 'Сумма'    |
		| 'Сметана' | '25,00'  | '4'          | '100,00'   |
* Проверка корректности суммы документа
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '700'

* Закрытие документа (без записи)
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'

//* Закрытие документа (с записью)	
//И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
//И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
