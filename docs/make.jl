using Documenter
using DocumenterLandingPage

# Stage only Markdown sources, keeping generated files out of future builds.
const pages = sort(filter(f -> endswith(f, ".md"), readdir(@__DIR__)))
mktempdir() do source
    for page in pages
        cp(joinpath(@__DIR__, page), joinpath(source, page))
    end
    makedocs(;
        root = @__DIR__,
        source,
        build = joinpath(@__DIR__, "build"),
        sitename = "OpenSymbolicRules — Calculus",
        repo = Remotes.GitHub("OpenSymbolicRules", "Calculus"),
        remotes = nothing,
        plugins = [LandingPage()],
        pages = ["index.md"; filter(!=("index.md"), pages)],
        format = Documenter.HTML(;
            edit_link = nothing,
            repolink = "https://github.com/OpenSymbolicRules/Calculus",
            inventory_version = "0.1.0",
            canonical = "https://OpenSymbolicRules.github.io/Calculus/",
        ),
    )
end

# Keep the complete Markdown documentation alongside the generated HTML.
open(joinpath(@__DIR__, "build", "llms.txt"), "w") do io
    println(io, "# OpenSymbolicRules — Calculus\n")
    for page in pages
        title = replace(first(split(read(joinpath(@__DIR__, page), String), '\n')), r"^#+\s*" => "")
        url = page == "index.md" ? "./" : replace(page, ".md" => "/")
        println(io, "- [", title, "](", url, ")")
    end
end
open(joinpath(@__DIR__, "build", "llms-full.txt"), "w") do io
    for page in ["index.md"; filter(!=("index.md"), pages)]
        println(io, read(joinpath(@__DIR__, page), String), "\n")
    end
end
