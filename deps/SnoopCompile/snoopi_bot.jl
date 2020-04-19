using SnoopCompile

@snoopi_bot BotConfig("Plots", blacklist = [], os = ["windows", "linux", "apple"], version = [v"1.4.1", v"1.3.1", v"1.2.0", v"1.0.5"]) begin
    using Plots
    Plots.test_examples(:gr)
    Plots.test_examples(:plotly, skip = Plots._backend_skips[:plotly])
end
