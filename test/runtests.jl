using MyCoolPackage
using Test

@testset "MyCoolPackage.jl" begin
    # Write your tests here.
    @test MyCoolPackage.greeting() == "Hello MyCoolPackage!"
    @test MyCoolPackage.greeting() != "Hello world!"
end
