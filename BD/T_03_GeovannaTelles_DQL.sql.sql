--DQL--

use T_OpFlix

select Usuarios.Nome, TipoUsuarios.Nome
from Usuarios
join TipoUsuarios
on Usuarios.IdTipoUsuario = TipoUsuarios.IdTipoUsuario

select Lancamentos.Nome, Plataformas.Nome
from Lancamentos
join Plataformas
on Lancamentos.IdPlataforma = Plataformas.IdPlataforma

select Lancamentos.Nome, Generos.Nome
from Lancamentos
join Generos
on Lancamentos.IdGenero = Generos.IdGenero

select Lancamentos.Nome, Tipos.Nome
from Lancamentos
join Tipos
on Lancamentos.IdTipo = Tipos.IdTipo

create procedure FilmeData
as
select Nome, DataLancamento from Lancamentos
go

exec FilmeData