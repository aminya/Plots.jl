using SnoopCompile

botconfig = BotConfig(
  "Plots";
  os = ["linux", "windows", "macos"],
  version = [v"1.4.2", v"1.3.1", v"1.2.0"],
  blacklist = [""],
  exhaustive = false,
)

snoopi_bot(
  botconfig,
  "$(@__DIR__)/example_script.jl",
)
