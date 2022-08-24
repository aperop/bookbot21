# Prototype

Необходимо разработать Telegram-бота для бронирования абитуриентами, студентами и сотрудниками Школы любых школьных объектов:

* Переговорок (все категории пользователей);
* Спортивного инвентаря (студенты и сотрудники);
* Настольных игр (студенты и сотрудники);
* Кухни (только сотрудники).

Возможности:

Бронирование объектов, просмотр объектов и их бронирований.

Каждый объект должен описываться:

* Типом;
* Названием;
* Описанием;
* Изображением (опционально);
* Кампусом;
* Этажом;
* Номером комнаты.

Каждый пользователь должен описываться:

* Ролью;
* Именем;
* Логином;
* Кампусом.

Сущность брони предусмотреть универсальную, и описываемую:

* Временем начала;
* Временем окончания;
* Статусом.

Предусмотреть возможность отмены брони.

## Contents

1. [Chapter I](#chapter-i) \
   1.1. [Intro](#intro)
2. [Chapter II](#chapter-ii) \
   2.1. [Task Prototype](#task-prototype)
3. [Chapter III](#chapter-iii) \
   3.1. [Part 1. Бекенд](#part-1-бекенд)  
   3.2. [Part 2. Базовый UI](#part-2-базовый-ui)  
   3.3. [Part 3. Админка](#part-3-админка)  
   3.4. [Part 4. Bonus. CI/CD и Extra UI](#part-4-bonus-cicd-и-extra-ui)


# Chapter I

## Intro


Провозившись с анализом и проектированием целый день (а лучше сказать, целые сутки), вы решили, что стоит приступать к
разработке прототипа. Разработка прототипа — это задача совсем иная, нежели полноценная разработка информационной
системы, или даже разработка MVP. В разработке прототипа часто приходится закрывать глаза на не совсем корректные
архитектурные и технологические решения, и действовать часто тактически, а не стратегически. Тем не менее у разработки
прототипа важная цель — апробировать гипотезу, убедиться, что текущая формализация и постановка задачи действительно
отвечают имеющейся проблематике, а также убедиться в жизнеспособности выбранных архитектурных концепций и
технологических решений. Одним словом, вы договорились так: делать хорошо, как полагается, и в соответствии с уже
подготовленным проектом, но так, чтобы уложиться в 4 дня и реализовать весь необходимый, базовый функционал - и заложить
еще пару дней на подготовку решения к защите перед в-ром.


# Chapter II

## Task Prototype

Вы решили следовать (насколько это возможно, в столь сжатые сроки) концепции чистой архитектуры и двигаться в разработке
слоями, взяв за основу классическую трехслойную архитектуру: ядро (доменные сущности и правила бизнес-логики), слой
доступа к данным (паттерн репозиторий) и слой шлюза для реализации UI.


# Chapter III

*Замечание:* Не забудьте перед началом работы перенести папку src из своего первого проекта!

## Part 1. Бекенд

| Задача | Артефакт                                                        | Рекомендации |  
|--------|-----------------------------------------------------------------|--------------|  
| 1.1. Разработка бекенда (ядра системы) | Программный код ядра системы <br/> *src/prototype/kernel* | -=no comments=- |
| 1.2. Разработка бекенда (слоя доступа к данным) | Программный код слоя доступа к данным <br/> *src/prototype/dal* | -=no comments=- |
| 1.3. Разработка бекенда (шлюза/контроллера для доступа к функциям системы)  | Программный код шлюза <br/> *src/prototype/gateway* | -=no comments=- |

## Part 2. Базовый UI

| Задача | Артефакт                                                                                                                     | Рекомендации |  
|--------|------------------------------------------------------------------------------------------------------------------------------|--------------|  
| 2.1. Разработка UI на командах телеграмма | Программный код слоя UI <br/> *src/prototype/basicui* | -=no comments=- |

## Part 3. Админка

| Задача                 | Артефакт                                                         | Рекомендации    |  
|------------------------|------------------------------------------------------------------|-----------------|  
| 3.1. Разработка админ-панели на командах телеграмма (либо отдельный Web-интерфейс) | Программный код админ-панели системы <br/> *src/prototype/admin* | -=no comments=- |

## Part 4. Bonus. CI/CD и Extra UI

| Задача | Артефакт                                            | Рекомендации |  
|--------|-----------------------------------------------------|--------------|  
| 4.1. Разработка второй версии UI на базе web-приложения (Web App) Telegram | Программный код слоя UI <br/> *src/prototype/webui* | -=no comments=- |
| 4.2. Настройка CI  | Настроенный CI <br/> *.gitlab-ci.yml* | -=no comments=- |
| 4.3. Настройка CD  | Настроенный CD <br/> *.gitlab-ci.yml* | -=no comments=- |
