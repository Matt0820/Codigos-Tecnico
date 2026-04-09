// ============================================
// EXERCÍCIO DE ESTRUTURA DE CONTROLE (C#)
// ============================================
// Este código demonstra o uso combinado de:
// - estrutura de repetição (for)
// - estrutura condicional (switch-case)
//
// A ideia é percorrer uma sequência de valores e,
// com base no valor atual, executar diferentes ações.
//
// Apesar de simples, este exercício mostra compreensão
// de fluxo de execução e tomada de decisão em C#.


using System;

namespace myApplication
{
class myInfos
  {
  static void Main(string[] args)
    {
        // Loop que percorre valores de 0 até 8
        // (observação: o valor 0 não possui case correspondente)
        for (int infos = 0; infos <9; infos++)
            {
              // Estrutura de decisão baseada no valor da variável "infos"
              switch(infos)
              {
                  case 1:
                      // Impressão de um identificador (formato semelhante a CPF)
                      Console.WriteLine("123.456.789-10");
                  break;

                  case 2:
                      // Nome
                      Console.WriteLine("Mateus");
                  break;

                  case 3:
                      // Idade (em formato string)
                      Console.WriteLine("17");
                  break;

                  case 4:
                      // Outro identificador numérico
                      Console.WriteLine("820.36598325-4");
                  break;

                  case 5:
                      // Valor numérico com formatação
                      Console.WriteLine("16.545.254.2");
                  break;

                  case 6:
                      // Nome/apelido
                      Console.WriteLine("junin");
                  break;

                  case 7:
                      // Nome/apelido
                      Console.WriteLine("cleitin");
                  break;

                  case 8:
                      // Nome/apelido
                      Console.WriteLine("thor");
                  break;
               }
        }
    }
  }
}