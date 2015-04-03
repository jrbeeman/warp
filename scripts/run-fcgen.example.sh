#!/usr/bin/env bash

drush use @loc.warp;

drush mi FCGenUser;
drush mi FCGenForumTerm;
drush mi FCGenForum --feedback="100 items";
drush mi FCGenForumPost --feedback="500 items";