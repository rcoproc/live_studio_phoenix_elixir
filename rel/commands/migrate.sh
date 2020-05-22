#!/bin/sh

release_ctl eval --mfa "LiveViewStudio.ReleaseTasks.migrate/1" --argv -- "$@"
