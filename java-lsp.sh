#!/usr/bin/env bash

# NOTE:
# This doesn't work as is on Windows. You'll need to create an equivalent `.bat` file instead
#
# NOTE:
# If you're not using Linux you'll need to adjust the `-configuration` option
# to point to the `config_mac' or `config_win` folders depending on your system.

# JAR="$HOME/projects/jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_*.jar"
# GRADLE_HOME=$HOME/gradle /Users/phazo/.jenv/versions/11/bin/java \
#   -Declipse.application=org.eclipse.jdt.ls.core.id1 \
#   -Dosgi.bundles.defaultStartLevel=4 \
#   -Declipse.product=org.eclipse.jdt.ls.core.product \
#   -Dlog.protocol=true \
#   -Dlog.level=ALL \
#   -Xms1g \
#   -Xmx2G \
#   -jar $(echo "$JAR") \
#   -configuration "$HOME/projects/jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_mac" \
#   -data "${1:-$HOME/projects}" \
#   --add-modules=ALL-SYSTEM \
#   --add-opens java.base/java.util=ALL-UNNAMED \
#   --add-opens java.base/java.lang=ALL-UNNAMED


  # -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 \

  # -Xbootclasspath/a:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.20/lombok-1.18.20.jar \
JAR="$HOME/projects/jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_*.jar"
GRADLE_HOME=$HOME/gradle 
/Users/phazo/.jenv/versions/11/bin/java \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -javaagent:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.20/lombok-1.18.20.jar \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "$HOME/projects/jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_mac" \
  -data "${1:-$HOME/projects/workspace}" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED
