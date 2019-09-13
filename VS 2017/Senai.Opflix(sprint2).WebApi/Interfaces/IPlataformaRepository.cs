using Senai.Opflix_sprint2.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Opflix_sprint2.WebApi.Interfaces
{
    public interface IPlataformaRepository
    {
        List<Plataformas> Listar();

        void Cadastrar(Plataformas plataforma);

        Plataformas BuscarPorId(int id);

        void Atualizar(Plataformas plataforma);

        void Deletar(int id);
    }
}
