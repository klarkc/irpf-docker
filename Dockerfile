# Use Alpine Linux for minimal image size
FROM rochacbruno/irpf

ARG url=http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-1.4.zip

ENV JAR="java -jar IRPF2019/irpf.jar"

ADD ./helpers /home/irpf/helpers

CMD helpers/run.sh
