using Senai.Opflix_sprint2.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Opflix_sprint2.WebApi.Interfaces
{
    public interface IGeneroRepository
    {
        List<Generos> Listar();

        void Cadastrar(Generos genero);

        Generos BuscarPorId(int id);

        void Atualizar(Generos genero);

        void Deletar(int id);
    }
}
