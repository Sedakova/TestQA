﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение шапки документа "Заказ"  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Заполнение документов
@Описание: Сценарий заполняет реквизиты шапки документа "Заказ"
@ПримерИспользования: И Заполнение шапки документа Заказ
Сценарий: Заполнение шапки документа Заказ
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'       |
	| '000000013' | 'Магазин "Продукты"' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Средний'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'

