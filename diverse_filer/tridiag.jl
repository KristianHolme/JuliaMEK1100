using LinearAlgebra
"""
  tridiag(n)
Lager en nxn-matrise med -2 på diagonalen og 1 på de to subdiagonalene.
"""
function tridiag(n)
    identity_matrix = I(n)
    upper_subdiagonal = Bidiagonal(zeros(n), ones(n - 1), :U)
    lower_subdiagonal = Bidiagonal(zeros(n), ones(n - 1), :L)
    A = identity_matrix + upper_subdiagonal + lower_subdiagonal
    return A
end
