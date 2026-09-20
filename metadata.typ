#let format_strane = "a4"         // могуће вредности: iso-b5, a4
#let naslov = "DSL и LSP за генерисање тест података"
#let autor = "Лазар Нагулов"

// На енглеском
#let naslov_eng = "DSL and LSP for test data generation"
#let autor_eng = "Lazar Nagulov"

#let indeks = "SV61/2022"

// Име и презиме ментора
#let mentor = "Игор Дејановић"
// Звање: редовни професор, ванредни професор, доцент
#let mentor_zvanje = "редовни професор"

// Скинути коментаре са одговарајућих линија
#let studijski_program = "Софтверско инжењерство и информационе технологије"
//#let studijski_program = "Рачунарство и аутоматика"
// #let stepen = "Мастер академске студије"
#let stepen = "Основне академске студије"

#let godina = [#datetime.today().year()]

#let kljucne_reci = "генерисање тест података, језик специфичан за домен, протокол језичких сервера, преводилац, " +  [_Rust_] + ", статичка анализа, стохастички генератор."
#let apstrakt = [
    У раду су представљени дизајн и имплементација екстерног језика специфичног за домен (DSL) за генерисање тест података. Имплементиран је преводилац у програмском језику _Rust_, са лексичком, синтаксном и семантичком анализом и модуларном архитектуром заснованом на високонивојској међурепрезентацији (HIR). Генератор подржава статистичке расподеле и очување референцијалног интегритета. Реализован је и језички сервер (LSP) за статичку анализу и допуњавање кода. Мерење перформанси показује потрошњу меморије од 2 MB и време извршавања од 3,63 s при генерисању 500.000 записа. Решење постиже краће време извршавања од референтних имплементација у _Python_-у и _JavaScript_-у и испуњава критеријуме интерактивног рада за датотеке до 100.000 линија кода.
]

// На енглеском
#let kljucne_reci_eng = "test data generation, domain-specific language, Language Server Protocol, compiler, Rust, static analysis, stochastic generation."
#let apstrakt_eng = [
    This thesis presents the design and implementation of an external Domain-Specific Language (DSL) for test data generation. The toolchain includes a compiler implemented in Rust that performs lexical, syntactic, and semantic analysis, with a modular architecture based on a High-Level Intermediate Representation (HIR). The generator supports statistical distributions and preserves referential integrity. A Language Server Protocol (LSP) server provides static analysis and code completion. Performance evaluation shows a memory footprint of 2 MB and an execution time of 3.63 s for generating 500,000 records. The solution achieves shorter execution times than reference implementations in Python and JavaScript and meets interactive performance requirements for files of up to 100,000 lines of code.
]

// TODO: Текст задатка добијате од ментора. Заменити доле #lorem(100) са текстом задатка.
#let zadatak = [

    Пројектовати и имплементирати екстерни језик специфичан за домен (_DSL_) са
декларативном синтаксом за потребе стохастичког генерисања тест података уз
очување референцијалног интегритета. Реализовати наменски преводилац у
програмском језику _Rust_, који обухвата фазе лексичке, синтаксне и семантичке
анализе, као и трансформацију у високонивојску међурепрезентацију (_HIR_).
Омогућити подршку за модуларни систем са засебним превођењем и бинарном
серијализацијом модула. Развити пратећи језички сервер заснован на Протоколу
језичких сервера (_LSP_) ради интеграције са савременим развојним окружењима и
пружања дијагностике у реалном времену. Спровести емпиријску евалуацију
перформанси превођења, скалабилности модула, токовне генерације података и
времена одзива језичког сервера.

]

// TODO: Датум одбране и чланове комисије добијате од ментора
#let datum_odbrane = "23.09.2026"
#let komisija_predsednik = "Никола Лубурић"
#let komisija_predsednik_zvanje = "ванредни професор"
#let komisija_clan = "Милан Стојков"
#let komisija_clan_zvanje = "доцент"

// На енглеском уписати чланове на латиници
#let komisija_predsednik_eng = "Nikola Luburić"
#let komisija_clan_eng = "Milan Stojkov"
#let mentor_eng = "Igor Dejanović"

// Ово даље углавном не треба мењати.

#let zvanje_eng = (
     "редовни професор": "full professor",
     "ванредни професор": "assoc. professor",
     "доцент": "asist. professor",
)
#let komisija_predsednik_zvanje_eng = zvanje_eng.at(komisija_predsednik_zvanje)
#let komisija_clan_zvanje_eng = zvanje_eng.at(komisija_clan_zvanje)
#let mentor_zvanje_eng = zvanje_eng.at(mentor_zvanje)


#let vrsta_rada = if stepen == "Мастер академске студије" {
    "Дипломски - мастер рад"
} else {
    "Дипломски - бечелор рад"
}

#let oblast = "Електротехничко и рачунарско инжењерство"
#let oblast_eng = "Electrical and Computer Engineering"
#let disciplina = "Примењене рачунарске науке и информатика"
#let disciplina_eng = "Applied computer science and informatics"

#import "funkcije.typ": *
// Поглавља/страна/цитата/табела/слика/графика/прилога
#let fizicki_opis = physical()
