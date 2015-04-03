#!/usr/bin/env bash

drush use @loc.warp;

drush mi WarpUser;
drush mi WarpForumTerm;
drush mi WarpForum --feedback="100 items";
drush mi WarpForumPost --feedback="500 items";