using Pkg;
Pkg.activate(".") # remove if you don't want a virtual env

#=
dependencies = [
    "Random",
    "Statistics",
    "LinearAlgebra",
    "Plots",
    "StatsBase"
]
=#

dependencies = [
    "Plots",
    "Flux",
    "Images",
    "ImageTransformations",
    "Downloads",
    "StatsBase",
    "Statistics",
    "LinearAlgebra",
    "Random"
]

for pkg in dependencies
    if !haskey(Pkg.project().dependencies, pkg)
        Pkg.add(pkg)
    end
end

Pkg.instantiate()