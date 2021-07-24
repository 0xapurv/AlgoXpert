from typing import Set, Dict


def depth_first_search(graph: Dict, start: str) -> Set[int]:
    explored, stack = set(start), [start]
    while stack:
        v = stack.pop()
        # one difference from BFS is to pop last element here instead of first one
        for w in graph[v]:
            if w not in explored:
                explored.add(w)
                stack.append(w)
    return explored


G = {
    "A": ["B", "C", "D"],
    "B": ["A", "D", "E"],
    "C": ["A", "F"],
    "D": ["B", "D"],
    "E": ["B", "F"],
    "F": ["C", "E", "G"],
    "G": ["F"],
}

if __name__ == "__main__":
    print(depth_first_search(G, "A"))
