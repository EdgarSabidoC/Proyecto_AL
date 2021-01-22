def ProyOrt(A, u, v):
    # A es una matriz.
    # u,v son vectores.
    
    # c es la componente de u a lo largo de v o coeficiente de Fourier.
    # Se calcula c = <v,u>/<v,v>
    c = (v*A*u)/(v*A*v)
    
    # Se calcula w:
    # w es el vector, la proyección ortogonal de u sobre v.
    w = c*v
    
    return c, w


def GSRecursiva(A, u, v):
    # A es la matriz para el producto punto.
    # u es el vector de la base.
    # v es el vector actual.
    
    # c es la componente de u a lo largo de v o coeficiente de Fourier.
    # Se calcula c
    c = (u*A*v)/(u*A*u)
    
    nuevo_vector = c*u
    return nuevo_vector
    

def GramSchmidt(A, B):
    # A es una matriz.
    # B es una lista de vectores independientes.
    B_prima = []
    
    B_prima.append(B[0])
    
    # Contador i:
    i = 0
    
    # Se ingresa el primer vector a la nueva base:
    for v in B[1:]:
        while i < len(B_prima):
            tmp = GSRecursiva(A, B_prima[i], v)
            v = v - tmp
            i=i+1 # Se incrementa el contador
        B_prima.append(v)
        i = 0
        
    return B_prima

# Prueba
#matriz = matrix(2, 2, [1,0,0,1])
#v = vector([-3, 9])
#w = vector([1, 2])
#print(ProyOrt(matriz, v, w))

#matriz = matrix(3, 3, [1, 2, -1, 2, 6, 0, -1, 0, 5])
matriz2 = matrix(2,2,[1,0,0,1])
v1 = vector([1, 2])
v2 = vector([3, 7])
#v3 = vector([1, 0, 1])
base = [v1, v2]

#GramSchimdt(matriz, base)
print(GramSchmidt(matriz2, base))
