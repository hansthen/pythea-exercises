inf = float('inf')

class Dijkstra:
    def __init__(self, nodes, edges):
        self.nodes = nodes
        self.edges = edges
        self.source = nodes[0]
        self.distances = {node: inf for node in nodes}
        self.distances[self.source] = 0.0
        self.unvisited = set(nodes)
        self.tree = []
        while self.unvisited:
            lowest = min(self.unvisited, key=lambda node: self.distances[node])
            print lowest
            # now find the nodes adjacent to the lowest and prune their costs
            adjacent = [edge for edge in self.edges if lowest in edge]
            print adjacent
            for edge in adjacent:
                node = edge.replace(lowest, "")
                if node in self.unvisited and self.distances[node] > self.edges[edge] + self.distances[lowest]:
                    self.distances[node] = self.edges[edge] + self.distances[lowest]
            print self.distances
            self.unvisited.remove(lowest)


if __name__ == '__main__':
    nodes = "ABCDEFGH"
    edges = {"AB": 4,
             "AE": 10,
             "BC": 2,
             "BE": 4,
             "BF": 3,
             "BG": 3,
             "CD": 2,
             "CE": 1,
             "CH": 3,
             "DE": 2,
             "EF": 2,
             "FG": 4}

    d = Dijkstra(nodes, edges)



