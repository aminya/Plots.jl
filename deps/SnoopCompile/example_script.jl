# using Plots
# Plots.test_examples(:gr)
# Plots.test_examples(:plotly, skip = Plots._backend_skips[:plotly])

# run the tests
include("$(dirname(dirname(@__DIR__)))/test/runtests.jl")
