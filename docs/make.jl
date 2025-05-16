using Transcripts
using Documenter

DocMeta.setdocmeta!(Transcripts, :DocTestSetup, :(using Transcripts); recursive=true)

makedocs(;
    modules=[Transcripts],
    authors="rail.lexis and contributors",
    sitename="Transcripts.jl",
    format=Documenter.HTML(;
        canonical="https://raillexis.github.io/Transcripts.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/raillexis/Transcripts.jl",
    devbranch="main",
)
