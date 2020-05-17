# IRPF: Declaração de Imposto no Docker
Instalar o Java? Não, obrigado.

Inspirado e forkado do @rochacbruno/irpf-docker

Este repo roda o programa da receita para envio da declaração do IRPF com suporte a atualizações.

## Compilar e executar localmente com docker-compose

Execute o script `irpf.sh` em um terminal.

```bash
./irpf.sh up
```

## Contribuições

Sua ajuda é muito bem-vinda! Se virar o ano a imagem parar de construir, ou se você tem uma sugestão de melhoria, mande seu Pull Request.

## Créditos

Fork do [rochacbruno/irpf-docker](https://github.com/rochacbruno/irpf-docker)

Imagem do carne leão do aurelio/
https://github.com/aureliojargas/carne-leao-docker

Inspirado pelo [andresmrm/docker-irpf](https://github.com/andresmrm/docker-irpf), que disponibilizou o programa principal do IRPF numa imagem com o Alpine Linux.

A diferença desta aqui é que ela mantem o acesso a pasta ProgramasRFB e suporta atualizações automáticas.
