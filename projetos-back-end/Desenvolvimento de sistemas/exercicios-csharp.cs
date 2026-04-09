// ============================================
// EXERCÍCIOS COM CLASSE Math EM C#
// ============================================
// Este código reúne exercícios básicos utilizando a classe Math da linguagem C#.
//
// O objetivo foi explorar funções matemáticas nativas da linguagem, incluindo:
// - operações básicas (abs, min, max)
// - arredondamento
// - exponenciação e raiz
// - logaritmos
// - trigonometria
// - constantes matemáticas
//
// Apesar de simples, este conjunto de exercícios mostra familiaridade com:
// - uso de bibliotecas padrão
// - leitura de documentação
// - aplicação direta de funções utilitárias


using System;

namespace MyApplication
{
  class Program
  {
    static void Main(string[] args)
    {
      // exercicio 1
      // Retorna o valor absoluto (remove o sinal negativo)
      Console.WriteLine(Math.Abs(-15));

      // exercicio 2
      // Arredonda o número para cima (teto)
      Console.WriteLine(Math.Ceiling(5.3));

      // exercicio 3
      // Arredonda o número para baixo (piso)
      Console.WriteLine(Math.Floor(9.8));

      // exercicio 4
      // Retorna o maior valor entre dois números
      Console.WriteLine(Math.Max(10,20));

      // exercicio 5
      // Retorna o menor valor entre dois números
      Console.WriteLine(Math.Min(7,-3));

      // exercicio 6
      // Calcula potência (2 elevado a 4)
      Console.WriteLine(Math.Pow(2, 4));

      // exercicio 7
      // Calcula raiz quadrada
      Console.WriteLine(Math.Sqrt(81));

      // exercicio 8
      // Arredonda para o inteiro mais próximo
      // (observação: comportamento pode variar em casos .5 dependendo da implementação)
      Console.WriteLine(Math.Round(2.5));

      // exercicio 9
      // Remove a parte decimal sem arredondar
      Console.WriteLine(Math.Truncate(3.9));

      // exercicio 10
      // Exibe o valor da constante PI
      Console.WriteLine(Math.PI);

      // exercicio 11
      // Logaritmo natural (base e)
      Console.WriteLine(Math.Log(1));

      // exercicio 12
      // Logaritmo natural de 10
      // (linha duplicada de Math.Log(1), provavelmente repetição no exercício)
      Console.WriteLine(Math.Log(10));
      Console.WriteLine(Math.Log(1));

      // exercicio 13
      // Exponencial: e elevado a 1
      Console.WriteLine(Math.Exp(1));

      // exercicio 14
      // Seno de PI/2 (resultado esperado: 1)
      Console.WriteLine(Math.Sin(Math.PI / 2));

      // exercicio 15
      // Cosseno de 0 (resultado esperado: 1)
      Console.WriteLine(Math.Cos(0));

      // exercicio 16
      // Tangente de 0 (resultado esperado: 0)
      Console.WriteLine(Math.Tan(0));

      // exercicio 17
      // Retorna o sinal do número:
      // -1 (negativo), 0 (zero), 1 (positivo)
      Console.WriteLine(Math.Sign(-50));

      // exercicio 18
      // Limita o valor dentro de um intervalo (clamp)
      // 15 será limitado entre 0 e 10 → resultado: 10
      Console.WriteLine(Math.Clamp(15, 0, 10));

      // exercicio 19
      // Calcula o resto conforme padrão IEEE (difere do operador %)
      Console.WriteLine(Math.IEEERemainder(10, 3));

      // exercicio 20
      // Calcula o arco tangente considerando dois valores (y, x)
      // útil para ângulos em coordenadas cartesianas
      Console.WriteLine(Math.Atan2(1, 1));
    }
  }
}