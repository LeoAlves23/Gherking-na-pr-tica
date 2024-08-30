Feature: Emissão do certificado

    Eu, como aluno da plataforma
    Gostaria de ao completar o curso, que seja emitido o certificado
    Porque, assim, consigo comprovar meu conhecimento técnico


Background: Estar matriculado no curso Gherking
Given que estou logado na plataforma
And e possuo matricula ativa

Scenario Outline: Emissão de certificado
And matriculado no curso <nomeCurso>
When finalizo o meu curso
Then tenho o meu certificado emitido

Examples:
    | nomeCurso |
    | "Gherking" |
    | "Ágil" |
    | "Gherking" |


Scenario: Curso em andamento
When assisto as aulas
Then tenho o meu certificado disponível
But possuo aulas assitidas