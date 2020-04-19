using SnoopCompile

println("load infer benchmark:")
@snoopi_bench "Plots" begin
    using Plots
    Plots.test_examples(:gr)
    Plots.test_examples(:plotly, skip = Plots._backend_skips[:plotly])
end


println("Examples/Tests infer benchmark")
@snoopi_bench "Plots"
