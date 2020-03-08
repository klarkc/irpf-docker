# Use Alpine Linux for minimal image size
FROM rochacbruno/irpf

ENV JAR="java -jar IRPF2019/irpf.jar"

ADD ./helpers /home/irpf/helpers

CMD helpers/run.sh
