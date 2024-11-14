# -*- coding: utf-8 -*-
"""
Created on Tue Nov 12 14:45:54 2024

@author: 55061111
"""

import math
import numpy as np

step=0.5

for i in range(-14,3):
    H=i*step;
    
    A=1-5.0/12*H;
    B=-(1+8.0/12*H);
    C=1.0/12*H;
    
    r=np.roots([A, B, C])
    print(H, np.absolute(r) )
    