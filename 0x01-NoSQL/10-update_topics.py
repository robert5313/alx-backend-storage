#!/usr/bin/env python3
"""
Module operations for updating documents.
"""


def update_topics(mongo_collection, name, topics):
    """
    Updates topics field with given topics for
    document in which name field to match given name
    """

    mongo_collection.update_many({'name': name}, {'$set': {'topics': topics}})
