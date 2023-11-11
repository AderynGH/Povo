-- Dijkstra algorithm (Uses Astar implementation)

if (...) then

  local astar_search = require ('vendor.jumper.jumper.search.astar')
  -- Dijkstra is similar to aStar, with no heuristics
  local dijkstraHeuristic = function() return 0 end

  -- Calculates a path.
  -- Returns the path from location `<startX, startY>` to location `<endX, endY>`.
  return function (finder, startNode, endNode, clearance, toClear)
    return astar_search(finder, startNode, endNode, clearance, toClear, dijkstraHeuristic)
  end

end