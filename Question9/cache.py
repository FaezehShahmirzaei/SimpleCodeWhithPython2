@recur_cache
def fib(N):
    #basic solution
    if N < 0 or N == None : return None
    if N < 2: return N
    else:
        return fib(N-1) + fib(N-2)

cache = {}
def recur_cache(func):
    def wrapper(arg):
        if arg not in cache:
            cache[arg] = func(arg)
        return cache[arg]
    return wrapper

fib(3)
