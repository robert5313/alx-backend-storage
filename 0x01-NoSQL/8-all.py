#!/usr/bin/env python3
"""
Module to list all documents in a collection.
"""


def list_all(mongo_collection):
    '''
    function to list all documents in a collection.
    '''
    return [doc for doc in mongo_collection.find()]
