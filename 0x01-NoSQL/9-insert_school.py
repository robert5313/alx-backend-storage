#!/usr/bin/env python3
"""
Module with function to insert a new document in a collection.
"""


def insert_school(mongo_collection, **kwargs):
    """
    Function which inserts a document to a collection.
    """
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
