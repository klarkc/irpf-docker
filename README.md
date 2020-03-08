# IRPF: Declaração de Imposto no Docker
Instalar o Java? Não, obrigado.

Inspirado e forkado do @rochacbruno/irpf-docker

Este repo roda o programa da receita para envio da declaração do IRPF 2020 com suporte a atualizações.

> Esta imagem assume que caso você já tenha a pasta `ProgramasRFB` ela estará disponível no container para que você possa importar a declaração de anos anteriores.


## Rodar imagem pronta no DockerHub

```bash
./irpf.sh
```

## Contribuições

Sua ajuda é muito bem-vinda! Se virar o ano e eu não atualizar a imagem, ou se você tem uma sugestão de melhoria, mande seu Pull Request.

## Créditos

Fork do [rochacbruno/irpf-docker](https://github.com/rochacbruno/irpf-docker)

Imagem do carne leão do aurelio/
https://github.com/aureliojargas/carne-leao-docker

Inspirado pelo [andresmrm/docker-irpf](https://github.com/andresmrm/docker-irpf), que disponibilizou o programa principal do IRPF numa imagem com o Alpine Linux.

A diferença desta aqui é que ela mantem o acesso a pasta ProgramasRFB e suporta atualizações automáticas.
