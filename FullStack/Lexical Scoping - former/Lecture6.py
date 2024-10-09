# ------------------------------- Simple Applicative examples ------------------------------

chinese_cards = ["coin", "string", "myriad"]
cards = chinese_cards
cards.pop()
cards.remove("string")
cards.append("cup")
cards.extend(["sword", "club"])
cards[2] = "spade"
print(cards, " points to the same as: ", chinese_cards)
cards[0:2] = ["heart", "diamond"]
print(cards)
nest = list(cards)
nest[0] = cards
cards.insert(2, "joker")
print(nest)
print(nest[0].pop(2), cards)
print(cards is nest[0], cards is ["heart", "diamond", "spade", "club"], cards == ["heart", "diamond", "spade", "club"])
numerals = {"l": 1.0, "V": 5, "X": 10}
numerals['L'] = 50
numerals['l'] = 1
print(numerals["X"], "X", numerals, numerals.values(), numerals.keys(), numerals.items())
print(dict(numerals.items()), dict([(1, 2)]))
print(numerals.get('A'), numerals.get('B'), numerals.get('X'))

# -------------------------------------- Long examples -------------------------------------


def make_account_implementation_1(account_balance):
    def withdraw_implementation_1(amount_to_withdraw):
        if amount_to_withdraw > account_balance:
            return "not enough"
        return account_balance - amount_to_withdraw
    return withdraw_implementation_1
# problem with implementation 1: new local state every call
# not good solution: defining account_balance inside the withdraw function, run-time error


def make_account_implementation_2(account_balance):
    def withdraw_implementation_2(amount_to_withdraw):
        nonlocal account_balance
        if amount_to_withdraw > account_balance:
            return "not enough"
        account_balance -= amount_to_withdraw
        return account_balance
    return withdraw_implementation_2


my_account_1 = make_account_implementation_1(100)
my_account_2 = make_account_implementation_2(100)
print(my_account_1(50), my_account_1(60), my_account_1(20))
print(my_account_2(50), my_account_2(60), my_account_2(20))
wd, wd3 = make_account_implementation_1(12), make_account_implementation_1(12)
wd2, wd4 = wd, make_account_implementation_1(12)
print(wd(1), wd2(1), wd3(1), wd4(1))  # no non-local: different calls don't matter
wd, wd3 = make_account_implementation_2(12), make_account_implementation_2(12)
wd2, wd4 = wd, make_account_implementation_2(12)  # there is non-local: different calls matter
print(wd(1), wd2(1), wd3(1), wd4(1))

empty_list = None


def make_mutable_list_implementation_1():
    list_contents = empty_list

    def make_pair(first, second):
        def pair_content_dispatch(cell_index):
            if cell_index == 0:
                return first
            elif cell_index == 1:
                return second

        return pair_content_dispatch

    def make_list_implementation(value, list_remainder):
        return make_pair(value, list_remainder)

    def first_value(list_p):
        return list_p(0)

    def second_value(list_p):
        return list_p(1)

    def list_length_iterative(list_p):
        t_len = 0
        while list_p is not None:
            list_p, t_len = second_value(list_p), t_len + 1
        return t_len

    def list_selection_iterative(list_p, index):
        while index > 0:
            list_p, index = second_value(list_p), index - 1
        return first_value(list_p)

    def behaviour_dispatch(message, value=None):
        nonlocal list_contents
        if message == "len":
            return list_length_iterative(list_contents)
        elif message == "get_item":
            return list_selection_iterative(list_contents, value)
        elif message == "push_first":
            list_contents = make_list_implementation(value, list_contents)
        elif message == "pop_first":
            f = first_value(list_contents)
            list_contents = second_value(list_contents)
            return f
        elif message == "to_list":
            new_list = make_mutable_list_implementation_1()
            for cell in reversed(value):
                new_list("push_first", cell)
            return new_list
        elif message == "str":  # gives access to inner implementation!!
            return str(list_contents)
    return behaviour_dispatch


my_list = make_mutable_list_implementation_1()
my_list("push_first", 3), my_list("push_first", 2), my_list("push_first", 1)
print(my_list("len"), my_list("get_item", 0), my_list("get_item", 1), my_list("get_item", 2))
my_list2 = my_list("to_list", [5, 6, 7, 8])
print(my_list("len"), my_list2("len"))
print(type(my_list2))


# TODO: (maybe) create another functionality in a separate module with functional implemented dictionary?

def make_mutable_list_implementation_2():
    list_contents = empty_list

    def make_pair(first, second):
        def pair_content_dispatch(cell_index):
            if cell_index == 0:
                return first
            elif cell_index == 1:
                return second

        return pair_content_dispatch

    def make_list_implementation(value, list_remainder):
        return make_pair(value, list_remainder)

    def first_value(list_p):
        return list_p(0)

    def second_value(list_p):
        return list_p(1)

    def list_length_iterative(list_p):
        t_len = 0
        while list_p is not None:
            list_p, t_len = second_value(list_p), t_len + 1
        return t_len

    def list_selection_iterative(list_p, index):
        while index > 0:
            list_p, index = second_value(list_p), index - 1
        return first_value(list_p)

    def length():
        return list_length_iterative(list_contents)

    def get_item(index_for_item):
        return list_selection_iterative(list_contents, index_for_item)

    def push_first(value):
        nonlocal list_contents
        list_contents = make_list_implementation(value, list_contents)

    def pop_first():
        nonlocal list_contents
        value_to_return = first_value(list_contents)
        rest_of_list = second_value(list_contents)
        return value_to_return

    def to_list(sequence_input):
        nonlocal list_contents
        list_contents = empty_list
        for cell in reversed(sequence_input):
            push_first(cell)

    def str_list():
        return str(list_contents)

    return {"length": length, "get_item": get_item, "push_first": push_first, "pop_first": pop_first,
            "to_list": to_list, "str_list": str_list}


my_list = make_mutable_list_implementation_2()
my_list["push_first"](3), my_list["push_first"](2), my_list["push_first"](1)
print(my_list["length"](), my_list["get_item"](0), my_list["get_item"](1), my_list["get_item"](2))
my_list["to_list"]([5, 6, 7, 8])
print(my_list["length"]())
print(type(my_list))


def make_dictionary_functionally():
    dictionary_records = []  # records => "immutable structs" loosely treated as ADTs

    def get_item(key_to_search):
        for key_found, value_found in dictionary_records:
            if key_found == key_to_search:
                return value_found
        return None

    def set_item(key_to_search, value_to_set):
        for item_currently_iterated in dictionary_records:
            if item_currently_iterated[0] == key_to_search:
                item_currently_iterated[1] = value_to_set
                return True
        dictionary_records.append((key_to_search, value_to_set))
        return False

    def dictionary_dispatch(message, key_to_search=None, value=None):
        if message == "get_item":
            return get_item(key_to_search)
        elif message == "set_item":
            set_item(key_to_search, value)
        elif message == "keys":
            return tuple(key_to_add for key_to_add, _ in dictionary_records)  # sequential unpacking (*x*,y) in pairs
        elif message == "values":
            return tuple(value_to_add for _, value_to_add in dictionary_records)  # (x, *y*)
    return dictionary_dispatch


d_1 = make_dictionary_functionally()
d_1("set_item", 3, 9), d_1("set_item", 4, 16), d_1("set_item", 5, 25)
print(d_1("get_item", 3), d_1("get_item", 4))
print(d_1("keys"), d_1("values"))


def make_account(account_balance):
    balance_dictionary = {"Balance": account_balance}

    def withdraw_account(amount_to_withdraw):
        if amount_to_withdraw > balance_dictionary["Balance"]:
            return "no money"
        balance_dictionary["Balance"] -= amount_to_withdraw
        return balance_dictionary["Balance"]
    return withdraw_account


# ------------------------------------------ Tests -----------------------------------------
