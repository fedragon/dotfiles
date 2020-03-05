resolvers ++= Seq(
  "Sonatype OSS Releases" at "https://oss.sonatype.org/content/repositories/releases/"
)

addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.9.0")

addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.3.4")

