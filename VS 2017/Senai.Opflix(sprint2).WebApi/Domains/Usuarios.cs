﻿using System;
using System.Collections.Generic;

namespace Senai.Opflix_sprint2.WebApi.Domains
{
    public partial class Usuarios
    {
        public int IdUsuario { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public int? IdTipoUsuario { get; set; }

        public TipoUsuarios TipoUsuario { get; set; }
    }
}
