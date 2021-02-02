# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html

import scrapy
from scrapy.pipelines.images import ImagesPipeline
from pymongo import MongoClient
from scrapy.utils.python import to_bytes
import hashlib
import os

class InstagramPipeline:
    def __init__(self):
        client = MongoClient('localhost', 27017)
        self.mongo_base = client.instadb

    def process_item(self, item, spider):
        collection = self.mongo_base[spider.name]
        collection.insert_one(item)
        return item

class InstagramProfilePhotoParser(ImagesPipeline):

    def get_media_requests(self, item, info):
        if item['profile_pic']:

            try:
                yield scrapy.Request(item['profile_pic'], meta={'item': item}) 
            except Exception as e:
                print(e)

    def item_completed(self, results, item, info):
        if results:
            item['profile_pic'] = [itm[1] for itm in results if itm[0]]
        return item

    def file_path(self, request, response=None, info=None):
        item = request.meta['item']
        name = item['username']
        url = request.url
        media_guid = hashlib.sha1(to_bytes(url)).hexdigest()
        media_ext = os.path.splitext(url)[1]
        return f'full/{name}/%s%s.jpg' % (media_guid, media_ext)

