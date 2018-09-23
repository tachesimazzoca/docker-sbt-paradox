FROM tachesimazzoca/sbt-base:8u181_2.12.6_1.2.3

ARG paradoxVersion="0.3.2"

WORKDIR /tmp/sbt-paradox
RUN mkdir project && \
  echo 'name := "sbt-paradox"' > build.sbt && \
  echo "addSbtPlugin(\"com.lightbend.paradox\" % \"sbt-paradox\" % \"${paradoxVersion}\")" \
    > project/plugins.sbt && \
  sbt sbtVersion && \
  cd /tmp && \
  rm -rf sbt-paradox

WORKDIR /root
