---           
layout: post
title: Amazon Web Services leva a educação às núvens
date: 2009-05-05 12:56:47 UTC
updated: 2009-05-05 12:56:47 UTC
categories: cloud
---

É fato que a Amazon saiu na frente no mercado de [Cloud Computing](http://en.wikipedia.org/wiki/Cloud_computing) com seu serviço [Amazon Web Services](http://aws.amazon.com/). O serviço foi lançado em 2006, mas foi em meados de 2008 que passou a ganhar mais destaque devido ao grande interesse do mercado na chamada computação em nuvem, que basicamente é a venda de recursos computacionais como serviço na Internet. E ainda não há no mercado um sistema tão simples de usar e com um esquema de tarifação tão atrativo como o da Amazon.

No serviço Elastic Cloud Computing, ou EC2, basicamente a Amazon cobra por tempo de uptime de uma "máquina", chamada instância. Uma instância *small* por exemplo, com capacidade computacional equivalente a um computador com processador AMD Opteron(tm) Dual-Core de 2.5GHz com 2GB custa US$ 0,10 por hora para Linux e Unix, e US$ 0,125 para instâncias Windows, além dos custos de tráfego de rede e armazenamento (ver [EC2 pricing](http://aws.amazon.com/ec2/#pricing)). Mas o serviço EC2 é apenas um dos 15 [serviços oferecidos](http://aws.amazon.com/products/) atualmente.

O mais interessante é que você pode subir quantas instâncias quiser com um único comando. Em questão de segundos uma ou "n" máquinas estão no ar, pode-se criar imagens customizadas com todo o software necessário e simplesmente dar um comando como

    ec2-run-instances -n 50 ami-id

para subir 50 instâncias da imagem identificada com `ami-id` na nuvem. Dai pra frente você acessa a console das máquinas via SSH ou Terminal Services. E o melhor, pagando US$ 5,00 por hora por um recurso computacional equivalente a 50 computadores Dual-Core e 100GB de memória ao todo! Imagine ter que alugar ou comprar essas máquinas, switches e roteadores, instalar o sistema operacional e programas necessários nas 50 máquinas, e etc, etc, etc. Pra quem rala pra conseguir meia-dúzia de máquinas no laboratório da empresa sabe o que isso significa.

E pra melhorar ainda mais essa oferta a Amazon lançou um [programa educacional](http://aws.amazon.com/education/), onde professores e estudantes podem utilizar a nuvem para lecionar disciplinas relacionadas a computação e desenvolver projetos acadêmicos, e de graça!

Cada professor pode ter até 2 disciplinas simultâneas, com US$ 100,00 de crédito para cada aluno usar durante até 1 ano. Chega de brigar com os laboratoristas para instalar o programa X, liberar as portas Y e Z, e todos os percalços que todo professor e estudante já tiveram que lidar para conseguir recursos nos laboratórios da faculdade.

Tenho certeza que esse tipo de infraestrutura motivaria muito os estudantes de computação, além de ser uma tecnologia "em alta" e com toda certeza uma tendência sem volta para o mercado, os estudantes têm a sua disposição uma capacidade computacional e um ambiente de desenvolvimento que apenas grandes empresas poderiam bancar.

É claro que esse tipo de inciativa visa formar profissionais capacitados a trabalhar nesse novo ambiente, é um investimento que com certeza retornará para a Amazon na forma de novos clientes que só poderão utilizar esse tipo de serviço se puderem contar com mão-de-obra capacitada. Mas independente da plataforma, interface e produtos específicos que a Amazon oferece atualmente, os conceitos utilizados para o desenvolvimento de aplicações para rodar nesse tipo ambiente servirá para qualquer outra nuvem, seja o [Google App Engine](http://appengine.google.com/), [Sun Cloud Computing](http://www.sun.com/solutions/cloudcomputing/index.jsp), ou até mesmo na sua "nuvenzinha particular" criada com o promissor projeto open source [Eucalyptus](http://open.eucalyptus.com/).

Parabéns pela iniciativa da Amazon e boa sorte para os professores, estudantes e profissionais que decidirem aceitar o desafio e sair na frente nessa nova e excitante era da computação!
