#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 20 09:41:20 2025

@author: zhihua
"""


# import numpy library
import numpy as np


# Enter the coefficients of the poly in the array
p = [1, 0, 1]
r=np.roots(p)
print(r)
print(abs(r))


# Implementation of matplotlib function
import matplotlib.pyplot as plt
import numpy as np

feature_x = np.arange(-10, 10, 1)
feature_y = np.arange(-10, 10, 1)

# Creating 2-D grid of features
[X, Y] = np.meshgrid(feature_x, feature_y)

fig, ax = plt.subplots(1, 1)

Z = X**2 + Y**2



# plots contour lines
ax.contourf(X, Y, Z)

ax.set_title('Contour Plot')
ax.set_xlabel('x')
ax.set_ylabel('y')

#ax = plt.gca()
ax.set_aspect('equal', adjustable='box')

plt.show()

# enter the coefficients of poly 
# in the array
p = np.poly1d([1, 2, 1])

# multiplying by r(or roots) to 
# get the roots
root_of_poly = p.r
print(root_of_poly)