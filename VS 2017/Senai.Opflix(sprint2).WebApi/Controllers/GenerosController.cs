﻿using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.Opflix_sprint2.WebApi.Domains;
using Senai.Opflix_sprint2.WebApi.Interfaces;
using Senai.Opflix_sprint2.WebApi.Repositories;

namespace Senai.Opflix_sprint2.WebApi.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    [ApiController]
    public class GenerosController : ControllerBase
    {
        private IGeneroRepository GeneroRepository { get; set; }

        public GenerosController()
        {
            GeneroRepository = new GeneroRepository();
        }

        [Authorize(Roles = "Administrador")]
        [HttpGet]
        public IActionResult Listar()
        {
            return Ok(GeneroRepository.Listar());
        }

        [HttpGet("{id}")]
        public IActionResult BuscarPorId(int id)
        {
            try
            {
                Generos genero = GeneroRepository.BuscarPorId(id);
                if (genero == null)
                    return NotFound();
                return Ok(genero);
            }
            catch (Exception ex)
            {
                return BadRequest(new { mensagem = ex.Message });
            }
        }

        [Authorize(Roles = "Administrador")]
        [HttpPost]
        public IActionResult Cadastrar(Generos genero)
        {
            try
            {
                //int IdGenero = Convert.ToInt32(HttpContext.User.Claims.First(x => x.Type == JwtRegisteredClaimNames.Jti).Value);
                //genero.IdGenero = IdGenero;
                //genero.Nome = ToString();
                //GeneroRepository.Cadastrar(genero);
                //return Ok();
                GeneroRepository.Cadastrar(genero);
                return Ok();

            }
            catch (System.Exception ex)
            {
                return BadRequest(new { mensagem = ex.Message });
            }
        }

        [HttpDelete("{id}")]
        public IActionResult Deletar(int id)
        {
            GeneroRepository.Deletar(id);
            return Ok();
        }

        [Authorize(Roles = "Administrador")]
        [HttpPut]
        public IActionResult Atualizar(Generos genero)
        {
            try
            {
                Generos GeneroBuscado = GeneroRepository.BuscarPorId(genero.IdGenero);
                if (GeneroBuscado == null)
                    return NotFound();
                GeneroRepository.Atualizar(genero);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest(new { mensagem = "Ah, não." });
            }
        }
    }
}