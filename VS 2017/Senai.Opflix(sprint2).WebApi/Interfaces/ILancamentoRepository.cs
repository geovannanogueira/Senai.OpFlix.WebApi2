using Senai.Opflix_sprint2.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Opflix_sprint2.WebApi.Interfaces
{
    public interface ILancamentoRepository
    {
        List<Lancamentos> Listar();

        void Cadastrar(Lancamentos lançamento);

        Lancamentos BuscarPorId(int id);

        void Atualizar(Lancamentos lancamento);

        void Deletar(int id);
    }
}
