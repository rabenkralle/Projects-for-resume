# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class InstagramItem(scrapy.Item):
    # define the fields for your item here like:
    _id = scrapy.Field()
    followers_of = scrapy.Field()
    name = scrapy.Field()
    followed_by = scrapy.Field()
    id = scrapy.Field()
    username = scrapy.Field()
    fullname = scrapy.Field()
    profile_pic = scrapy.Field()
    status = scrapy.Field()

