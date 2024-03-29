﻿using System;
using System.Collections.Generic;

namespace Senai.Opflix_sprint2.WebApi.Domains
{
    public partial class Generos
    {
        public Generos()
        {
            Lancamentos = new HashSet<Lancamentos>();
        }

        public int IdGenero { get; set; }
        public string Nome { get; set; }

        public ICollection<Lancamentos> Lancamentos { get; set; }
    }
}
