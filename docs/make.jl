push!(LOAD_PATH,"../src/")
using Documenter, Looping

DocMeta.setdocmeta!(Looping.Utilities, :DocTestSetup, :(using Looping.Utilities); recursive=true)
makedocs(sitename="Looping Documentation", modules=[Looping.Utilities], draft=false, strict=:doctest)
