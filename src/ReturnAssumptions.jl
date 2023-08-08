module ReturnAssumptions

using JSON3

ports = copy(JSON3.read(read("assets/Model_Portfolios.json")))

allocs = ports[:Allocations]
allocs[:MSCI_Emerging] = vcat([0, 0, 0, 1], zeros(13))
allocs[:MSCI_EAFE]
allocs[:MSCI_EAFE] = vcat([0, 0, 1], zeros(14))
allocs[:Euro_Stoxx] = vcat([0, 0, 1], zeros(14))

open("assets/Model_Portfolios.json", "w") do io
    JSON3.pretty(io, allocs)
end


end
