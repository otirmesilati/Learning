# ------------------------------- Simple Applicative examples ------------------------------
from datetime import date

day_1 = date(2012, 10, 2)
print(day_1.day, type(day_1))


# -------------------------------------- Long examples -------------------------------------
def account_type_implementation_1(account_balance, owner):

    def withdraw(amount_to_withdraw):
        nonlocal account_balance
        if amount_to_withdraw > account_balance:
            return "not enough"
        account_balance -= amount_to_withdraw
        return account_balance

    def deposit(amount_to_deposit):
        nonlocal account_balance
        account_balance += amount_to_deposit
        return account_balance

    def get_balance():
        return account_balance

    def get_owner():
        return owner

    def account_dispatch(message):  # dispatch function now doesn't call the function, just returns it
        if message == "withdraw":
            return withdraw
        elif message == "deposit":
            return deposit
        elif message == "get_balance":
            return get_balance
        elif message == "get_owner":
            return get_owner
    return account_dispatch


def account_type_implementation_2(account_balance, owner):

    def withdraw(amount_to_withdraw):
        nonlocal account_balance
        if amount_to_withdraw > account_balance:
            return "not enough"
        account_balance -= amount_to_withdraw
        return account_balance

    def deposit(amount_to_deposit):
        nonlocal account_balance
        account_balance += amount_to_deposit
        return account_balance

    def get_balance():
        return account_balance

    def get_owner():
        return owner

    return {"withdraw": withdraw, "deposit": deposit, "get_balance": get_balance, "get_owner": get_owner}


class AccountTypeImplementation3(object):
    interest = 0.02

    def __init__(self, holder):
        self.b = 0
        self.h = holder

    def withdraw(self, amount_to_withdraw):
        if amount_to_withdraw > self.b:
            return "no money"
        self.b -= amount_to_withdraw
        return self.b

    def deposit(self, amount_to_deposit):
        self.b += amount_to_deposit
        return self.b

    def get_owner(self):
        return self.h


class CheckingAccount(AccountTypeImplementation3):
    withdraw_charge = 1
    interest = 0.01

    def withdraw(self, amount_to_withdraw):
        self.b -= CheckingAccount.withdraw_charge
        return AccountTypeImplementation3.withdraw(self, amount_to_withdraw)  # can also subtract in the parameters


class SavingsAccount(AccountTypeImplementation3):
    deposit_charge = 2

    def deposit(self, amount_to_deposit):
        return AccountTypeImplementation3.deposit(self, amount_to_deposit - SavingsAccount.deposit_charge)


class AsSeenOnTvAccount(CheckingAccount, SavingsAccount):
    def __init__(self, account_holder):
        super().__init__(account_holder)
        self.b = 1


such_a_deal = AsSeenOnTvAccount("John")
print(such_a_deal.b, such_a_deal.deposit(20), such_a_deal.withdraw(5))
print(such_a_deal.deposit_charge, such_a_deal.withdraw_charge)
print([c.__name__ for c in AsSeenOnTvAccount.mro()])


# ------------------------------------------ Tests -----------------------------------------
moran_account = account_type_implementation_1(100, "Moran")
print(moran_account("get_owner")(), moran_account("get_balance")(), moran_account("withdraw")(20))
jim_account = AccountTypeImplementation3("Jim")
print(jim_account.b, jim_account.h)
tom_account = AccountTypeImplementation3("Tom")
print(tom_account.deposit(100), tom_account.withdraw(40), tom_account.withdraw(70), tom_account.get_owner())
print(type(AccountTypeImplementation3.deposit), type(tom_account.deposit))
print(getattr(AccountTypeImplementation3, "deposit")(tom_account, 150), getattr(tom_account, "deposit")(150))
print(jim_account.interest, AccountTypeImplementation3.interest)
jim_account.interest = 0.04, print(AccountTypeImplementation3.interest, tom_account.interest, jim_account.interest)
print(AccountTypeImplementation3.interest, tom_account.interest, jim_account.interest)
jim_account.interest = 0.05, print(AccountTypeImplementation3.interest, tom_account.interest, jim_account.interest)
print(AccountTypeImplementation3.interest, tom_account.interest, jim_account.interest)
AccountTypeImplementation3.interest = 0.03
print(tom_account.interest)
print(jim_account.interest)
AccountTypeImplementation3.new_field = 4
print(AccountTypeImplementation3.new_field, tom_account.new_field)
AccountTypeImplementation3.new_static_via_lambda = lambda x: x + 2
print(AccountTypeImplementation3.new_static_via_lambda(6))
print(AccountTypeImplementation3.new_static_via_lambda, tom_account.new_static_via_lambda)
sam_c_account = CheckingAccount("S")
print(sam_c_account.deposit(10), sam_c_account.withdraw(2), sam_c_account.interest)
