import math
import numpy as np

def bolzano(f, lower_limit, upper_limit):
    return f(lower_limit) * f(upper_limit) <= 0

def bissec(f, lower_limit, upper_limit, tol=0.1):
    if np.sign(f(lower_limit)) == np.sign(f(upper_limit)):
        raise Exception("The scalars a and b do not bound a root")
        
    middle_point = (lower_limit + upper_limit) / 2
    
    if np.abs(f(middle_point)) < tol:
        return middle_point
    elif np.sign(f(lower_limit)) == np.sign(f(middle_point)):
        return bissec(f, middle_point, upper_limit, tol)
    elif np.sign(f(upper_limit)) == np.sign(f(middle_point)):
        return bissec(f, lower_limit, middle_point, tol)
        
print(bissec(lambda x: x ** 2 - 2, 0, 2))