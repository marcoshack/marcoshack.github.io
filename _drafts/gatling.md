---           
layout: post
title: "JMeter, Gatling, e a mudança de cultura na área de testes"
description: "Gatling é um ferramenta assíncrona de testes de carga que utiliza uma DSL em Scala para criação de cenários."
image: gatling-logo-with-no-gun.png
categories: [ programação, performance ]
tags: [ gatling, jmeter, performance, stress-test, load-test ]
---

Desde que o mundo é mundo quando pensamos em teste de carga pensamos em [JMeter](http://jmeter.apache.org/). Existem outras ferramentas conhecidas, como o também open-source [ab](http://httpd.apache.org/docs/2.2/programs/ab.html), além de outras tantas ferramentas comerciais. Mas via de regra o JMeter costuma ser a primeira opção. No geral o JMeter é uma ferramenta bem descente, madura, com uma GUI fácil de usar, suporte a muitos protocolos e centenas de plugins pra facilitar a vida. 

Mas nem tudo são flores, e duas características dessa ferramenta sempre incomodaram bastante: sua natureza síncrona, com o conceito de uma thread por usuário virtual, e a pouco amigável representação XML dos cenários de teste.

A representação em XML para a maioria nunca foi um problema tão grande, até porque em muitas empresas a criação dos cenários e execução dos testes são responsabilidades de um time de QA, que historicamente são formados por profissionais de TI especializados porém geralmente não programadores. Porém esse perfil vem mudando nos últimos anos, principalmente devido a necessidade de automação de testes. Além disso, a tão falada cultura [DevOps](http://en.wikipedia.org/wiki/DevOps) vem aproximando não só as áreas de desenvolvimento e operações, mas também a equipes de qualidade, pois descobrimos que tão ruim quanto jogar um pacote de software para o outro lado do muro para ser instalado e configurado, 

Com a aproximação ...
