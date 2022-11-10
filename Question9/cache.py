from time import process_time
import collections

counter = collections.Counter()
cache = {}


def fib1(n):
    if n == 0:
        return 0
    if n <= 2:
        return 1

    return fib1(n - 1) + fib1(n - 2)


def memoize(f):
    cache = {}

    def decorated_function(*args):
        if args in cache:
            return cache[args]
        else:
            cache[args] = f(*args)
            return cache[args]

    return decorated_function


# This decorates the function to use a cache! Woohoo
@memoize
def fib(n: object) -> object:
    if n == 0:
        return 0
    if n <= 2:
        return 1
    t1_stop = process_time()

    return fib(n - 1) + fib(n - 2)







# # print counter.most_common()
# ------------------------------------------------------------------------------------


def recur_cache(func):
    cache = {}

    def wrapper(*args, **kwargs):
        key = (args, frozenset(kwargs.items()))  # dicts aren't hashable
        if key not in cache:
            cache[key] = func(*args, **kwargs)
        return cache[key]

    return wrapper


@recur_cache
def fib2(N):
    # basic solution
    if N < 0 or N == None: return None
    if N < 2:
        return N
    else:
        return fib2(N - 1) + fib2(N - 2)

fib2_start=process_time()
print(fib2(35))
fib2_end=process_time()
print(fib2_end-fib2_start)


fib_start=process_time()
print(fib(35))
fib_end=process_time()
print(fib_end-fib_start)

fib1_start=process_time()
print(fib1(35))
fib1_end=process_time()
print(fib1_end-fib1_start)
