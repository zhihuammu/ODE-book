#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jan 15 13:00:22 2024

@author: zhihua
"""
import math
from fractions import Fraction

a0=Fraction(0, 1);      
a1=Fraction(0, 1);      
a2=Fraction(0, 1);       
a3=Fraction(-1, 1);     
a4=Fraction(1, 1);

b0=Fraction(-9, 24);  
b1=Fraction(37, 24);  
b2=Fraction(-59, 24);  
b3=Fraction(55, 24);  
b4=0;

c0= a0+a1+a2+a3+a4;
c1= (a1+2*a2+3*a3+4*a4)-(b0+b1+b2+b3+b4);
c2= (a1+2**2*a2+3**2*a3+4**2*a4)/math.factorial(2)-(b1+2*b2+3*b3+4*b4)/math.factorial(1);
c3= (a1+2**3*a2+3**3*a3+4**3*a4)/math.factorial(3)-(b1+2**2*b2+3**2*b3+4**2*b4)/math.factorial(2);
c4= (a1+2**4*a2+3**4*a3+4**4*a4)/math.factorial(4)-(b1+2**3*b2+3**3*b3+4**3*b4)/math.factorial(3);
c5= (a1+2**5*a2+3**5*a3+4**5*a4)/math.factorial(5)-(b1+2**4*b2+3**4*b3+4**4*b4)/math.factorial(4);

print([c0, c1, c2, c3, c4, c5])