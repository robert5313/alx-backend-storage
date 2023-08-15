#!/usr/bin/env python3
"""
PyMongo operations: data to match list
"""


def schools_by_topic(mongo_collection, topic):
    """
    Returns a list of schools that have a specific topic.
    """
    return mongo_collection.find({'topics': topic})
