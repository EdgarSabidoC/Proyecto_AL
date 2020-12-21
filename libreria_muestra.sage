def prAB(A,B):
    """
    Regresa el producto de las matrices A y B, en caso de que el
    producto se pueda realizar. En caso contrario, regresa un mensaje
    de error
    
    ENTRADA (INPUT):

      * Una matriz A con m renglones y  n columnas
      
      * Una matriz B con n renglones y r columnas


    SALIDA (OUTPUT):

      * El producto de las matrices AB

    EJEMPLOS:

    sage: A = matrix(QQ,2,[1,2,3,4,5,6])
    sage: B = matrix(QQ, 3,[7 .. 18])
    sage: prAB(AB)
    [ 74  80  86  92]
    [173 188 203 218]

    sage: X = matrix(1,[1,1]); Y = matrix(2,[3,1])
    sage: prAB(X,Y)
    [4]
    sage: prAB(Y,X)
    [3 3]
    [1 1]
    
    sage: X = matrix(1,[1]); Y = matrix(1,[-2])
    sage: prAB(X,Y)
    [-2]

    sage: C = matrix(2,[1,2,3,4]); D = matrix(1,[1,1])
    sage: prAB(C,D)
    No se puede realizar el producto
    
    """
    if A.ncols() <> B.nrows():
        print "No se puede realizar el producto"
        return 
    else: 
        m = A.nrows()
        n = A.ncols()
        r = B.ncols()
        Lista = []
        for i in [0..m-1]:
            for j in [0.. r-1]: 
                s = 0                
                for k in [0.. n-1]:
                    s = s + A[i,k]*B[k,j]             
                Lista.append(s)
        C = matrix(m,r, Lista)       
        return C
      

def pr_p1(X,Y):
    """
    Se regresa el producto punto de X,Y utilizando el producto
    de vectores que ya incluye SageMath
    
    ENTRADA: 
    
    * Dos vectores X,Y
    
    SALIDA: 
    
    * El producto punto de X y Y
    
    EJEMPLOS:

    sage: A = vector([1,1,1,1])
    sage: B = vector([1,2,3,4])
    sage: pr_punto(X,Y)
    10
    
    sage: X = vector([1,1])
    sage: Y = vector([1,1,1])
    No se puede realizar el producto
    """
    if len(X) == len(Y):
        output = X*Y
    else:
        output = "No se puede realizar el producto"
    
    return output
    

