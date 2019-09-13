--DML--

use T_OpFlix

insert into Tipos(Nome) 
values ('Filme'), ('Série');

select * from Tipos

insert into Plataformas(Nome)
values ('Cinema') , ('Prime Video') , ('Netflix');

select * from Plataformas

Insert into Generos(Nome)
values ('Filme musical') , ('Suspense') , ('Drama') , ('Animação');

select * from Generos order by IdGenero asc

insert into TipoUsuarios(Nome)
values ('Administrador') , ('Cliente');

select * from TipoUsuarios

insert into Usuarios(Nome, Email, Senha, IdTipoUsuario)
values ('Erick' , 'erick@gmail.com' , '123456' , 1) 
		,('Cassiana' , 'cassiana@email.com' , '123456' , 1)
		,('Helena' , 'helena@email.com' , '123456' , 2)
		,('Roberto' , 'rob@email.com' , '3110' , 2);

select * from Usuarios

insert into Lancamentos(Nome, Duracao_min, Classificacao, DataLancamento, Sinopse, IdPlataforma, IdGenero, IdTipo)
values ('O Rei Leão' , '118' , 'L' , '2019-07-18' , 'O Rei Leão, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno leão que idolatra seu pai, o rei Mufasa, é fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irmão de Mufasa e ex-herdeiro do trono, tem seus próprios planos. A batalha pela Pedra do Reino é repleta de traição, eventos trágicos e drama, o que acaba resultando no exílio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba terá que crescer e voltar para recuperar o que é seu por direito' , 1 , 1 , 1)
		,('La Casa De Papel 3 temp' , '650' , '16' , '2019-07-19' , 'Oito habilidosos ladrões se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da história e levar com eles mais de 2 bilhões de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como refém, além dos agentes da força de elite da polícia, que farão de tudo para que a investida dos criminosos fracasse.' , 3 , 2 , 2)
		,('Deuses Americanos' , '620' , '18+' , '2017-04-30' , 'Shadow Moon é um ex-vigarista que serve como segurança e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que é, na verdade, um dos velhos deuses, e está na Terra em uma missão: reunir forças para lutar contra as novas entidades.' , 2 , 3 , 2)
		,('Toy Story 4' , '100' , 'L' , '2019-06-20' , 'Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade é cuidar de sua criança, seja Andy ou Bonnie. Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrará a Woody quão grande o mundo pode ser para um brinquedo.' , 1 , 4 , 1);

select * from Lancamentos

