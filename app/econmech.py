#!/usr/bin/python
"""
nwgdp.py
Net Worth and GDP data analysis tools
"""
from tabulate import tabulate
import logging, argparse, csv

from pdb import set_trace as bp
logging.basicConfig()
logger = logging.getLogger(__file__)

if __name__ == '__main__':
    cli = argparse.ArgumentParser(description='CLI for nwgdp.py')
    args = cli.parse_args()
