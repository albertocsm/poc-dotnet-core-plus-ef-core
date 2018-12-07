#!/bin/bash

if [ "$1" = "app" ]
then
	echo "app building..."
	dotnet publish -c Release -o out
	exit
fi

if [ "$1" = "docker" ]
then
	echo "docker building..."
	docker build -t albertocsm/northwind:latest .
	exit
fi

echo "all building..."
dotnet publish -c Release -o out &&  docker build -t albertocsm/northwind:latest .
