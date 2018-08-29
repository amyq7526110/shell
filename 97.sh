#!/bin/bash
ifconfig | egrep "[0-9a-fA-Z]{2}(:[0-9a-fA-F]{2}){5}" 
