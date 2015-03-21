<?php


/**
 * Implements hook_migrate_api.
 *
 * @see migrate_examples_migrate_api for more information.
 */
function warp_fcgen_migrate_api() {
  $api = array(
    'api' => 2,
    'groups' => array(
      'warp_fcgen' => array(
        'title' => t('Warp FCGen Example'),
      ),
    ),
    'migrations' => array(
      'WarpUser' => array(
        'class_name' => 'FCGenUserMigration',
        'group_name' => 'warp_fcgen',
        'number_to_generate' => 100,
      ),
      'WarpForumTerm' => array(
        'user_migration' => 'WarpUser',
        'bundle'         => 'forums',
        'class_name'     => 'WarpForumTermMigration',
        'group_name'     => 'warp_fcgen',
        'hierarchical'   => TRUE,
        'number_to_generate' => 25,
      ),
      'WarpForum' => array(
        'user_migration' => 'WarpUser',
        'bundle'         => 'forum',
        'class_name'     => 'WarpForumMigration',
        'group_name'     => 'warp_fcgen',
        'term_migration' => 'WarpForumTerm',
        'number_to_generate' => 1000,
      ),
      'WarpForumPost' => array(
        'user_migration' => 'WarpUser',
        'bundle'         => 'comment_node_forum',
        'class_name'     => 'WarpForumCommentMigration',
        'group_name'     => 'warp_fcgen',
        'source_migration' => 'WarpForum',
        'number_to_generate' => 5000,
      ),
    ),
  );
  return $api;
}