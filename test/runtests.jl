using Transcripts
using Test
using Aqua

@testset "Transcripts.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(Transcripts)
    end
    # Write your tests here.
end
