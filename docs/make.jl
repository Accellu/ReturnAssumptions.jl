using ReturnAssumptions
using Documenter

DocMeta.setdocmeta!(ReturnAssumptions, :DocTestSetup, :(using ReturnAssumptions); recursive=true)

makedocs(;
    modules=[ReturnAssumptions],
    authors="John Stevens",
    repo="https://github.com/j-h-stevens/ReturnAssumptions.jl/blob/{commit}{path}#{line}",
    sitename="ReturnAssumptions.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://j-h-stevens.github.io/ReturnAssumptions.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/j-h-stevens/ReturnAssumptions.jl",
    devbranch="main",
)
