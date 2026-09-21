# DSL and LSP for Test Data Generation / DSL и LSP за генерисање тест података

> **Bachelor Thesis** - Faculty of Technical Sciences, University of Novi Sad  
> **Study Program:**: Software Engineering and Information Technologies  
>
> **Дипломски рад** - Факултет техничких наука, Универзитет у Новом Саду  
> **Студијски програм:** Софтверско инжењерство и информационе технологије

*(English version below / Верзија на српском језику је испод)*

---
This repository contains the thesis document and describes the infrastructure for an external Domain-Specific Language (DSL) for stochastic test data generation. 

### Features
- **Compiler:** Developed in the Rust programming language, featuring lexical, syntactic and semantic analysis.
- **Modular Architecture:** Built upon a High-level Intermediate Representation (HIR) and binary serialization.
- **LSP Integration:** A Language Server Protocol (LSP) server providing static analysis and code completion within IDEs.
- **High Performance:** The system maintains a memory footprint of 2 MB and can generate 500,000 records in 3.63 s.

### Implementation Source Code
The actual source code for the compiler, generator and the LSP server can be found in the following repository:
**[Link to the implementation repository](https://github.com/lazarnagulov/testa)**

---
Овај репозиторијум садржи текст рада и описује инфраструктуру за екстерни језик специфичан за домен (DSL) за генерисање тест података.

### Функционалности
- **Преводилац:** Развијен у програмском језику Rust, са имплементираном лексичком, синтаксном и семантичком анализом.
- **Модуларна архитектура:** Заснива се на високонивојској међурепрезентацији (HIR) и бинарној серијализацији.
- **LSP Интеграција:** Развијен језички сервер који омогућава статичку анализу и допуњавање кода унутар развојних окружења.
- **Високе перформансе:** Систем задржава потрошњу меморије од 2 MB и генерише 500.000 записа за 3,63 s.

### Изворни код имплементације
Конкретан изворни код преводиоца, генератора и језичког сервера можете пронаћи у следећем репозиторијуму:
**[Линк ка репозиторијуму са имплементацијом](https://github.com/lazarnagulov/testa)**
