#!/usr/bin/env python3
"""
The module is for doing Aggregations.
"""
from collections import OrderedDict



def top_students(mongo_collection):
    """
     Gets list of students and display the data of the top_students plus their  details
    
    """
    pipeline = [{'$addFields': {'averageScore': {'$avg': '$topics.score'}}},
                {'$sort': OrderedDict([('averageScore', -1), ('name', 1)])}]
    return mongo_collection.aggregate(pipeline)
