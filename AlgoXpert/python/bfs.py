G = {
    "A": ["B", "C"],
    "B": ["A", "D", "E"],
    "C": ["A", "F"],
    "D": ["B"],
    "E": ["B", "F"],
    "F": ["C", "E"],
}


def bfs(graph, start):
    explored, queue = set(), [start]  # collections.deque([start])
    explored.add(start)
    while queue:
        v = queue.pop(0)  # queue.popleft()
        for w in graph[v]:
            if w not in explored:
                explored.add(w)
                queue.append(w)
    return explored


if __name__ == "__main__":
    print(bfs(G, "A"))
