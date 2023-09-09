graph = {'A': set(['B', 'C']),
         'B': set(['A', 'D', 'E']),
         'C': set(['A', 'F']),
         'D': set(['B']),
         'E': set(['B', 'F']),
         'F': set(['C', 'E'])}                                                                                                                                                                                                                                                                                                                                                                       
def dfs(graph, start):
    visited, stack = set(), [start]
    while stack:
        vertex = stack.pop()
        if vertex not in visited:
            visited.add(vertex)
            stack.extend(graph[vertex] - visited)
    return visited
print("DFS: ",dfs(graph, 'A')) # {'E', 'D', 'F', 'A', 'C', 'B'}

def dfs_paths(graph, start, goal):
    stack = [(start, [start])]
    while stack:
        (vertex, path) = stack.pop()
        for next in graph[vertex] - set(path):
            if next == goal:
                yield path + [next]
            else:
                stack.append((next, path + [next]))
l1 = list(dfs_paths(graph, 'A', 'E')) # [['A', 'C', 'F'], ['A', 'B', 'E', 'F']]
print("Possible paths: ",l1)
def shortest_path(graph,start,goal):
    try:
        return next(dfs_paths(graph,start,goal))
    except:
        return None
print("Shortest path:",shortest_path(graph,'B','F'))

'''
Output :

DFS:  {'D', 'B', 'E', 'C', 'F', 'A'}
Possible paths:  [['A', 'B', 'E'], ['A', 'C', 'F', 'E']]
Shortest path: ['B', 'E', 'F']
'''
