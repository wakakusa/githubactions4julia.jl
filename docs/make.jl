using githubactions4julia
using Documenter

DocMeta.setdocmeta!(githubactions4julia, :DocTestSetup, :(using githubactions4julia); recursive=true)

makedocs(;
    modules=[githubactions4julia],
    authors="wakakusa",
    repo="https://github.com/wakakusa/githubactions4julia.jl/blob/{commit}{path}#{line}",
    sitename="githubactions4julia.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wakakusa.github.io/githubactions4julia.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wakakusa/githubactions4julia.jl",
)
