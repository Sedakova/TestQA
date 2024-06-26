﻿#language: ru

@tree

Функционал: Создание, заполнение и проверка документа Заказ

Как Администратор я хочу
проверить создание, заполнение и корректность полей документа Заказ с использованием экспортных сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание, заполнение и проверка документа Заказ

* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И Заполнение шапки документа Заказ
* Заполнение и проверка таблицы Товары
	И Заполнение таблицы Товары и проверка Количество (итог)
* Запись и проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд	