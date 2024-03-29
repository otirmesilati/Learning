# ------------------------------- Simple Applicative examples ------------------------------
# -------------------------------------- Long examples -------------------------------------
# TODO: implement whole object metaphor through functions

def my_class(class_attributes, base_class=None):

    def get_value(attribute_name):
        if attribute_name in class_attributes:
            return class_attributes[attribute_name]
        elif base_class is not None:
            return base_class["get_value"](attribute_name)

    def set_value(attribute_name, attribute_value):
        class_attributes[attribute_name] = attribute_value

    def new(*args):
        return init_instance(class_dictionary, *args)

    class_dictionary = {"get_value": get_value, "set_value": set_value, "new": new}
    return class_dictionary


def init_instance(class_to_match, *args):
    instance = my_instance(class_to_match)
    init = class_to_match["get_value"]("__init__")
    if init:
        init(instance, *args)
        return instance


def my_instance(class_to_match):
    instance_attributes = {}

    def get_value(attribute_name):
        if attribute_name in instance_attributes:
            return instance_attributes[attribute_name]
        else:
            value = class_to_match["get_value"](attribute_name)
            return bind_method(instance_dictionary, value)

    def set_value(attribute_name, attribute_value):
        instance_attributes[attribute_name] = attribute_value

    instance_dictionary = {"get_value": get_value, "set_value": set_value}
    return instance_dictionary


def bind_method(instance, function):
    if callable(function):
        def method_maker(*args):
            return function(instance, *args)
        return method_maker
    else:
        return function


def my_account():
    def __init__(self, account_holder):
        self["set_value"]("holder", account_holder)
        self["set_value"]("balance", 0)