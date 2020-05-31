using SnoopCompile

if VERSION < v"1.2.0"
  # for snoopc
  blacklist = [
      # functions defined in examples
      "PlotExampleModule",
      # the following are not visible to Plots, only its dependencies
      "CategoricalArrays",
      "FixedPointNumbers",
      "OffsetArrays",
      "SparseArrays",
      "StaticArrays",
      r"#{1,2}[^\"#]+#{1,2}\d+",
  ]
else
  # snoopi is more intelligent
  blacklist = []
end

botconfig = BotConfig(
  "Plots";
  os = ["linux", "windows", "macos"],
  version = [v"1.4.2", v"1.3.1", v"1.2.0", v"1.1.1"],
  blacklist = blacklist,
  exhaustive = false,
)

snoop_bot(
  botconfig,
  "$(@__DIR__)/example_script.jl",
)
