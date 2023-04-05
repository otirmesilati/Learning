# ------------------------------- Simple Applicative examples ------------------------------

def is_even(n):
    if n == 1:
        return False
    return is_odd(n)


def is_odd(n):
    if n == 1:
        return True
    return is_even(n)


def fib(n):
    if n == 1:
        return 0
    if n == 2:
        return 1
    return fib(n-2) + fib(n-1)


def memoize(function_to_memoize):
    mem_cache = {}

    def mem_check(iteration_to_check):
        if iteration_to_check not in mem_cache:
            mem_cache[iteration_to_check] = function_to_memoize(iteration_to_check)
        return mem_cache[iteration_to_check]
    return mem_check


fib = memoize(fib)
print(fib(40))


# -------------------------------------- Long examples -------------------------------------
# ------------------------------------------ Tests -----------------------------------------
