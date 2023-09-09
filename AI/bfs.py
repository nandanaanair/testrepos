graph={"A":['B','C'],
       "B":['A','D','E'],
       "C":['A','F'],
       "D":['B'],
       'E':['B','F'],
       'F':['C','E']
}


def bfs(graph, strt):
    visited = {strt}
    q, bfsl = [strt], [strt]
    while len(q) != 0:
        ver = q.pop(0)
        for i in graph[ver]:            #i=B
            if i not in visited:        
                q.append(i)             #q=[A,B]
                bfsl.append(i)          #bfsl=[A,B]
                visited.add(i)          #visited={A,B}

    return bfsl



print(bfs(graph,'A'))
