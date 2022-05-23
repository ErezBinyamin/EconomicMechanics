#!/usr/bin/python
import argparse
import requests
from bs4 import BeautifulSoup
import itertools
from tabulate import tabulate
import logging

from pdb import set_trace as bp
logging.basicConfig()
logger = logging.getLogger(__file__)


if __name__ == '__main__':
    cli = argparse.ArgumentParser(description='CLI for standhope.py')
    args = cli.parse_args()
    result=None
    print(result)
