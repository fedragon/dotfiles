resolvers ++= Seq(
  "Sonatype OSS Releases" at "https://oss.sonatype.org/content/repositories/releases/",
  "Sonatype OSS Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots/"
)

addSbtPlugin("com.eed3si9n" %% "sbt-assembly" % "0.12.0")

addSbtPlugin("net.ceedubs"  %% "sbt-ctags"    % "0.1.0")
