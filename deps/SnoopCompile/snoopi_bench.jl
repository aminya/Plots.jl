using SnoopCompile

botconfig = BotConfig(
  "Plots";
  os = ["linux", "windows", "macos"],
  version = [v"1.4.2", v"1.3.1", v"1.2.0"],
  blacklist = [""],
  exhaustive = false,
)

println("Benchmarking the inference time of `using Plots`")
snoopi_bench(
  botconfig,
  :(using Plots),
)


println("Benchmarking the inference time of example_script.jl")
snoopi_bench(
  botconfig,
  "$(@__DIR__)/example_script.jl",
)
