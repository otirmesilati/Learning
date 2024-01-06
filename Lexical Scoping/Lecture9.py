# ------------------------------- Simple Applicative examples ------------------------------
from datetime import date
from math import atan2, sin, cos, pi, gcd

print(12e12)
print(repr(12e12))
print(min)
print(str(min))
print(repr(min))


# -------------------------------------- Long examples -------------------------------------
class SecondAccount:
    def __init__(self):
        self.balance = 0

    def __repr__(self):
        return "SecondAccount()"

    def __str__(self):
        return 'bank account with balance = ' + str(self.balance)


today = date(2011, 9, 12)


class ComplexRI(object):

    def __init__(self, r, i):
        self.real = r
        self.imaginary = i

    @property
    def magnitude(self):
        return (self.real ** 2 + self.imaginary ** 2) ** 0.5

    @property
    def angle(self):
        return atan2(self.imaginary, self.real)

    def __repr__(self):
        return f"ComplexRi({self.real},{self.imaginary})"

    def __add__(self, other):
        return add_complex(self, other)

    def __mul__(self, other):
        return mul_complex(self, other)


class ComplexMA(object):

    def __init__(self, m, a):
        self.magnitude = m
        self.angle = a

    @property
    def real(self):
        return self.magnitude * cos(self.angle)

    @property
    def imaginary(self):
        return self.angle * sin(self.angle)