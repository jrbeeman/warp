#!/bin/sh

# Change permissions on sites folder to avoid permissions when deleting the folder.
chmod -R gou+rwx ~/Sites/warp/sites/;

# Remove the existing install.
rm -Rf ~/Sites/warp;

# Rebuild.
drush make ~/Projects/drupal/warp/build-warp.make ~/Sites/warp --working-copy --no-gitinfofile;

#
# Set upstream remotes to which we can push various in-development projects.
#

# Install profile.
cd ~/Sites/warp/profiles/warp/;
git remote add upstream git@github.com:jrbeeman/warp.git;

# Entity index.
cd ~/Sites/warp/profiles/warp/modules/custom/entity_index/;
git remote add upstream jrbeeman@git.drupal.org:project/entity_index.git;

# Fast forum.
cd ~/Sites/warp/profiles/warp/modules/custom/fast_forum/;
git remote add upstream jrbeeman@git.drupal.org:sandbox/jrbeeman/2073961.git;

# User stats.
cd ~/Sites/warp/profiles/warp/modules/custom/user_stats/;
git remote add upstream jrbeeman@git.drupal.org:sandbox/jrbeeman/2314257.git;

#
# Reinstall the site.
#
drush @loc.warp si -yv warp --site-name="Warp (local)" --db-url="mysql://drupaluser:@127.0.0.1:33067/warp";

# Enable fcgen. Do this here so we can get Composer Manager to install dependencies.
drush en -y warp_fcgen;