#This file checks for the elemental balance for the atoms C, H, O, N, and P
# include all my files, and setup the environment -\
include("Include.jl")
#Imports an 18x5 matrix 
path_to_atommatrix_file=joinpath(_PATH_TO_CONFIG, "atommatrix.txt")
atom_matrix=readdlm(path_to_atommatrix_file);

#Imports an 18x21 stochiometric matrix
path_to_network_file = joinpath(_PATH_TO_CONFIG,"Network.txt")
stoichiometric_matrix = readdlm(path_to_network_file);

#To check if everything balances, multiply the transpose of the atom matrix by the stochiometric matrix
element_balance = atom_matrix'*stoichiometric_matrix