﻿#language: ru

@tree

Функционал: Проверка отчета Остатки товаров

Как Администратор я хочу
протестировать формирование ответа Остатки товаров  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка базы для тестирования
// При подготовке загружаем настройки (база может быть пустая)
// Загружаем документ поступления и расхода, для того чтобы проверить положительные и отрицательные значения в отчете, 
// так же проверить что данные вычитаются если по товару было поступление и расход, и поступление по нескольком документа прихода 
* Загрузка данных
	И я закрываю все окна клиентского приложения
	И Экспорт настроек
	И Экспорт документов Поступление товаров
	И Экспорт документов Продажа товаров

* Проведение документов
	И я закрываю все окна клиентского приложения
	
	И Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=8ca0000d8843cd1b11dc8cfecc6a7df7"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

	И Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=aaca086266c6d20f11e708c3a952b6dd"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

	И Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=bbef0050ba5c887711e1fc09069131ca"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

	И Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=aaca086266c6d20f11e708bd6f432fd1"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

Сценарий: Проверка отчета Остатки товаров

* Открытие отчета и выбор варианта
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И я нажимаю на кнопку с именем 'Загрузить'
	И я нажимаю на кнопку с именем 'ФормаСформировать'

* Проверка корректности отчета

	И Пауза 5
	И табличный документ "Результат" содержит строки из макета "ОстаткиТоваров" по шаблону
	И я закрываю все окна клиентского приложения