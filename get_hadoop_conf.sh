#!/bin/bash
dst_path=${1:-hadoop_conf}

docker cp namenode:etc/hadoop/ $dst_path
