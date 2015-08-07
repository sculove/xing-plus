# -*- coding: utf-8 -*-
import configparser

class Config:
	_cp = None

	def load():
		Config._cp = configparser.ConfigParser()
		Config._cp.read("config.ini")
		for category in Config._cp.sections():
			temp = {}
			for op in Config._cp.options(category):
				temp[op] = Config._cp[category][op]
				setattr(Config, category, temp)
Config.load()
