FROM tachesimazzoca/sbt-base:latest

ARG paradoxVersion

WORKDIR /tmp/sbt-paradox
RUN mkdir project && \
  echo 'name := "sbt-paradox"' > build.sbt && \
  echo "addSbtPlugin(\"com.lightbend.paradox\" % \"sbt-paradox\" % \"${paradoxVersion}\")" \
    > project/plugins.sbt && \
  sbt sbtVersion && \
  cd /tmp && \
  rm -rf sbt-paradox

WORKDIR /root
